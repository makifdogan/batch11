public  class IfAndForLoop11 {
    public static void ifNumber(Integer a, Integer b){
        if (a>b) {
            System.debug(a+' sayısı büyüktür '+ b+ ' sayısından büyüktür');
        } else if (a<b) {
            System.debug(b+' sayısı büyüktür '+ a+ ' sayısından büyüktür');
             } else {
                System.debug(a+' sayısı '+ b +' sayısına eşittir');
             }                    
    }
    public static void ifBread (string order ,Integer count ){
        Integer fiyat = 0;
        if (order =='Ekmek') {
            fiyat = count*1;
                     
        }else if (order == 'Simit') {
             fiyat = count*2;
                        
        }else if (order=='kek') {
             fiyat = count*3;
                       
        }else {
            System.debug('elimizde'+ order +' ürününden bulunmamaktadır.');
        }
        if (fiyat!= 0) {
            System.debug(count+' tane '+ order + ' aldınız. '+ ' ödeyeceğiniz miktar = '+ fiyat+'$');
            
        }
                    
    }
    public static void ifBreadSwitch(string order ,Integer count ){
        Integer fiyat = 0;
        switch on order {
            when  'Ekmek'{
                fiyat = count*1; 
            }
            when 'Simit'{
                fiyat = count*2;
            }
            when 'kek'{
                fiyat = count*3;
            }
            when else {
                System.debug('elimizde '+ order +' ürününden bulunmamaktadır.');  
            }
        }
        if (fiyat != 0) {
            System.debug(count+' tane '+ order + ' aldınız. '+ ' ödeyeceğiniz miktar = '+ fiyat+'$');
       }
    
}
    public static integer forLoopSumNumbers (Integer n ){
        Integer sum = 0 ;
        if (n>0) {
                
            for (Integer i = 0; i <= n; i++) {
                //sum = sum + i ;
                sum += i ;
                System.debug('i= '+ i);
                System.debug(sum);                         
        }
        
        } else {
           System.debug('sayınız 0 veya sıfırdanküçük '); 
        }
        return sum ;
    }
    public static integer whileSumNumbers (Integer n){
        Integer sum = 0 ;
        Integer count = 1;
        while (count <= n) {
            sum += count;
            System.debug('sum = '+ sum);
            count++;
            System.debug('count = '+ count);
             }
             return sum;
    }
}