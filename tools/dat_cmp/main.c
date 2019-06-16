#include <stdio.h>
#include <math.h>

int main()
{
	FILE *fp_ref;
	FILE *fp_get;
	FILE *error_log;
	char flag = 0;
	int err_count = 0;

	float acc_err;
	
	fp_ref = fopen("conv10_output_sdk.dat","r");
	fp_get = fopen("conv10_output_fp_sdk.dat","r");
	error_log = fopen("error.log","w");

	for(int cmp_idx=0;cmp_idx<21632;cmp_idx++)
	{
		float ref_data;
		fscanf(fp_ref,"%f\n",&ref_data);
		
		float get_data;
		fscanf(fp_get,"%f\n",&get_data);

		if(fabs(get_data-ref_data)>1e-1)
		{
			flag = 1;
			fprintf(error_log,"%d\t%f\t%f\n",cmp_idx,ref_data,get_data);
			err_count++;
		}
		acc_err += fabs(get_data-ref_data);
	}

	fclose(fp_ref);
	fclose(fp_get);
	fclose(error_log);

   	if (flag)
	{
	    fprintf(stderr,"Error: %d data points are out of absolute limit!%f\n\r",err_count,acc_err);
            return 1;
	}
    	else
	{
	    fprintf(stderr,"*****PASS*****\n\r");
            return 0;
	}
}
