trigger SalesforceProjectCTrigger on Salesforce_Project__c (before insert, before update, after insert , after update ) {
    // if (trigger.isBefore&&trigger.isInsert) {
    //     for (Salesforce_Project__c eachSf : trigger.new) {
    //         eachsf.project_name__c = 'New Trigger Project'  ;
    //         System.debug('project name is ' + eachsf.project_name__c) ;         
    //     }        
    // }
    // if (trigger.isUpdate&&trigger.isAfter) {
    //     Map<id,Salesforce_Project__c> mapSfNew = trigger.newMap ;

    //     Map<id,Salesforce_Project__c> mapSfOld = trigger.oldMap ;
    //     Set<id> sfIds = mapSfNew.keyset();
    //     for (id eachSf : sfİds) {
    //         System.debug('old project name = '+ mapSfOld.get(eachSf).project_name__c+ ' new project name is = '+ mapsfNew.get(eachsf).project_name__c);            
    //     }
        
    // }
    // if (trigger.isInsert&&trigger.isAfter) {
    //     SalesforceProjectTriggerHandler.createDefoultTicket(trigger.new);
    // }
//    if (trigger.isAfter&&trigger.isUpdate) {
//     SalesforceProjectTriggerHandler.completeSPvalidation(trigger.new, trigger.old , trigger.newMap, Trigger.oldMap);
    
//    }
if (Trigger.isAfter && Trigger.isInsert) {
    //call trigger handler to CREATE salesforce ticket.
    SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);

    //call future method,
    system.debug('calling future method NOW.');
    Map<id,salesforce_project__c> spNewMap = trigger.newMap ;
    SalesforceProjectTriggerHandler.spUpdateDescription(spnewmap.keyset());
    system.debug('called future method. DONE.');

}
if (Trigger.isBefore && trigger.isUpdate) {
   //call validation method here.
//    SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}
if (trigger.isAfter&&trigger.isUpdate) {
    SalesforceProjectTriggerHandler.spStatusCompleted(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
}

}