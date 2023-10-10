data amit;
input id Name $3-19 @20 Salary;
cards;
1 Amit Kumar Singh 25
2 Sumit Rakheja    26
1 Amit Kumar Singh 26
3 Makheeja Brother 22
;
run;

proc rank data=amit ties=dense out=dense_rank1;
var id Salary;
ranks dense_rank_Name_age
run;

proc rank data=amit ties=dense out=dense_rank2;
var id;
ranks dense_rank_id;
run;

proc print data=dense_rank1;
Title j=c "Dense Rank with Var : id,Salary";
footnote j=c "Presented by : Amit Kumar Singh, #Singhamit8467@gmail.com";
run;

proc print data=dense_rank2;
Title j=c "Dense Rank with Var : id";
footnote j=c "Presented by : Amit Kumar Singh, #Singhamit8467@gmail.com";
run;
