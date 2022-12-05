public  class ForEachLoopDemo1 {
    public static void iterateIntegerList(){
    List<Integer> listInteger = new List<Integer>();
    listInteger.add(10);
    listInteger.add(15);
    listInteger.add(21);
    listInteger.add(15);
    for (integer eachInteger : listInteger) {
        System.debug(eachInteger);        
    }

    }
}
