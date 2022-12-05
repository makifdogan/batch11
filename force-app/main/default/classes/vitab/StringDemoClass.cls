public  class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex language.';
        system.debug(sessionDescription);
        Integer lengthOfStr = sessionDescription.length();
    System.debug('length of session description is '+ lengthOfStr);
   
    String capsSessionDescription = sessionDescription.toUpperCase();
    system.debug(capsSessionDescription);

    boolean apexContains = sessionDescription.contains('apex');
    System.debug('contains apex ????? ' + apexContains);

    Boolean sfContains = sessionDescription.contains('salesforce');
    System.debug('contains salesforce ????? ' + sfContains);

   

    }
    
}
