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
    
}
