int? binary_search(List<int> list, int item) {
  int left = 0;
  int right = list.length - 1;
  while (left <= right) {
    int mid = (right + left) ~/ 2;
    if (list[mid] == item) {
      return mid;
    }
    if (list[mid] > item) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }
  return null;
}

void main() {
  var list = [1, 3, 5, 7, 9];
  print(binary_search(list, 3));
  print(binary_search(list, -1));
}
