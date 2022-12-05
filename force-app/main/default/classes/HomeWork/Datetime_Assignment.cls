public  class Datetime_Assignment {
    public void diffofDate(){
        date varTomorrowDate = date.newInstance(2022,11,15);
        date varTodaysDate = date.today();
        Integer between2Days = varTodaysDate.daysBetween(varTomorrowDate);
        System.debug('days between today and tomorrow is ' + between2Days);
    }

   public void Timecheck(){
       Datetime varTomorrowDateTime = Datetime.newInstance(2022, 11,15, 23, 0, 0);
       Datetime var10DaysDateTime1 = varTomorrowDateTime.addDays(10);
       Datetime var10DaysDateTime = var10DaysDateTime1.addHours(2);
        Long TimeLong = 12339874361L ;
        Datetime varDateTimeLong = Datetime.newInstance(TimeLong);
        Datetime varTomorrowAdd7Days = varTomorrowDateTime.addDays(7);
        Datetime var10DaysAdd10Days = var10DaysDateTime.addDays(10);
       
       System.debug('varTomorrowDateTime is ' + varTomorrowDateTime);
       System.debug('var10DaysDateTime is ' + var10DaysDateTime);
       System.debug('varDateTimeLong ' + varDateTimeLong);
       System.debug('varTomorrowAdd7Days is ' + varTomorrowAdd7Days);
       System.debug('var10DaysAdd10Days is ' + var10DaysAdd10Days);


   }
}
