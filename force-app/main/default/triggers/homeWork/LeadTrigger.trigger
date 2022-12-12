trigger LeadTrigger on Lead (before insert, after insert, before update, after update) {
    List<lead> listLead = trigger.new ; 
if (trigger.isBefore&& trigger.isInsert) {
    for (lead eachLead : listLead) {
        System.debug(eachLead);        
    }
}
if (trigger.isBefore && trigger.isUpdate) {
    for (lead EachLead : ListLead) {
        System.debug(eachLead.id +' - '+ eachlead.name + ' - '+ eachLead.description+' is updated.');        
    }    
}

}