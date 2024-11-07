//Kapsz egy számlistát. A számok mindegyike bizonyos számúszor ismétlődik.
//Távolítsd el az összes olyan számot, amely páratlanul ismétlődik,
//miközben minden más számot változatlanul hagysz.

void main()
{
    print("-------------------------");
    print("");
    print("");
    List<int> ages = [1, 2, 3, 1, 3, 3];
    List<int> oddOnesOut(List<int> nums) {
      int min = nums[0];
      int max = nums[0];
      for(int i = 0; i < nums.length;i++){
          if(min > nums[i]){min=i;}
          if(max < nums[i]){max=i;}
      }
      for(int j = min; j < max;j++){
        int db = 0;
        for(int i = 0; i < nums.length;i++){
          if(nums[i] == j){
              db++;
          }
        }
        if(db%2!=0){
          while(true){
            nums.remove(j);
            if(nums.indexOf(j)== -1){
              break;
            }
          }
          
        }
      }

      return nums;
      }

    print(oddOnesOut(ages));
    print("");
    print("-------------------------");

}