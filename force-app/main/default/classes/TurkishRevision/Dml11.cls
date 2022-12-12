public  class Dml11 {
    public static void createAccountsAndContacts(integer n ) {
        if(n<=0){
            system.debug('hatalı bir sayı girdiniz tekrar deneyiniz  ');
        }else{
            List<account> accList = new List<account>();
        
        for (Integer i = 1; i <= n ; i++) {
            account acc = new account();
            acc.name = 'Account '+ i ;
            accList.add(acc);            
        }
        insert accList ; 
        list<contact> conList = new list<contact>();
        
        for (account acc : accList) {
            integer s = 1  ; 
            for (Integer i = 1; i <= n; i++) {
                contact con = new contact() ; 
                con.lastname = 'Contact '+s+'.'+i  ;
                con.accountID = acc.id ;  
                conList.add(con);            
            }
            s++ ; 

            
        }
        insert conlist ; 
        }
        
        
    }
   
}
