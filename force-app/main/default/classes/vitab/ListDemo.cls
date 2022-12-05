public  class ListDemo {
   public static String candidatesList(Integer i){
    List<String> listCandidates = new List<String>();
    listCandidates.add('Marc');
    listCandidates.add('Elon');
    listCandidates.add('Bill');
    listCandidates.add('marc');
    System.debug('list of candidates '+ listCandidates);
    String returnValue = '';
    if (i>= 0 && i< listCandidates.size()) {
        returnValue =listCandidates[i];        
    }else {
        returnValue='there is no value like that';
    }
    return returnValue; 
    
   }

   public static void randomIntegerList(){
    List<Integer> listInteger = new List<Integer>();
    listInteger.add(10);
    listInteger.add(15);
    listInteger.add(21);
    listInteger.add(15);
    listInteger.add(15);
    System.debug('before sort -->'+ listInteger);
    listInteger.sort();
    System.debug('after osrt  __>'+ listInteger);
    Integer index3Value = listInteger.get(3);
    Integer index3Value2 = listInteger[3];
    System.debug('index 3 value is '+index3Value);
    System.debug('index 3 value is second way '+index3Value2);
    System.debug('list of integer '+ listInteger);
    
   }
   
   public static void allCats(){
    List<cat> listCats = new List<cat>();
    Cat sfCat2 = new Cat('leo', 'white');
    Cat sfCat3 = new Cat('luna', 'orange');
    Cat bacth11Cat = new Cat('fluffykins', 'black');
    
    listCats.add(bacth11Cat);
    listCats.add(sfCat2);
    listCats.add(sfCat3);
    system.debug('cat list ' + listCats);
   
   }
}
