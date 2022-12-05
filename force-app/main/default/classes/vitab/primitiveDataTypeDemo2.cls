public  class primitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('create new date intance');
        date newDate = date.newInstance(1995, 2, 2);
        system.debug('new date\'s is ' + newDate  ); 
        date newDate2 = date.newInstance(2022, 10, 10);
        system.debug('new date\'s is ' + newDate2);
        date todayDate = date.today();
        system.debug ('today\'s date is ' + todayDate);
   
        }
        public void printNewTime(){
            time mytime = Time.newInstance(18, 20, 2, 30);
            system.debug('my time is '+ mytime );
            time metime = Time.newInstance(15, 15, 2, 20);
            system.debug('me time is '+ metime );
        }
            
        
        public void printNewDateTime(){
            date newDate = date.today();
            Time newTime = time.newInstance(1, 1, 15, 55);

            Datetime dt1 = Datetime.newInstance(newDate, newTime);
            system.debug('dt1 is '+dt1);
            Datetime dt2 = Datetime.newInstance(2000,5,16);
            system.debug('dt2 is '+ dt2);
            Datetime dt3 = Datetime.newInstance(arg0, arg1, arg2, arg3, arg4, arg5);
            system.debug('dt3 is '+ dt3);
        }

    
}
