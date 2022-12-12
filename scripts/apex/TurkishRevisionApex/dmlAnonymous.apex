account acc = new account () ;
acc.name = 'Salesforce';
insert acc ; 

account ac = [select id,name from account where name = 'Salesforce' limit 1 ];
ac.name = 'Salesforce Inc.';
update ac ; 

List<account> accList = new List<account>();
account acc1 new account();
acc1.name = 'Account Demo 1 ';
accList.add(acc1);
//insert acc1 ; 

account acc2 new account();
acc2.name = 'Account Demo 1 ';
accList.add(acc2);
//insert acc2 ; 

account acc3 new account();
acc3.name = 'Account Demo 1 ';
accList.add(acc3);
//insert acc3 ; 

insert accList ; 

List<account> accList = new List<account>();
for(integer i = 1 ; i<=3 ; i++ ){
    account acc = new account();
    acc.name = 'Account Demo '+ i ;
    accList.add(acc);
    
}
insert accList ; 

integer a = 1 ; 
List<contact> conList = new list<contact>();
for ( account acc : accList){
    contact con = new contact();
    con.lastname = 'contact '+ a ;
    a++ ; 
    con.accountid = acc.id ; 
    conList.add(con);
}
insert conList ; 

