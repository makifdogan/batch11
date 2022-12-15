trigger SalesforceProjectCTrigger on Salesforce_Project__c (before insert, before update, after insert , after update ) {
    if (trigger.isBefore&&trigger.isInsert) {
        for (Salesforce_Project__c eachSf : trigger.new) {
            eachsf.project_name__c = 'New Trigger Project'  ;
            System.debug('project name is ' + eachsf.project_name__c) ;         
        }        
    }
    if (trigger.isUpdate&&trigger.isAfter) {
        Map<id,Salesforce_Project__c> mapSfNew = trigger.newMap ;
        Map<id,Salesforce_Project__c> mapSfOld = trigger.oldMap ;
        Set<id> sfIds = mapSfNew.keyset();
        for (id eachSf : sfİds) {
            System.debug('old project name = '+ mapSfOld.get(eachSf).project_name__c+ ' new project name is = '+ mapsfNew.get(eachsf).project_name__c);            
        }
        
    }

}