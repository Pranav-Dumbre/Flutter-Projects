/*int pailnD() {
    int x = 0;

    while(x<list.length) {

      int temp = Pnum[_count];
      int sum = 0;
      while(temp!=0) {

        sum = sum*10+(temp%10);
        temp~/=10;

      }

      if(sum==Pnum[_count]){
        return Pnum[_count];
         
      }

      _count++;

    }
 
 
    return -1;
  }*/

  import 'dart:math';

bool isArmstrongNumber(int number) {
  int originalNumber = number;
  int sum = 0;
  int length = number.toString().length;

  while (number > 0) {
    int digit = number % 10;
    sum += pow(digit, length).toInt();
    number ~/= 10;
  }

  return sum == originalNumber;
}

void main() {
  int num = 153;
  if (isArmstrongNumber(num)) {
    print('$num is an Armstrong number.');
  } else {
    print('$num is not an Armstrong number.');
  }
}