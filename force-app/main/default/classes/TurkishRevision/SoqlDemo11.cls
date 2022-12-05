public class SoqlDemo11 {
     //Account recorlarindan Industry 'Education' olanlarin listesinin record sayisini bulup return eden bir metot yazin..
     public static integer accountIndustry() {
        list<Account> accList = [select id, name from Account where Industry= 'Education' ]; 
        System.debug(accList);
        integer recordSayisi =accList.size();
        return recordSayisi ;       
     }  
     public static integer accountIndustry(String industry) {
        list<Account> accList = [select id, name from Account where Industry= :industry ]; 
        System.debug(accList);
        integer recordSayisi =accList.size();
        return recordSayisi ;       
     } 
     //Accountlardan industry Energy olanlari contactlari ile beraber listeleyin ve her bir recordu tek tek yazin..
     public static void accountWithContacts() {
         list<Account> accList = [select id, name, (select id, lastname from Contacts) from account where Industry = 'Energy'];
         System.debug(accList);
         for (account acc : accList) {
            System.debug(acc.Name);
            System.debug(acc.contacts);
            for( contact con : acc.contacts){
                System.debug(con.lastName);
            }

            
         }

        
     }
     public static void accountWithContacts(String industry) {
        list<Account> accList = [select id, name, (select id, lastname from Contacts) from account where Industry = :industry];
        System.debug(accList);
        for (account acc : accList) {
           System.debug(acc.Name);
           System.debug(acc.contacts);
           for( contact con : acc.contacts){
               System.debug(con.lastName);
           }

           
        }

       
    }

}
