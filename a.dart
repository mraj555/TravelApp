import 'dart:io';

void main() {

  String? name;
  name = stdin.readLineSync() as String;

  print(name.toUpperCase());
}