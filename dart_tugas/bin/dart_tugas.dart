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
        for (int j = 0; j < i * 2 - 1; j++) {
          if (i % 2 == 0) {
            if (j % 2 == 0) {
              stdout.write((i).toString());
            } else {
              stdout.write(" ");
            }
          } else {
            if (j % 2 == 1 || i == 1) {
              stdout.write((i).toString());
            } else {
              stdout.write(" ");
            }
          }
        }
        for (int k = 0; k < (input - i - 1) / 2; k++) {
          stdout.write("*");
        }
      } else if ((input + 1) / 2 == i) {
        for (int j = 0; j < input; j++) {
          if (j % 2 == 0) {
            stdout.write((i).toString());
          } else {
            stdout.write(" ");
          }
        }
      } else {
        for (int k = input - i - 1; k <= 0; k++) {
          stdout.write("*");
        }
        for (int j = (input + 1 - i) * 2 - 1; j > 0; j--) {
          if (i % 2 == 0) {
            if (j % 2 == 0) {
              stdout.write((i).toString());
            } else {
              stdout.write(" ");
            }
          } else {
            if (j % 2 == 1) {
              stdout.write((i).toString());
            } else {
              stdout.write(" ");
            }
          }
        }
        for (int k = (input - i - 1); k <= 0; k++) {
          stdout.write("*");
        }
      }

      stdout.write("\n");
    }
  }
  return 0;
}

//int fungsipohon2(int input) {}
void main(List<String> arguments) {
  stdout.write("Masukkan Kata : ");
  String? Input = stdin.readLineSync();
  int angka = int.parse(Input!);
  print(angka);
  fungsi_pohon(angka);
}
