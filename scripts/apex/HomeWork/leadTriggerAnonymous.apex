List<lead> ListLead = new list<Lead>();
for (Integer i = 0; i < 5; i++) {
    Lead LeadTri = new Lead();
    LeadTri.Lastname = 'lastname'+i ; 
    LeadTri.company = 'AC'+i ;
    LeadTri.status = 'Closed - Converted'  ;
    ListLead.add(LeadTri);
}
if (!listLead.isEmpty()) {
    insert ListLead ;     
}
