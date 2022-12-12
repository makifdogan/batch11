public  class DML2_Assgn {
    public static void insert_dml() {
        account acc = new account();
        acc.Name = 'Akif';
        account acc2 = new account();
        acc2.Name = 'Assignment';
        insert acc ; 
        insert acc2 ;           
    }
    public static void updatind_dml() {
        account acc = new account();
        acc.name = 'Account Created';
        insert acc ;
        acc.Name = 'Account Updated ';
        update acc ;         
    }   
    public static void  createBulkContacts() {
        contact c1 = new contact(FirstName = 'Mark', Lastname='Ruffalo');
        insert c1 ; 
        contact c2 = new contact(FirstName = 'Mark', Lastname='Ruffalo');
        insert c2 ;
        contact c3 = new contact(FirstName = 'Chris', Lastname='Hamswork');
        insert c3 ; 
        contact c4 = new contact(FirstName = 'Scarlett', Lastname='Johansson');
        insert c4 ; 
        contact c5 = new contact(FirstName = 'Scarlett', Lastname='Johansson');
        insert c5 ; 
        
    }
    public static list<contact> searchForContacts(string Lname) {
        List<contact> ListCont = [select id, name from contact where lastname = : Lname ];
        return ListCont ;


        
    }
}
