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
        if (oldContact.LeadSource !='Partner Referral') {
            eachContact.addError('cannot update Partner Referral contact.');
            
        }
        
    }        
   }
   
}
