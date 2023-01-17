@istest
public with sharing class SalesforceProjectTriggerHandlerTest {
 @istest   
private static void testSpUpdateDescription() {
    salesforce_project__C sp1 = new salesforce_project__C() ; 
    sp1.project_name__c = 'SP test 1 ';
    salesforce_project__C sp2 = new salesforce_project__c(); 
    sp2.project_name__c = 'SP test 2 ';
     List<salesforce_project__C> listSP = new List<salesforce_project__C>{sp1,sp2};
     insert listSP ;

     set<id> setSPid = new set<id>{sp1.id, sp2.id};

     test.startTest();
     SalesforceProjectTriggerHandler.spUpdateDescription(setSPid);
     test.stopTest();

     list<salesforce_project__C> allSp = [select id , description__c from salesforce_project__C];
    System.assert(allSp[0].description__C.contains('future'));
    
}

}
