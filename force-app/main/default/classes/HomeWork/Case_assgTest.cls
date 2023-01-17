@istest
public  class Case_assgTest {
    @istest
    public static void caseInsertTest() {
        Case_assg.caseInsert();
        List<case> caseList = [select id, subject from case limit 1];
        System.assertEquals('TestCase',caseList[0].subject );
        
    }
    @istest
    public static void caseUpdate() {
        case c = new case ();
        c.subject= 'TestCase';
        c.origin = 'Phone';
        insert c ; 
        Case_assg.caseUpdate();
        list<case> caseList = [select id, subject from case limit 1 ];
        System.assertEquals('Testing case 1', caseList[0].subject);
    }
    public static void caseDeleteTest() {
                
    }
}
