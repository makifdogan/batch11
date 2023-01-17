public class SalesforceProjectTriggerHandler {
    // public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
    //     List<Salesforce_Ticket__c>  listST = new List<Salesforce_Ticket__c>();

    //     for (salesforce_project__c eachSP : spTriggerNew) {
    //         Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
    //         newST.Subject__c = 'Default ticket';
    //         newST.Salesforce_Project__c = eachSP.Id;
    //         listST.add(newST);
    //     }
    //     if (!listST.isEmpty()) {
    //         insert listST;
    //     }
    // }

    // public static void completeSPvalidation(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, 
    // Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap) {
        
    //     set<id> spCompletedIds = new set<id>();
    //     for (salesforce_project__c eachSP : spTriggerNew) {
    //         if (eachSP.Status__c == 'Completed' && eachSP.Status__c != SpTriggerOldMap.get(eachSP.id).Status__c) {
    //             spCompletedIds.add(eachSP.Id);
    //         }
    //     }

    //     //get all tickets which are not compelted.
    //     List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
    //                                         where Salesforce_Project__c in :spCompletedIds
    //                                         and status__c != 'Completed'];
    //     for (salesforce_ticket__c eachST : listST) {
    //         Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.Salesforce_Project__c);
    //         spNew.addError(
    //             'Cannot complete project because all tickets are not completed. Go away.'
    //         );
    //     }
    // }
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        try{
            List<Salesforce_Ticket__c>  listST = new List<Salesforce_Ticket__c>();
            defaultTicketInfo__c defaultValues = defaultTicketInfo__c.getOrgDefaults();

        for (salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
            newST.Subject__c = defaultValues.Subject__c;
            newST.Salesforce_Project__c = eachSP.Id;
            newST.description__C= defaultValues.description__C ;
            newST.priority__C = 'Medium';
            
            listST.add(newST);
        }
        if (!listST.isEmpty()) {
            List<Database.SaveResult> results =  Database.insert(listST,false);
            for (Database.SaveResult eachResult  : results) {
                if (eachResult.isSuccess()) {
                    System.debug('insert succesfully , record id id '+ eachResult.id);
                    
                } else {
                    System.debug('errored out . errors are ' + eachResult.getErrors());
                }
                
            }
        }
        }catch(Exception ex){
            for (salesforce_project__c  sp : spTriggerNew) {
                sp.addError('Error is inserting default tciket. please contact ypur deat administirator.');
            }
        }
    
    }

    public static void completeSPvalidation(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, 
    Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap) {
        
        set<id> spCompletedIds = new set<id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            if (eachSP.Status__c == 'Completed' && eachSP.Status__c != SpTriggerOldMap.get(eachSP.id).Status__c) {
                spCompletedIds.add(eachSP.Id);
            }
        }

        //get all tickets which are not compelted.
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
                                            where Salesforce_Project__c in :spCompletedIds
                                            and status__c != 'Completed'];
        for (salesforce_ticket__c eachST : listST) {
            Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            spNew.addError(
                'Cannot complete project because all tickets are not completed. Go away.'
            );
        }
      
    }

    @future
    public static void spUpdateDescription(set<id> setSPid) {
        system.debug('inside future method. Huhuuu');
        List<salesforce_project__c> allsp = [select id, description__C from salesforce_project__c where id in : setSPid];
        for (salesforce_project__C eachsp : allsp) {
            eachsp.description__C += ' .Updated from future ';
            
        }
        update allsp ;
    }
    public static void spStatusCompleted(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, 
    Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap) {
        set<id> spCompletedIds = new set<id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            if (eachSP.Status__c == 'Completed' && eachSP.Status__c != SpTriggerOldMap.get(eachSP.id).Status__c) {
                spCompletedIds.add(eachSP.Id);
            }
        }
        if (!spCompletedIds.isEmpty()) {
            updatedTicketstatus(spCompletedIds);

            
        }
        
    }
    @future
    public static void updatedTicketstatus(set<id> spCompletedIds) {
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
                                            where Salesforce_Project__c in :spCompletedIds
                                            and status__c != 'Completed'];
        for (salesforce_ticket__c eachST : listST) {
           
            eachST.status__c = 'Completed';
        }
        update listST ; 
    }
}