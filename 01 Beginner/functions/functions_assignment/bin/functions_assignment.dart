void main(List<String> arguments) {
/* Ask the user for a maximum number, use a loop to print each number on the screen from 1 to the number they provided. At the half way point, print out "half way there". Spit these tasks into functions. */
  printToMax(1, 50);
}

int totalCountFn(int num, int max) {
  int count = 0;
  do {
    count++;
    num++;
  } while (num <= max);
  return count;
}

void printToMax(int num, int max) {
  int count = 0;
  int totalCount = totalCountFn(num, max);
  print('total count = $totalCount');
  print('count / 2 = ${(totalCount / 2).round()}');
  do {
    print(num);
    count++;
    num++;
    // print('current count = $count');
    if (count == (totalCount / 2).round()) {
      print('You are half way there');
    }
  } while (num <= max);
}
