@istest
public  class DmlDemoTest {
    @istest
   private static void dmlInsert1Test() {
    DmlDemo.dmlInsertDemo_stndObj();
    list<account> listacc= [select id,name from account where name ='Soft Innovas' ];
    System.assertEquals(1, listacc.size());
    System.assertEquals('Soft Innovas', listacc[0].name);

   }
   @istest
   private static void dmlInsert4test() {
    account acc = new account();
    acc.name ='SoftInnovas Inc.';
    insert acc;    
    dmldemo.dmlInsertDemo_4();
    list<contact> listContact = [select id,name from contact where lastname='Biden'];
    System.assertEquals(1, listContact.size());

    
   }
}
