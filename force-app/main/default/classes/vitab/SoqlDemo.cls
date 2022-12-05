public  class SoqlDemo {
    public static void accountSOQL_1(){
        list<account> listAccount = [select id, name,phone, AccountNumber from account where name like '%a%'];
        System.debug('list of account ---> '+ listAccount);
        for(account eachAcc : listAccount){
            String accName = eachAcc.Name;
            String accPhone = eachAcc.Phone ;
            System.debug('accName = '+ accName + ' , phone is '+ accPhone);
            System.debug('account number is '+ eachAcc.AccountNumber);

        }

    }
    public static void accountSOQL_11(){
        account acc = [select id, name, phone, AccountNumber from account ORDER BY createddate desc LIMIT 1];
        System.debug('lates record  ---> '+ acc);

        String accName = acc.Name;
        String accPhone = acc.phone ;
        System.debug('accName = '+ accName + ' , phone is '+ accPhone);
        System.debug('account number is '+ acc.AccountNumber);
    }
    public static void accountSOQL_Filter(){
        String accNameFilter = 'Salesforce Inc.';
        list<account> listAcc = [select id,name from Account WHERE name = :accNameFilter];
        System.debug(listAcc);
    }
    public static void accountSOQL_Filter(String accNameFilter){
        
        list<account> listAcc = [select id,name from Account WHERE name = :accNameFilter];
        System.debug(listAcc);
    }
    public static void accountSOQL_Filter(list<String> accNames){
        
        list<account> listAcc = [select id,name from Account WHERE name in :accNames];
        System.debug(listAcc);
    }
    

    
}
