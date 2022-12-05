// public  class PrimitiveDataTypeDemo {
//     public void primitiveDataType(){
//         System.debug('print date types');
//     }
// }
//class
public class PrimitiveDataTypeDemo {

//method
public void printBasicDataType(){
    system.debug('print data types');
    string batchName = 'Batch 11';
    integer totalCandidates = 80;
    boolean isAdminCompleted = true;

    system.debug('batch name is ' + batchName);
    system.debug('total candidates are ' + totalCandidates);
    system.debug('is admin completed? ' + isAdminCompleted);
    string batchDescription = batchName + ' is the best';
        system.debug(batchDescription);

        Decimal decValue = 33.9;
        system.debug('decimal value is ' + decValue);

        Long l = 21489765134L;
        system.debug('long value is ' + l);
    }

public void printBasicDateType2(){
    Object ob1 = 'assining string to object.allowed?';
    Object ob2 = 5000;
    Object ob3 = false ;
    System.debug(ob1);
    System.debug(ob2);
    System.debug(ob3);

    Id accoundId = '001Do000003CJAyIAO';
    System.debug('id--->'+ accoundId);

}
}
    


