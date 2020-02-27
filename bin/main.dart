// Write a function to merge two sorted lists.
// The output should be a sorted list as well.

void main() {
 print(mergeLists([1,2], [1,2,3]));
 print(mergeLists([1,2], [3]));
 print(mergeLists([], [3]));
}
List<int> mergeLists(List<int>l1,List<int>l2){
 int i;
 for(i=0;i<l1.length;i++){
     int j=0;
    while(l2[j]<=l1[i]){
     j++;
    }
    l2.insert(j, l1[i]);
  }

return l2;
}
