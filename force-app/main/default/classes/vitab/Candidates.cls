public  class Candidates {
    public String Name ; 
    public String Gender ;  
    public static String CompanyName ;
    public static Integer countCandidates = 0 ;

    public Candidates(){
        countCandidates++;
    }
    public void printCandidate(){
        System.debug('name is ' + Name);
        System.debug('gender is '+ Gender);
        System.debug('company name is '+ CompanyName);
    }   
    public static void printCandidateInfo(){
        System.debug('Company name '+CompanyName);
        // WE CANNOT ACCESS NON STATİC MEMBERS İNSİDE STATİC METHODS
        // LİKE THİS  system.debug('name is '+ Name);
    }  
}
