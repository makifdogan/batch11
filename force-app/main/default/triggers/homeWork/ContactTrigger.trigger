trigger ContactTrigger on contact (before update, after update) {
   System.debug('Trigger Before update');
   System.debug('trigger after update');
}