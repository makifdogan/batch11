try {
    String s ; 
    s.toLowerCase();
    account ac = new account ();
    insert ac ;
}
catch(exception ex) {
    system.debug('Something went wrong body');
    System.debug('ex -> ' + ex.getMessage());
    System.debug('ex line number : ' + ex.getLineNumber());
}
System.debug('APEX is SİMPLE');