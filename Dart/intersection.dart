void main() {
  findintersection([4, 9, 5], [9, 4, 9, 8, 4]);
}

// Function that converts two lists to sets and finds their intersection
void findintersection(List<int> nums1, List<int> nums2) {
  var set1 = nums1.toSet();
  var set2 = nums2.toSet();
  var result = set2.intersection(set1);
  print(result);
}
