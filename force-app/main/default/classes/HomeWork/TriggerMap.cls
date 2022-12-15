public  class TriggerMap {
    public  id InsertSF_Project() {
     salesforce_project__c sf = new salesforce_project__c();
     sf.project_name__C = 'homework';
     insert sf ; 
     return sf.id ;          
    }
public  void UpdateSF_Project(id sfid , string name ) {
    salesforce_project__c sfUp = new salesforce_project__c();
    sfUP = [select id, project_name__c from salesforce_project__c where id = : sfid];
    sfUp.project_name__c = name ; 
    update sfUP ;    
}

    
}
