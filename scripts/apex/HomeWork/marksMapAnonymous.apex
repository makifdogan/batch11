Map<String,Integer> marksObtainInMaths = new Map<String,Integer>{'0111CE112' => 40 ,'0111CE102' => 19,'0111CE100' => 33,'0111CE098' => 40};
System.debug(marksObtainInMaths);

for(String eachNum : marksObtainInMaths.keySet()){
    
    System.debug(eachNum);

}
for(Integer eachMark : marksObtainInMaths.values()){
    System.debug(eachMark);
}

Set<String> uniqueRollNumberSet = marksObtainInMaths.keySet();
System.debug('uniqueRollNumberSet===> '+uniqueRollNumberSet );

 List<String> rollNumbers = new List<String>();
 rollNumbers.addAll(uniqueRollNumberSet);
 System.debug(rollNumbers); 

List<Integer> marksObtainList  = marksObtainInMaths.values();
System.debug('marksObtainList ===> '+marksObtainList);



for (Integer i = 0 ; i <= marksObtainList.size(); i++){
    Integer eachMark = marksObtainList.get(i);
    System.debug(eachMark);       
    if(eachMark<20){
        System.debug(rollNumbers.get(i)+' is not qualified for next class');
        }

// List<Integer>myList = new List<Integer>{5,1,9,11,2,4,7,14};
// integer minVal = myList.get(0);
// for(Integer eachA : myList){
//     if(eachA<minVal){
//         minVal=eachA ;
//     }
// }
// System.debug(minVal);

// List<Integer> myList = new List<Integer>{5,1,9,11};
// Integer odd = 0 ;
// Integer even = 0 ;
// for(Integer eachO : myList){

//     if(Math.mod(each, 2)==1){
//         odd = odd+1;
//     }else{
//         even= even+1;
//     }
// }
// if(even >0){
//     System.debug('mylist contains even ');
// }else{
//     System.debug('my list contains only odd number ');
// }

}
     

