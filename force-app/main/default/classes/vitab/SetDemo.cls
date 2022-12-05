public class SetDemo {
    public static void citySet(){
      Set<String> cities = new Set<String>();
      cities.add('tokyo');
      cities.add('lisbon');
      cities.add('berlin');
      cities.add('nairobi');
      cities.add('tokyo');
      cities.add('lisbon');
      cities.add('berlin');
      cities.add('TOKYO');
      System.debug('cities are '+cities);           
    }
    public static void randomIntegerSet(){
        Set<Integer> setInt = new Set<Integer>();
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);
        System.debug(setInt);        
    }
    public static set<integer> setFromList(list<integer> intList) {
        set<integer> returnSet = new set<integer>();
        returnSet.addAll(intList);
        return returnSet;
   }
   public static set<String> capitalizeSet (set<String> setStr){
    set<String> returnSet = new set<String>();
    For (String eachString : setStr){
        String tempString = eachString.toUpperCase();
        returnSet.add(tempString);
    }
    return returnSet;
   }
}
