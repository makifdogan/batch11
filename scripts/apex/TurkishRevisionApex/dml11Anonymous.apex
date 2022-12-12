Dml11.createAccountsAndContacts(2);
List<Contact> conList = [select id, lastName from Contact where lastName like '%Contact%' limit 90];
System.debug(conList.size());

//delete accList;
delete conList;
System.debug('delete sonrasi ' + conList.size());

List<Account> accList = [select id, name from Account where name like '%Account%'and name != 'Sample Entitlement' limit 1];
System.debug(accList.size());
delete accList;


System.debug('delete sonrasi ' + accList.size());
