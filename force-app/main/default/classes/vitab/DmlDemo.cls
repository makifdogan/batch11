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
}
