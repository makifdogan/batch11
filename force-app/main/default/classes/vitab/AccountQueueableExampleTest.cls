@istest
public with sharing class AccountQueueableExampleTest {
    @istest
    private static void testQueueable1() {
        list<account> listAcc = new list<account>();
        for (Integer i = 0; i < 200; i++) {
            account a = new account();
            a.name = 'Pi Account '+ i ;
            a.active__c = 'Yes';
            listAcc.add(a);
            
        }
        insert listAcc ;

        test.startTest();
        AccountQueueableExamplee aq = new AccountQueueableExamplee(listAcc);
        System.enqueueJob(aq);
        test.stopTest();

        list<account> getAccounts = [select id, name from account];
        system.assert(getAccounts[0].Name.contains('-- SI'));
    }
}
