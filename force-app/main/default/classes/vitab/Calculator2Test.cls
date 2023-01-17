@isTest
public  class Calculator2Test {
    @istest 
    private static void testMessage() {
        Calculator2.welcomeMessage();
        Calculator2.printNewMessage('this is from test method');        
    }
    @istest
    private static void addTest1() {
        integer i = 10 ;
        integer j = 15 ;
        integer sum1= Calculator2.add(i, j);
        System.assertEquals(25,sum1);
        
    }
    @istest
    private static void addTest2() {
        
        integer sum1= Calculator2.add(10,15,25);
        System.assertEquals(50,sum1);
        
    }
}
