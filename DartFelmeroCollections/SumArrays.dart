//Írj egy olyan függvényt, amely egy számokból álló tömböt vesz fel,
//és a számok összegét adja vissza. A számok lehetnek negatívak vagy nem egész számok.
//Ha a tömb nem tartalmaz számokat, akkor 0-t kell visszaadnia.

void main()
{ 
    print("-------------------------");
    print("");
    print("");
    List<double> ages = [1, 5.2, 4, 0, -1];
    num sum(List<num> arr) {
        double X = 0;
        for(int i = 0; i < arr.length;i++){
          X = X + (arr[i]);
        }
        return X;
    }
    print(sum(ages));
    print("");
    print("-------------------------");
}
