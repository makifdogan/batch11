@istest
public class Dml11Test {
   @istest
   private static void createAccountsAndContactsTest(){

    Test.startTest();
    Dml11.createAccountsAndContacts(5);
    Test.stopTest( );

    List<account> accList = [select id,name, (select id, lastname from contacts) from account] ; 
    integer acSys = accList.size();
    System.assertEquals(5,acSys);

    integer oneAccOfCon = accList[0].contacts.size();

    System.assertEquals(5,oneAccOfCon);
   // string conName = accList[0].contacts[0].lastName;
    //System.assertEquals('Contact 1.1', conName);
   }
}