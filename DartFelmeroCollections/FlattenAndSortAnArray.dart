//Egész számok kétdimenziós tömbje esetén adja vissza a tömb lapított változatát,
//amely az összes egész számot rendezett (növekvő) sorrendben tartalmazza.



void main(){
    print("-------------------------");
    print("");
    print("");
    List<List<int>> list = [[3, 2, 1], [4, 6, 5], [], [9, 7, 8] , [2,1,4,1,5,1]];
    List<int> flattenAndSort(List<List<int>> nums) {
        List<int> X = [];
        for(int i = 0; i < nums.length; i++){
          if(nums[i].isNotEmpty){
              for(int j = 0; j < nums[i].length; j++){
                X.add(nums[i][j]);
            }
          }
        }
        int f = 0;
        for(int i = 0;i < X.length; i++){
          if(i+1<X.length){
            if(X[i] > X[i+1]){
              f = X.removeAt(i);
              X.add(f);
              i=-1;
            }
          }
        }
        //X.sort();
        return X;
    }

    print(flattenAndSort(list));
    print("");
    print("-------------------------");
}