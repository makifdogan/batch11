public with sharing class AccountTriggerHandler {
    public static void updateDescription(list<account> acctriggernew, list<account> acctriggerold, map<id,account> acctriggerNewmap, Map<Id,Account> acctriggeroldMap) {
        for (account eachAcc : acctriggernew) {
            Boolean updateDesc = false ; 
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                //just update field
                updatedesc = true ; 
            }
            //if account is updated.
                //check if active field is changed from not yes to yes
                //then update description
            if (Trigger.isUpdate) {
                //get old account using OldMAP
                Account oldAccount = acctriggeroldMap.get(eachAcc.Id);
                //get new account using newMap
                Account newAccount = acctriggerNewmap.get(eachAcc.Id);
                //oldAccount.Active__c != newAccount.Active__c
                if (eachAcc.Active__c == 'Yes' &&
                   oldAccount.Active__c != newAccount.Active__c ) {
                    updateDesc = true ; 
                }
            }
            if (updateDesc) {
                eachacc.description = 'account is now active. enjoy buddy !';
            }

        }
        
    }
}
