public  class SOQL_Assignment {
    public static void soql_WhereClause(){
        List<contact> lstContact = [select id, name from contact WHERE name LIKE 'a%'];
        System.debug('size list of contact which starts with a '+ lstContact.size());
        System.debug('list of contact which starts with a  '+ lstContact);
        
    }  
    public static void soql_FromMethod(){
        List<contact> lstContact = [select id,LastName,phone from Contact];
        system.debug(lstContact);
        for (contact EachContact : lstContact) {
            String contactLast = EachContact.LastName;
            String contactPhone = EachContact.phone;
            System.debug('Last name is '+ contactLast + '.'+ 'phone is '+ contactPhone);            
        }

    }



}
