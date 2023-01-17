trigger ContactTrigger on contact (before insert, before update, after insert, after update, after delete, after undelete) {
   // if (trigger.isafter&&trigger.isInsert) {
   //    ContactTriggerHandler.otherPhoneOfContact(trigger.new, trigger.newMap);
   // }
   if (trigger.isBefore&&trigger.isInsert) {
      ContactTriggerHandler.otherPhoneOfContact2(trigger.new,trigger.newMap);
      
   }
//    if (Trigger.isBefore && Trigger.isInsert) {
//       for (Contact  c : trigger.new) {
//          if (c.LastName != trigger.oldMap.get(c.id).LastName) {
//           c.Description = 'lastName değiştirildi.   '+trigger.oldMap.get(c.id).LastName +  '-' + c.LastName + ' olarak değiştirildi.';
//          }
//       }
//   }
   // Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse, bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..
   // set<Id> accountIds = new set <id>();
   // if (trigger.isAfter||trigger.isUndelete) {
   //    if (trigger.isInsert) {
   //       for (contact c : trigger.new) {
   //          if (c.accountId!=null) {
   //             accountIds.add(c.Id);
   //          }            
   //       }
   //    }
   //    if (trigger.isUpdate) {
   //       for (contact c : trigger.new) {
   //          if (c.Accountid !=trigger.oldMap.get(c.id).Accountid) {
   //             accountIds.add(c.Accountid);
   //             accountIds.add(trigger.oldMap.get(c.id).Accountid);                              
   //          }
   //       }
   //    }
   //    if (trigger.isDelete) {
   //       for (contact c : trigger.old) {
   //          if (c.Accountid!= null) {
   //             accountIds.add(c.Accountid);               
   //          }
   //       }         
   //    }  
   //    if (!accountids.isEmpty()) {
   //       List<account> accList = [select id,name,number_of_contact__C, (select id from contacts) from account where id in : accountIds];   
   //       for (account acc : accList) {
   //          acc.number_of_contact__C = acc.contacts.size();            
   //       }  
   //       update accList ;     
   //    }
   // }
   
   
   
   
   if (trigger.isBefore&&trigger.isUpdate) {
     ContactTriggerHandler.contactUpdateValidation1(trigger.new, trigger.old,trigger.newMap, trigger.oldMap);   
      ContactTriggerHandler.contactUpdateValidation2(trigger.new, trigger.old,trigger.newMap, trigger.oldMap); 
   }
}