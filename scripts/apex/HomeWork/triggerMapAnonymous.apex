TriggerMap t = new TriggerMap();
String sfID = t.InsertSF_Project();
System.debug(sfID);
t.UpdateSF_Project(sfid, 'Updated Trigger Projec' );
