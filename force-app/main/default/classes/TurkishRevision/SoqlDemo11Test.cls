@istest
public  class SoqlDemo11Test {
    @istest
    private static void accountIndustryTest() {
        list<account> accList = new list<account>(); 
        account acc = new account();
        acc.Name = 'test 1';
        acc.Industry = 'Education';
        accList.add(acc) ; 

        account acc2 = new account();
        acc2.Name = 'test 2';
        acc2.Industry = 'Energy';
        accList.add(acc2) ;
        
        insert accList ; 

        Test.starttest();
        integer rs = SoqlDemo11.accountIndustry('Education');
        test.stoptest();
        System.assertEquals(1,rs);
    }
}
