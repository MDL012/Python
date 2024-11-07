//Egész számok kétdimenziós tömbje esetén adja vissza a tömb lapított változatát,
//amely az összes egész számot rendezett (növekvő) sorrendben tartalmazza.



void main(){
    print("-------------------------");
    print("");
    print("");
    List<List<int>> list = [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]];
    List<int> flattenAndSort(List<List<int>> nums) {
        List<int> X = [];
        for(int i = 0; i < nums.length; i++){
          if(nums[i].isNotEmpty){
              for(int j = 0; j < nums[i].length; j++){
                X.add(nums[i][j]);
            }
          }
        
        }
        for(int i = 0;i < X.length; i++){
          //removeAt()
          //insert()
            if(i!=0){
              if(X[i] < X[i-1]){
                int H = X.removeAt(i);
                X.insert(X[i-1],H);
                i=0;
              }
            }
        }
        return X;
    }

    print(flattenAndSort(list));
    print("");
    print("-------------------------");
}