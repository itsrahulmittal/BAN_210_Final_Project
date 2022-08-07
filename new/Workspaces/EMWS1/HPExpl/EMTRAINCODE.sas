%macro hpdm_explore_main;

   %if %upcase(&EM_ACTION) = CREATE %then %do;

       filename temp catalog 'sashelp.hpdm.Explore_create.source';
       %include temp;
       filename temp;
       %hpdm_explore_create;
   %end;
   %else
   %if %upcase(&EM_ACTION) = TRAIN %then %do;

       filename temp catalog 'sashelp.hpdm.Explore_train.source';
       %include temp;
       filename temp;
       %hpdm_explore_train;
   %end;

%mend hpdm_explore_main;
%hpdm_explore_main;
