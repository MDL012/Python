//Írjon egy függvényt, amely visszaadja a bemeneti karakterláncban többször előforduló, különálló,
//nagy- és kisbetűket nem érzékelő alfabetikus karakterek és numerikus számjegyek számát. Feltételezhető,
//hogy a bemeneti karakterlánc csak betűket (kis- és nagybetűket egyaránt) és számjegyeket tartalmaz.

void main(){
    print("-------------------------");
    print("");
    print("");
    String szo = "fhgoiáyhn-dkfn4";
    String Duplicates(String A){
        String B = "";
        for(int i = 0; i < A.length; i++){
          int db = 0;
          for(int j = 0; j < A.length; j++){
            if(i == j){
              db++;
            }
          }
          if(db > 1){
            B += "Az (" + A[i] + ") " + db + "-szer/szor szerepel";
          }
        }
      return A;
    }
    print(Duplicates(szo));
    print("");
    print("-------------------------");
}