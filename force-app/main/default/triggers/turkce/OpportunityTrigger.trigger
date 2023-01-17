trigger OpportunityTrigger on Opportunity (before insert,before update, after insert, after update) {
    // soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.
    // if (trigger.isbefore&&trigger.isBefore) {
    //     for (opportunity opp : trigger.new) {
    //         if (opp.stagename != trigger.oldMap.get(opp.Id).stagename) {
    //             if (opp.stagename == 'Closed Lost') {
    //                 opp.description = 'çok üzgünüz' ;                    
    //             }
    //             if (opp.stagename== 'Closed Won') {
    //                 opp.description = 'OOOLEEYY Yaşasin';                    
    //             }                
    //             if (opp.stagename=='Prospecting') {
    //                 opp.stagename.adderror('Süreci başa döndüremezsiniz . dolayisiyla bu işlemi yapaamazsiniz ');                    
    //             }
    //         }
            
    //     }
    // }

}