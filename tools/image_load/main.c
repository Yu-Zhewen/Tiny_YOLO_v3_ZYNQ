#include <stdio.h>
#include <math.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"
#include <stdio.h>

typedef struct {
    int w;
    int h;
    int c;
    float *data;
} image;

image make_empty_image(int w, int h, int c)
{
    image out;
    out.data = 0;
    out.h = h;
    out.w = w;
    out.c = c;
    return out;
}

image make_image(int w, int h, int c)
{
    image out = make_empty_image(w,h,c);
    out.data = calloc(h*w*c, sizeof(float));
    return out;
}

image load_image_stb(char *filename, int channels)
{
    int w, h, c;
    //FILE *fp;
    //fp = fopen("input_image.h","w");

    //fprintf(fp,"#ifndef INPUT_IMAGE_H\n");
   // fprintf(fp,"#define INPUT_IMAGE_H\n\n");


    

    unsigned char *data = stbi_load(filename, &w, &h, &c, channels);
    if (!data) {
        fprintf(stderr, "Cannot load image \"%s\"\nSTB Reason: %s\n", filename, stbi_failure_reason());
        exit(0);
    }
    if(channels) c = channels;
    int i,j,k;
    image im = make_image(w, h, c);
    //fprintf(fp,"int InputImage_w=%d;\n",w);
    //fprintf(fp,"int InputImage_h=%d;\n",h);  
    //fprintf(fp,"int InputImage_c=%d;\n",c);     
    //fprintf(fp,"float InputImage[]={");
    for(k = 0; k < c; ++k){
        for(j = 0; j < h; ++j){
            for(i = 0; i < w; ++i){
                int dst_index = i + w*j + w*h*k;
                int src_index = k + c*i + c*w*j;
                im.data[dst_index] = (float)data[src_index]/255.;
		//if(dst_index==w-1 + w*(h-1) + w*h*(c-1))
                //    fprintf(fp,"%f};\n",im.data[dst_index]);
                //else
		//    fprintf(fp,"%f,\n", im.data[dst_index]);
			
            }
        }
    }
    free(data);
    //fprintf(fp,"#endif\n");
    //fclose(fp);
    return im;
}


static float get_pixel(image m, int x, int y, int c)
{
    //assert(x < m.w && y < m.h && c < m.c);
    return m.data[c*m.h*m.w + y*m.w + x];
}
static void set_pixel(image m, int x, int y, int c, float val)
{
    if (x < 0 || y < 0 || c < 0 || x >= m.w || y >= m.h || c >= m.c) return;
    //assert(x < m.w && y < m.h && c < m.c);
    m.data[c*m.h*m.w + y*m.w + x] = val;
}
static void add_pixel(image m, int x, int y, int c, float val)
{
    //assert(x < m.w && y < m.h && c < m.c);
    m.data[c*m.h*m.w + y*m.w + x] += val;
}

void fill_image(image m, float s)
{
    int i;
    for(i = 0; i < m.h*m.w*m.c; ++i) m.data[i] = s;
}

void free_image(image m)
{
    if(m.data){
        free(m.data);
    }
}

image resize_image(image im, int w, int h)
{
    image resized = make_image(w, h, im.c);   
    image part = make_image(w, im.h, im.c);
    int r, c, k;
    float w_scale = (float)(im.w - 1) / (w - 1);
    float h_scale = (float)(im.h - 1) / (h - 1);
    for(k = 0; k < im.c; ++k){
        for(r = 0; r < im.h; ++r){
            for(c = 0; c < w; ++c){
                float val = 0;
                if(c == w-1 || im.w == 1){
                    val = get_pixel(im, im.w-1, r, k);
                } else {
                    float sx = c*w_scale;
                    int ix = (int) sx;
                    float dx = sx - ix;
                    val = (1 - dx) * get_pixel(im, ix, r, k) + dx * get_pixel(im, ix+1, r, k);
                }
                set_pixel(part, c, r, k, val);
            }
        }
    }
    for(k = 0; k < im.c; ++k){
        for(r = 0; r < h; ++r){
            float sy = r*h_scale;
            int iy = (int) sy;
            float dy = sy - iy;
            for(c = 0; c < w; ++c){
                float val = (1-dy) * get_pixel(part, c, iy, k);
                set_pixel(resized, c, r, k, val);
            }
            if(r == h-1 || im.h == 1) continue;
            for(c = 0; c < w; ++c){
                float val = dy * get_pixel(part, c, iy+1, k);
                add_pixel(resized, c, r, k, val);
            }
        }
    }

    free_image(part);
    return resized;
}

void embed_image(image source, image dest, int dx, int dy)
{
    int x,y,k;
    for(k = 0; k < source.c; ++k){
        for(y = 0; y < source.h; ++y){
            for(x = 0; x < source.w; ++x){
                float val = get_pixel(source, x,y,k);
                set_pixel(dest, dx+x, dy+y, k, val);
            }
        }
    }
}

image letterbox_image(image im, int w, int h)
{
    int new_w = im.w;
    int new_h = im.h;
    if (((float)w/im.w) < ((float)h/im.h)) {
        new_w = w;
        new_h = (im.h * w)/im.w;
    } else {
        new_h = h;
        new_w = (im.w * h)/im.h;
    }
    image resized = resize_image(im, new_w, new_h);
    image boxed = make_image(w, h, im.c);
    fill_image(boxed, .5);
    //int i;
    //for(i = 0; i < boxed.w*boxed.h*boxed.c; ++i) boxed.data[i] = 0;
    embed_image(resized, boxed, (w-new_w)/2, (h-new_h)/2); 
    free_image(resized);
    return boxed;
}


int main(int argc, char *argv[])
{
	if(argc >= 2)
	{
		image im = load_image_stb(argv[1],3);
		image sized = letterbox_image(im, 416, 416);

    		FILE *fp;
    		fp = fopen("input_image.h","w");
    		fprintf(fp,"#ifndef INPUT_IMAGE_H\n");
   		fprintf(fp,"#define INPUT_IMAGE_H\n\n");
    		fprintf(fp,"int im_w=%d;\n",im.w);
    		fprintf(fp,"int im_h=%d;\n",im.h);
		fprintf(fp,"int sized_w=%d;\n",sized.w);
    		fprintf(fp,"int sized_h=%d;\n",sized.h);
    		fprintf(fp,"float SizedData[]={");
		int sized_w = sized.w;
		int sized_h = sized.h;
		for(int k = 0; k < 3; ++k){
			for(int j = 0; j < sized_h; ++j){
			    	for(int i = 0; i < sized_w; ++i){
					int dst_index = i + sized_w*j + sized_w*sized_h*k;
					if(dst_index==sized_w-1 + sized_w*(sized_h-1) + sized_w*sized_h*(3-1))
                				fprintf(fp,"%f};\n",sized.data[dst_index]);
                			else
						fprintf(fp,"%f,\n", sized.data[dst_index]);
 
				}
			}
		}
		fprintf(fp,"#endif\n");
    		fclose(fp);
	}
	else
	{
		fprintf(stderr,"Error! No input file\n");
	}
	return 0;
}
