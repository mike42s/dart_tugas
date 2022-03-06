import 'dart:io';

//FUNCTION
int fungsi_pohon(int input) {
  int counter = 0;
  for (int i = 1; i <= input; i++) {
    if (input % 2 != 0) {
      if (i < (input / 2).round()) {
        for (int k = 0; k < (input - i - 1) / 2; k++) {
          stdout.write("*");
        }
        for (int j = 0; j < i; j++) {
          stdout.write((i).toString());
        }
        for (int k = 0; k < (input - i - 1) / 2; k++) {
          stdout.write("*");
        }
      } else {
        for (int k = input - i - 1; k >= 0; k--) {
          stdout.write("*");
        }
        for (int j = input - i; j >= 0; j--) {
          stdout.write(i);
        }
        for (int k = input - i - 1; k >= 0; k--) {
          stdout.write("*");
        }
      }
    }
    stdout.write("\n");
  }

  // if (input % 2 != 0) {
  //     if (i < input / 2) {
  //       for (int k = 0; k <= (input - i - 1) / 2; k++) {
  //         stdout.write("*");
  //       }
  //       for (int j = -1; j < i; j++) {
  //         stdout.write((i + 1).toString());
  //       }
  //       for (int k = 1; k <= (input - i - 1) / 2; k++) {
  //         stdout.write("*");
  //       }
  //     } else {
  //       for (int j = input - i; j > 0; j--) {
  //         stdout.write(i + 1);
  //         // stdout.write("*");
  //       }
  //     }
  //   }
  return 0;
}

void main(List<String> arguments) {
  stdout.write("Masukkan Kata : ");
  String? Input = stdin.readLineSync();
  int angka = int.parse(Input!);
  print(angka);
  fungsi_pohon(angka);
}
