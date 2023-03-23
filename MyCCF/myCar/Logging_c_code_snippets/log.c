FILE *fp;
fp = fopen("ascet.log","a");
fprintf(fp,"%f\t%f\n",x,y);
fclose(fp);
