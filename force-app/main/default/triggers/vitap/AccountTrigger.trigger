trigger AccountTrigger on Account (before insert, before UPDATE,after insert, after UPDATE) {
    if (trigger.isAfter&& trigger.isUpdate) {
        System.debug('after update trigger '); 
        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
         map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
         set<id> accountIds = accTriggerNewMap.keySet();
         integer countwebsite = 0 ;
         for (id eachid : accountids) {
            account newacc = accTriggerNewMap.get(eachid);
            String newWebsite = newacc.website ; 
            System.debug('** newwebsite => '+ newwebsite);
            account oldacc = accTriggerOldMap.get(eachid);
            String oldWebsite = oldAcc.website ;   
            System.debug('** oldwebsite => '+ oldwebsite);   
            if (newWebsite != oldWebsite ){
                System.debug('account is '+ newAcc.name + ' is website changed to  '+ newWebsite);
                countwebsite ++ ;
             }       
         }
        
         System.debug('website updated for ** of accounts =>  '+ countwebsite);
    }

    // List<account> accTriggerOld = trigger.old; //list of old records
    // List<account> accTriggerNew = trigger.new; //list of new records
    // map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    // map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    // if (trigger.isAfter&& trigger.isUpdate) {
    //     set<id> accountIds = accTriggerNewMap.keySet();
    //     for (id Eachid : accountids) {
    //         account newacc = accTriggerNewMap.get(eachid);

    //         account oldacc = accTriggerOldMap.get(eachid);

    //         System.debug('New acc name is = '+newacc.name);
    //         System.debug('old acc name is ? ' + oldacc.name );

            
    //     }
        
    // }


    // List<account> accTriggerOld = trigger.old; //list of old records
    // List<account> accTriggerNew = trigger.new; //list of new records
    // map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    // map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    // //what elements we have in these maps.
    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('before insert old => ' + accTriggerOld);
    //     system.debug('before insert new => ' + accTriggernew);
    //     system.debug('before insert old map => ' + accTriggerOldMap);
    //     system.debug('before insert new map => ' + accTriggernewMap);
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('after insert old => ' + accTriggerOld);
    //     system.debug('after insert new => ' + accTriggernew);
    //     system.debug('after insert old map => ' + accTriggerOldMap);
    //     system.debug('after insert new map => ' + accTriggernewMap);
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('before update old => ' + accTriggerOld);
    //     system.debug('before update new => ' + accTriggernew);
    //     system.debug('before Update old map => ' + accTriggerOldMap);
    //     system.debug('before Update new map => ' + accTriggernewMap);
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     system.debug('after update old => ' + accTriggerOld);
    //     system.debug('after update new => ' + accTriggernew);
    //     system.debug('after Update old map => ' + accTriggerOldMap);
    //     system.debug('after Update new map => ' + accTriggernewMap);
    // }
    
 /*
    if (trigger.isAfter) {
        List<account> accTriggerNew = trigger.New;//New (updated) values of records

        set<id> setIds = new set<id>();//add all IDS of accounts which are inserted/updated
        for (account newAcc : accTriggerNew) {
            Id accId = newAcc.id;
            setids.add(accId);//adding ID to newly created set.
        }
        system.debug(setids);
    }
    */

    //  if (trigger.isBefore&&trigger.isUpdate) {
//     list<account> accTriggerOld = trigger.old ; 
//     for (account oldAcc : accTriggerOld) {
//         System.debug('old acc name = '+oldacc.name + ' , old acc id => '+oldacc.id);        
//     }
//     list<account> accTriggernew = trigger.new ; 
//     for (account newAcc : accTriggernew) {
//         System.debug('new acc name = '+newacc.name + ' , new acc id => '+newacc.id);        
//     }
    
//  }
    // if (trigger.isBefore&& trigger.isInsert) {
    //     System.debug('account before insert trigger old ==> '+ trigger.old);
    //  }
    // if (trigger.isAfter&& trigger.isInsert) {
    //     System.debug('account after insert trigger old ==> '+ trigger.old);
    //  }
    //  if (trigger.isBefore&& trigger.isUpdate) {
    //     System.debug('account before update trigger old ==> '+ trigger.old);
    //  }
    // if (trigger.isAfter&& trigger.isUpdate) {
    //     System.debug('account after update trigger old ==> '+ trigger.old);
    //  }
    // List<account> newAccounts = trigger.new ; 
    // if (trigger.isBefore && trigger.isUPDATE) {
    //     System.debug('BEFORE newly UPDATE record ???> '+ newAccounts);
    //     System.debug('BEFORE total UPDATE accounts size ===> '+newAccounts.size());
    //     for (account acc : newAccounts) {
    //         System.debug('BEFORE each acc id is '+ acc.Id + ' , each acc name is '+ acc.Name);
            
    //     }

        
    // }
    // if (trigger.isAfter && trigger.isUPDATE) {
    //     System.debug('AFTER newly UPDATE record ???> '+ newAccounts);
    //     System.debug('AFTER total UPDATE accounts size ===> '+newAccounts.size());
    //     for (account acc : newAccounts) {
    //         System.debug('AFTER each acc id is '+ acc.Id + ' , each acc name is '+ acc.Name);
            
    //     }
    // }
    // List<account> newAccounts = trigger.new ; 
    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug('BEFORE newly inserted record ???> '+ newAccounts);
    //     System.debug('BEFORE total insert accounts size ===> '+newAccounts.size());
    //     for (account acc : newAccounts) {
    //         System.debug('BEFORE each acc id is '+ acc.Id + ' , each acc name is '+ acc.Name);
            
    //     }

        
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('AFTER newly inserted record ???> '+ newAccounts);
    //     System.debug('AFTER total insert accounts size ===> '+newAccounts.size());
    //     for (account acc : newAccounts) {
    //         System.debug('AFTER each acc id is '+ acc.Id + ' , each acc name is '+ acc.Name);
            
    //     }
    // }
   
    
    // if (trigger.isInsert && trigger.isBefore) {
    //     System.debug('account before insert trigger called.'); 
    // }
    // if (trigger.isUPDATE && trigger.isBefore) {
    //     System.debug('account before UPDATE trigger called'); 
    // }
    // if (trigger.isInsert && trigger.isAfter) {
    //     System.debug('account after insert trigger called.'); 
    // }
    // if (trigger.isUPDATE && trigger.isAfter) {
    //     System.debug('account after UPDATE trigger called'); 
    // }
    // if (trigger.isBefore) {
    //     System.debug('account before insert trigger called.');        
    // }
    // if (Trigger.isAfter) {
    //     System.debug('account after insert trigger called');
    // }
    // if (trigger.isBefore) {
    //     System.debug('we are in Before . not saved.');
    //     if (trigger.isInsert) {
    //         System.debug('we are in before insert trigger.');
            
    //     }
    //     if (trigger.isUPDATE) {
    //         System.debug('we are in before UPDATE trigger.');
            
    //     }
        
    // }
    // if (trigger.isAfter) {
    //     System.debug('we are in After.SBNC.');
    //     if (trigger.isInsert) {
    //         System.debug('we are in after insert trigger.');
            
    //     }
    //     if (trigger.isUPDATE) {
    //         System.debug('we are in after UPDATE trigger.');
            
    //     }
       
        
    // }
        
    }
   