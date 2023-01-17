
public class FutureExample11 {
    @future
    public static void updateOpportunitiesAndContacts(Map<ID, String> mapName) {
        // Update the description field of opportunities connected to the account
        List<Opportunity> listopps = [SELECT Id, Description,accountid FROM Opportunity WHERE AccountId in : mapName.keySet()];
        for (Opportunity opp : listopps) {
            
            opp.Description = mapName.get(opp.accountid);
           // listopps.add(opp);
        }
        update listopps;
        // Update the description field of contacts connected to the account
        List<Contact> listcontacts = [SELECT Id, Description,AccountId FROM Contact WHERE AccountId in : mapName.keySet()];
        for (Contact con : listcontacts) {
            
            con.Description = mapName.get(con.accountid);
          //  listcontacts.add(con);
        }
        update listcontacts;
    }
   
}
