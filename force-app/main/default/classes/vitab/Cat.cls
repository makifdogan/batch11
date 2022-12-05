public  class Cat {
    public String name ; 
    public String color ; 

    public Cat() {
        System.debug('consturctor called automatically');
    }
    
    public Cat(String n , String clr){
        name = n ; 
        color = clr ; 
        sleeping();
    }
    public void sleeping (){
        System.debug(name+' is kinda sleeping');
    }
}
