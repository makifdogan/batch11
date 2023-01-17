account  acc1 = new account();
acc1.Name = 'ABC Test';
acc1.Industry = 'Energy';


account  acc2 = new account();
acc2.Name = 'xyx test';


account  acc12x = new account();
account  acc12y = new account();
List<account> listAcc = new list<account>{acc1,acc2,acc12x,acc12y};

list<Database.SaveResult> results = Database.insert(listAcc, false );
for (Database.SaveResult eachResult  : results) {
    if (eachResult.isSuccess()) {
        System.debug('insert succesfully , record id id '+ eachResult.id);
        
    } else {
        System.debug('errored out . errors are ' + eachResult.getErrors());
    }
    
}