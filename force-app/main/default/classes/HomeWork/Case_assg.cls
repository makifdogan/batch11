public  class Case_assg {
    public static void caseInsert() {
        case c = new case ();
        c.subject= 'TestCase';
        c.origin = 'Phone';
        insert c ;        
    }
    public static void caseUpdate() {
        case c =[select id, subject from case where subject = 'TestCase'];
        c.subject= 'Testing case 1';
        update c ;
    }
    public static void caseDelete() {
        case c = [select id, subject from case where subject like '%case 1%'];
        delete c ;
    }
    
}
