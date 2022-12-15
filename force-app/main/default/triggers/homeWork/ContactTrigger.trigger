trigger ContactTrigger on contact (before update, after update) {
   if (trigger.isBefore&&trigger.isUpdate) {
      ContactTriggerHandler.contactUpdateValidation1(trigger.new, trigger.old,trigger.newMap, trigger.oldMap);
      
   }
}