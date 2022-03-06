import 'dart:convert';
import 'dart:io';

//FUNCTION
int fungsi_pohon(int input) {
  int counter = 0;

  int c1 = 0, c2 = 0;
  int b1 = 0, b2 = 0;
  if (input > 9) {
    b1 = 9;
    c2 = 9;
    b2 = 1;
    c1 = 1;
  } else {
    b1 = input;
    c2 = input;
    b2 = 1;
    c1 = 1;
  }
  //  for (int k = 0; k < ((input - i - 1) / 2)
  int mid = (input / 2).truncate();
  for (int i = 1; i <= input; i++) {
    if (input % 2 != 0) {
      if (i < (input / 2).round()) {
        for (int k = mid; k >= i; k--) {
          stdout.write("*");
        }
        for (int j = 0; j < i * 2 - 1; j++) {
          if (i % 2 == 0) {
            if (j % 2 == 0) {
              stdout.write((c1).toString());
            } else {
              stdout.write(" ");
            }
          } else {
            if (j % 2 == 0 || i == 1) {
              stdout.write((c1).toString());
            } else {
              stdout.write(" ");
            }
          }
        }
        for (int k = mid; k >= i; k--) {
          stdout.write("*");
        }
      } else if ((input + 1) / 2 == i) {
        for (int j = 0; j < input; j++) {
          if (j % 2 == 0) {
            stdout.write((c1).toString());
          } else {
            stdout.write(" ");
          }
        }
      } else {
        for (int k = i - mid; k > 1; k--) {
          stdout.write("*");
        }
        for (int j = (input + 1 - i) * 2 - 1; j > 0; j--) {
          if (i % 2 == 0) {
            if (j % 2 == 1) {
              stdout.write((c1).toString());
            } else {
              stdout.write(" ");
            }
          } else {
            if (j % 2 == 1) {
              stdout.write((c1).toString());
            } else {
              stdout.write(" ");
            }
          }
        }
        for (int k = i - mid; k > 1; k--) {
          stdout.write("*");
        }
      }
      c1++;
      if (c1 > b1) {
        c1 = b2;
      }
      stdout.write("\n");
    }
  }
  return 0;
}

int fungsi_pohon2(int input) {
  int a = input;
  int b = input * 2;
  int counter = 0;
  int c1 = 0, c2 = 0;
  int b1 = 0, b2 = 0;
  if (input > 9) {
    b1 = 9;
    c2 = 9;
    b2 = 1;
    c1 = 1;
  } else {
    b1 = input;
    c2 = input;
    b2 = 1;
    c1 = 1;
  }
  for (int i = 1; i <= a; i++) {
    for (int j = a; j > 0; j--) {
      if (j >= i) {
        stdout.write("$c1");
        c1++;
        if (c1 > b1) {
          c1 = b2;
        }
      } else {
        stdout.write(" ");
      }
    }
    for (int j = 1; j <= a; j++) {
      if (j >= i) {
        stdout.write("$c2");
        c2--;
        if (c2 < b2) {
          c2 = b1;
        }
      } else {
        stdout.write(" ");
      }
    }
    stdout.write("\n");
  }
  return input;
}

// for (int j = 0; j < a; j++)
//int fungsipohon2(int input) {}
void main(List<String> arguments) {
  stdout.write("Masukkan Kata : ");
  String? Input = stdin.readLineSync();
  int angka = int.parse(Input!);
  print(angka);
  fungsi_pohon(angka);
  //fungsi_pohon2(angka);
}
