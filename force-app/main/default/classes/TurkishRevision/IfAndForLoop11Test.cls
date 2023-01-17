@istest
public class IfAndForLoop11Test {
    //Bir değeri return etmeyen beya birşey üretmeyen öetotlarda test sadece o methodu istenen parametrelerle çağıralarak yapılır...
    @istest
    private static void ifNumberTest() {
        IfAndForLoop11.ifNumber(9,7);
        IfAndForLoop11.ifNumber(5,7);
        IfAndForLoop11.ifNumber(7,7);
        
    }
    @istest
    private static void ifBreadTest() {
        IfAndForLoop11.ifBread('Simit',3);
        IfAndForLoop11.ifBread('Ekmek',5);
        IfAndForLoop11.ifBread('kek',13);
        IfAndForLoop11.ifBread('Adana',13);
                 
    }
    @istest
    private static void forLoopSumNumbersTest() {
        integer tplm = IfAndForLoop11.forLoopSumNumbers(5);  
        System.assertEquals(15, tplm); 
       // integer tplm2 = IfAndForLoop11.forLoopSumNumbers(-5);  
       // System.assertEquals( null , tplm2); 

    }
}
