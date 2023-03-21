FILE *fp;
fp = fopen("ascet.log","a");
fprintf(fp,"%f\t%f\t\n",x,y);
fclose(fp);
