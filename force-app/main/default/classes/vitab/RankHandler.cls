public  class RankHandler {
    // public String rankPrice(Integer rank){
    //     String price = '';
    //     if (rank == 1) {
    //         price = 'Gold';
    //     }else if (rank ==2) {
    //         price = 'Silver';
    //     }else if (rank==3) {
    //         price = 'Bronze';            
    //     } {
            
    //     }
            
    //     }
    // 
    public string rankPrize(integer rank){
        string prize = '';
    if (rank == 1) {
        prize = 'Gold';
    } else if (rank == 2) {
        prize = 'Silver';
    } else if (rank == 3) {
        prize = 'Bronze';
    } else {
        if (rank <= 10) {
            prize = 'Top 10 certi';
        } else {
            prize = 'Participation certificate';
        }
    }
    return prize;
}

public string rankPrizeSwitch(integer rank){
    string prize = '';
    switch on rank {
        when 1 {
            prize = 'Gold';
        }
        when 2 {
            prize = 'Silver';
        }
        when 3 {
            prize = 'Bronze';
        }
        when 4,5,6,7,8,9,10 {
            prize = 'Top 10 congrats.';
        }
        when else {
            prize = 'Thank you for participation';
        }
    }

    return prize;
}
}


