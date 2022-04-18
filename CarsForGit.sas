data cars;
	set sashelp.cars;
run;

title "SAShelp.cars origin frequency";
proc freq data=cars; 
	tables origin;
run;

title "SAShelp.cars mpg_highway, by origin";
proc sgplot data=cars noborder;
	vbox MPG_Highway / category=origin nooutliers legendlabel='distribution' fillattrs=(color=bigb);
	scatter x=origin y=MPG_highway / jitter transparency=0.6 legendlabel='cars';
	xaxis label=' ';
	keylegend / position =  topright noborder;
	xaxistable MPG_highway / stat=mean label='mean'; 
	format MPG_highway 8.1;
run;

