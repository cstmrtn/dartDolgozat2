import 'dart:math';
import 'dart:io';

// 1. getName és welcome függvény
String getName() {
  stdout.write('Kérlek, add meg a neved: ');
  return stdin.readLineSync()!;
}

void welcome(String name) {
  print('Hello $name');
}

// 2. getRandomNumber függvény
int getRandomNumber() {
  var random = Random();
  return random.nextInt(41) + 10; // 10 és 50 között
}

// 3. getPower függvény
double getPower(double base, double exponent) {
  if (base < 0 && exponent != exponent.toInt()) {
    throw Exception('Imaginary number');
  }
  return pow(base, exponent).toDouble();
}

// 4. isPrime függvény
bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= sqrt(number).toInt(); i++) {
    if (number % i == 0) return false;
  }
  return true;
}

//szorgalmi 1. függvény
List halfwayPoint(List y, List x, List p, List koordinata){

  return koordinata;
}

//szorgalmi 2. függvény

List matrixRotation(List elso, List masodik){
  return masodik;
}

void main() {
  // 1. feladat
  String name = getName();
  welcome(name);

  // 2. feladat
  int randomNum = getRandomNumber();
  print('Véletlenszerű szám 10 és 50 között: $randomNum');

  // 3. feladat
  try {
    double powerResult = getPower(-2, 0.5); // példa: -2 hatványa 0.5
    print('Eredmény: $powerResult');
  } catch (e) {
    print(e);
  }

  // 4. feladat
  int primeCheckNumber = -17; // példa szám
  bool isPrimeResult = isPrime(primeCheckNumber);
  print('$primeCheckNumber prím? $isPrimeResult');
}
