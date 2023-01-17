public  class ContactTriggerHandler {
   public static void contactUpdateValidation1(list<contact> conTriggerNew ,        List<Contact> conTriggerOld, Map<id,contact> conTriggerNewMap,Map<Id,Contact> contactTriggerOldMap) {
    for (contact eachContact : conTriggerNew) {
        contact oldContact = contactTriggerOldMap.get(eachcontact.id);
        if (oldContact.LeadSource == 'Partner Referral') {
            eachContact.addError('cannot update Partner Referral contact.');
            
        }
        
    }        
   }
   public static void contactUpdateValidation2(list<contact> conTriggerNew ,        List<Contact> conTriggerOld, Map<id,contact> conTriggerNewMap,Map<Id,Contact> contactTriggerOldMap) {
    for (contact eachContact : conTriggerNew) {
        contact oldContact = contactTriggerOldMap.get(eachcontact.id);
        if (eachContact.leadsource != oldContact.leadsource) {
            string customError = System.label.ContactValidation2 ;
            eachContact.leadsource.addError(customError);
            
        }
        
    }        
   }
   public static void otherPhoneOfContact(List<Contact> TriggerNew, Map<id,Contact> triggerNewMap) {
    set<id> conIds = new set<id>();
    for (contact con : TriggerNew) {
        if (con.Accountid!= null) {
            conIds.add(con.id);            
        }        
    }
    list<contact> conlist =[select id, otherPhone, account.phone from contact where id in : conIds];
    for (contact cn : conlist) {
        cn.otherPhone = cn.account.phone;        
    } 
    update conlist ; 
   }
   public static void otherPhoneOfContact2(List<Contact> TriggerNew, map<id,contact> triggernewmap) {
    Map<Id,account> accMap = new map<id,account>();
    Set<id> accIds = new Set<id>();
    list<contact> Conlist = new list<contact>();
    for (contact con : TriggerNew) {
        if (con.Accountid!= null) {
            accIds.add(con.Accountid);
            Conlist.add(con);            
        }        
    }
    list<account> accList = [select id, name, phone from account where id in : accIDs];
    for (account acc : accList) {
        accMap.put(acc.id, acc);        
    }
    for (contact con : conList) {
        con.otherPhone = accMap.get(con.Accountid).phone ;        
    }
   }
}