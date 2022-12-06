public  class DmlDemo {
     public static void dmlInsertDemo_stndObj() {
        // create a new account record using apex code (Dml)
        account acc = new account();
        acc.Name = 'Soft Innovas';
        System.debug('NOT Inserted '+ acc);
        insert acc ;
        System.debug ('INSERTED '+ acc);

     }  
     public static void dmlInsertDemo_cstmObj() {
        salesforce_project__c spNew = new salesforce_project__c();
        spNew.project_name__c = 'Teach DML to batch 11';
        spNew.description__c= 'Everybody is doing great. Keep it up';
        insert spNew ;         
     }
     public static void dmlUpdateDemo_1() {
        account acc = new account();
        acc.Name = 'Soft Innovas';
        insert acc ; 

        acc.Name = 'SalesForce Inc.';
        update acc ; 
        
     }
      public static void dmlUpdateDemo_3() {
         account acc = [select name from account where name = 'Soft Innovas' limit 1 ];
         acc.Name = 'SoftInnovas Inc.';
         update acc ; 
         System.debug('updated acc'+ acc);
         
      }
      public static void dmlInsertDemo_4() {
         account acc = [select id,name from account where name = 'SoftInnovas Inc.' limit 1 ];

         contact cnt = new contact();
         cnt.lastname = 'Biden';
         cnt.Accountid = acc.id ; 
         insert cnt ;
         system.debug('contact record ' + cnt );
         
      }
      public static void dmlInsertDemo_5() {
         salesforce_project__c sp = [select id, name from salesforce_project__c order by createdDate desc limit 1 ];
          
         salesforce_ticket__c stNew = new salesforce_ticket__c();
         stnew.Subject__c = 'Learn Apex dmls';
         stNew.Priority__c = 'High';
         stNew.Status__c = 'New ';
         stNew.Requested_by_date__c = date.newInstance(2022,12,5);
         stNew.Salesforce_project__c = sp.id ;
         insert stnew ; 
         system.debug('st is '+ stNew );  
      }
       public static void dmlInsertMultiple_right() {
         list<account> listAcc = new list<account>();

         account acc1 = new account();
         acc1.name = 'bulk acc 1 ';
         listAcc.add(acc1);

         account acc2 = new account();
         acc2.name = 'bulk acc 2 ';
         listAcc.add(acc2);

         account acc3 = new account();
         acc3.name = 'bulk acc 3 ';
         listAcc.add(acc3);

          insert listAcc ;

         
       }
       public static void dmlInsertMultiple_right2() {
         list<account> listAcc = new list<account>();
         for (Integer i = 0; i < 155; i++) {
            account acc = new account();
            acc.name = 'Softinnovas v'+i;
            acc.active__c='yes';
            listAcc.add(acc);            
         }
         if (!listAcc.isEmpty()){
            insert listAcc;
         }
         
       }
       public static void dmlUpdateMultiple_right() {
         list<account> listAcc = [select id, name, active__c from account] ;
         list<account> updateAccount = new list<account>();
         for(account acc : listAcc){
            if(acc.active__c == 'Yes'){
               acc.Name=acc.name+ ' via B.0';
               updateAccount.add(acc);
            }
         }
         if(!updateAccount.isEmpty()){
            update updateAccount ; 
         }

         
       }

}