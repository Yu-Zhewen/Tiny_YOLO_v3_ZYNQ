#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
	if(argc < 2)
	{
		printf("Error: no input file\n");
		return 1;
	}
	
	FILE *fp_dat;
	
	char input_buff[1024]; 
	strcpy(input_buff,argv[1]);

	fp_dat = fopen(input_buff,"r");
	
	int i=0;
	while(input_buff[i]!='\0')
	{
		if(input_buff[i]=='.')
			break;
		i++;
	}

	if(input_buff[i]=='\0')
	
		input_buff[i]='.';

	input_buff[i+1]='h';
	input_buff[i+2]='\0';	

	FILE *fp_h;
	fp_h = fopen(input_buff,"w");

	short data;
	input_buff[i] = '\0';

	fprintf(fp_h,"short %s[]={",input_buff);
	while(fscanf(fp_dat,"%hd",&data)!=EOF)
	{
		fprintf(fp_h,"%hd,\n",data);
	}
	fseek(fp_h,-2,SEEK_CUR);
	fprintf(fp_h,"};\n");	

	fclose(fp_dat);
	fclose(fp_h);


}
