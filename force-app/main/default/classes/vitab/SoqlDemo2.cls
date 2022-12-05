public class SoqlDemo2 {
    public static void soqlChildToParent_1() {
        List<contact> listContacts = [ select id, name, account.name, account.industry from contact where account.industry = 'energy'];
        System.debug(listContacts);
        for (contact eachContact : listContacts ) {
            String accName = eachContact.Account.Name;
            System.debug('contact name = '+ eachcontact.Name+' its  acc name is '+ accname);
            
        }
    
            
     }
     public static void soqlParentToChild_1() {
        List<account> listAccOpp = [select id,name,annualrevenue,type,(select name, amount from opportunities where stageName = 'closed won') from account where type = 'Customer - Direct'];
        for (account eachAcc : listAccOpp) {
            System.debug('acc name => '+ eachAcc.Name+' , annual revenue => '+ eachAcc.AnnualRevenue);
            List<opportunity> listOpp = eachAcc.Opportunities;
            for (opportunity  eachOpp : listOpp) {
                System.debug('--- opp name => '+ eachopp.name+ ' , aomunt is '+ eachopp.amount);
                
            }
            
        }
        
     }
        
    
}
