// Write a function to merge two sorted lists.
// The output should be a sorted list as well.

void main() {
 print(mergeLists([1,2], [1,2,3]));
}
List<int> mergeLists(List<int>l1,List<int>l2){
 List<int> result =List<int>.filled((l2.length-l1.length).abs()+l1.length>l2.length?l2.length:l1.length, 0, growable: true);
 if(l1.length>l2.length){
  int i;
  for( i=0;i<l2.length;i++){
    result[i]=l1[i]+l2[i];
  }
  for(i=l2.length;i<l1.length;i++){
   result.add(l1[i]);
  }
 }
 else if(l1.length<l2.length){
  int i;
  for( i=0;i<l1.length;i++){
   result[i]=l1[i]+l2[i];
  }
  for(i=l1.length;i<l2.length;i++){
   result.add(l2[i]);
  }
 }else if(l1.length==l2.length){
  int i;
  for( i=0;i<l1.length;i++){
   result[i]=l1[i]+l2[i];
  }

 }
 result.sort();
 return result;
}
