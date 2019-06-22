#include <stdio.h>
#include <string.h>
#include "yolo_fp.h"

int main(int argc, char *argv[])
{
	if(argc < 2)
	{
		printf("Error: no input file\n");
		return 1;
	}
	
	FILE *fp_fp;
	
	char input_buff[1024]; 
	strcpy(input_buff,argv[1]);

	fp_fp = fopen(input_buff,"r");
	
	int i=0;
	while(input_buff[i]!='\0')
	{
		if(input_buff[i]=='.')
			break;
		i++;
	}

	
	input_buff[i]='_';

	input_buff[i+1]='f';
	input_buff[i+2]='p';	
	input_buff[i+3]='.';
	input_buff[i+4]='d';
	input_buff[i+5]='a';
	input_buff[i+6]='t';
	input_buff[i+7]='\0';

	FILE *fp_short;
	fp_short = fopen(input_buff,"w");

	float data;

	//fprintf(fp_short,"short %s[]={",input_buff);
	while(fscanf(fp_fp,"%f",&data)!=EOF)
	{
		fp_data_type data_fp = data;
		short data_short = data_fp.range();
		fprintf(fp_short,"%hd\n",data_short);
	}
	//fseek(fp_short,-2,SEEK_CUR);
	//fprintf(fp_short,"};\n");	

	fclose(fp_fp);
	fclose(fp_short);

	return 0;


}
