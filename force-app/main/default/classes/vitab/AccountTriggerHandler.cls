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
    public static void updateVIPforContacts(List<Account> accTriggerNew, List<account> accTriggerOld,
    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
//create set account ids were vip is changed
        //10 account -> 3 vip is changed.
set<id> accIds = new set<id>();
for (account eachAcc : accTriggerNew) {
    if (eachAcc.vip__c != accTriggerOldMap.get(eachAcc.id).vip__c) {
        accIds.add(eachAcc.Id);
    }
}

//get contacts for all those accounts
        //get contacts for all those 3 account. 10 contacts.
List<contact> allContacts = [select id, vip__c, accountId from contact where account.id in :accIds];

if(!allContacts.isEmpty()){
    //for loop on contacts
        //set vip for each contact with Account's vip field.
    for (contact eachCon : allContacts) {
        //get account's vip field
        id contactAccId = eachCon.AccountId;
        Account newAcc = accTriggerNewMap.get(contactAccId);
        boolean accVIP = newAcc.vip__c;

        boolean accVIP2 = accTriggerNewMap.get(eachCon.AccountId).vip__c;
        eachCon.vip__c = accVIP;
    }
    
    update allContacts;
}
}
@future 
public static void UpdateNof(set<id> accids) {
    List<Account> listAcc = [select id, number_of_contact__c,(select id from contacts) from account where id in :accids];
    List<Account> updateAcc = new list<account>();
    for (account eeach : listAcc ) {
        eeach.number_of_contact__c = eeach.contacts .size();
        updateAcc.add(eeach);      
    }
if (!updateAcc.isEmpty()) {
    update updateAcc ;    
}
    
}
// public static void  duplicateName(List<Account> triggerNewList,List<Account> triggerOldList, Map<id, Account> triggerOldMap, Map<id, Account> triggerNewMap ) {
//     for (Account acc : triggerNewList) {
//         List<Account> accountList = [SELECT id, name FROM Account WHERE name = : acc.name ];
//         if (!accountList.isEmpty()) {
//             acc.name.addError('Ayni account adiyla hesap olusturamazsiniz. ');
//         }
//     }
//      }
//      public static void  createOppAndCon(List<Account> triggerNewList,List<Account> triggerOldList,
//      Map<id, Account> triggerOldMap, Map<id, Account> triggerNewMap ) {
//         List<Opportunity> oppList = new  List<Opportunity>();
//         List<Contact> conList = new List<Contact>();
//         for (Account acc : triggerNewList) {
//         Opportunity opp = new Opportunity();
//         opp.name = acc.Name;
//         date todaydate = date.today();
//         opp.CloseDate = todaydate;
//         opp.StageName = 'Closed Won';
//         opp.AccountId = acc.id;
//         oppList.add(opp);
//         Contact con = new Contact();
//         con.LastName = acc.name;
//         con.AccountId = acc.id;
//         conList.add(con);
//             }
//         insert oppList;
//         insert conList;
//     }
    
}


