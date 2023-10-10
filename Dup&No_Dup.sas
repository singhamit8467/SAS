data amit;
input id name $ amount;
cards;
1 Amit 22
1 Amit 22
1 Amit 23
2 Amit 23
;
run;

proc sort data=amit nodup out=nodup;
by id;
run;

proc sort data=amit nodupkey out=nodupkey;
by id;
run;