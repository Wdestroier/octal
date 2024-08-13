import 'package:octal/octal.dart';

main() {
  // Convert octal numbers back to decimal and print the result.
  print('493 -> ${octal(755)}'); // 493 -> 493
  print('420 -> ${octal(644)}'); // 420 -> 420

  // Common Linux file permissions in octal.
  print('755 -> ${decimalToSymbolic(octal(755))}'); // 755 -> rwxr-xr-x
  print('644 -> ${decimalToSymbolic(octal(644))}'); // 644 -> rw-r--r--
  print('600 -> ${decimalToSymbolic(octal(600))}'); // 600 -> rw-------
  print('777 -> ${decimalToSymbolic(octal(777))}'); // 777 -> rwxrwxrwx
  print('700 -> ${decimalToSymbolic(octal(700))}'); // 700 -> rwx------
}

String decimalToSymbolic(int decimalNumber) {
  final permissions = ['---', '--x', '-w-', '-wx', 'r--', 'r-x', 'rw-', 'rwx'];

  final user = (decimalNumber ~/ 64) % 8;
  final group = (decimalNumber ~/ 8) % 8;
  final others = decimalNumber % 8;

  return '${permissions[user]}${permissions[group]}${permissions[others]}';
}
