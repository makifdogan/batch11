public class Collections_Assignment {
    // public static void listMethods(){
    //     List<String> weekend = new  List<String>{'saturday','sunday'};
    //     System.debug('total weekend days are = '+ weekend.size());
    //     System.debug('is weekend list empty ?  '+ weekend.isEmpty());
        

    //     List<String> weekDays = new  List<String> ();
    //     weekDays.add('monday') ;
    //     weekDays.add('tuesday') ;
    //     weekDays.add('wednesday') ;
    //     weekDays.add('thursday') ;
    //     weekDays.add('FRIDAY') ;
    //     System.debug(weekDays);
    //     weekDays.addAll(weekend);
    //     System.debug(weekdays);
    //     String firstday = weekDays.get(0);
    //     System.debug(firstday.toUpperCase());
    //     System.debug('total weekdays are = '+ weekDays.size());
    //     System.debug('does it contains sunday ? '+ weekdays.contains('sunday'));
    //     System.debug('is weekdays list  equal to weekend ?  '+ weekDays.equals(weekend));
    //     weekDays.remove(5);
    //     weekDays.set(6,'sunday');
    //     System.debug('index of monday '+ weekdays.indexOf('monday') );
    //     weekdays.sort();
    //     System.debug(weekdays);
    //     weekend.clear();                
    // }
    public static void setMethods(){
        Set<String> weekend = new  Set<String>{'saturday','sunday'};
        System.debug('total weekend days are = '+ weekend.size());
        System.debug('is weekend list empty ?  '+ weekend.isEmpty());
        

        Set<String> weekDays = new  Set<String> ();
        weekDays.add('monday') ;
        weekDays.add('tuesday') ;
        weekDays.add('wednesday') ;
        weekDays.add('thursday') ;
        weekDays.add('FRIDAY') ;
        System.debug(weekDays);
        weekDays.addAll(weekend);
        System.debug(weekdays);
        String firstday = weekDays.get(0);
        System.debug(firstday.toUpperCase());
        System.debug('total weekdays are = '+ weekDays.size());
        System.debug('does it contains sunday ? '+ weekdays.contains('sunday'));
        System.debug('is weekdays list  equal to weekend ?  '+ weekDays.equals(weekend));
        weekDays.remove(5);
        weekDays.set(6,'sunday');
        System.debug('index of monday '+ weekdays.indexOf('monday') );
        weekdays.sort();
        System.debug(weekdays);
        weekend.clear();        
    }
    
}
