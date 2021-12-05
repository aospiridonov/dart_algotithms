List<int> qsort(List<int> array) {
  if (array.length < 2) {
    return array;
  }
  int pivot = array[0];
  List<int> less = [], greater = [];
  for (int i = 1; i < array.length; ++i) {
    int value = array[i];
    if (value <= pivot) {
      less.add(value);
    } else {
      greater.add(value);
    }
  }
  return [...qsort(less), pivot, ...qsort(greater)];
}

void main() {
  List<int> array = [1, 10, 5, 2, 3];
  print(qsort(array));
}
