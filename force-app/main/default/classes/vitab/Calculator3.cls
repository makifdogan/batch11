public class Calculator3 {
    public static Integer add(List<Integer> listInt){
        Integer returnInt = 0 ;
        for(Integer eachInt: listInt){
            System.debug('eachInt => '+ eachInt);
            returnInt+=eachInt;
            System.debug('returnInt => '+ returnInt);
        }
        return returnInt;
    }    
}
