import 'dart:io';

void main() {
  print("Kalkulator Sederhana");

  try {
    stdout.write("Masukkan angka pertama: ");
    String? input1 = stdin.readLineSync();
    if (input1 == null || input1.isEmpty) {
      print("Input tidak boleh kosong.");
      return;
    }
    double angka1 = double.parse(input1);

    stdout.write("Masukkan operator (+, -, *, /): ");
    String? operator = stdin.readLineSync();
    if (operator == null || operator.isEmpty) {
      print("Operator tidak boleh kosong.");
      return;
    }

    stdout.write("Masukkan angka kedua: ");
    String? input2 = stdin.readLineSync();
    if (input2 == null || input2.isEmpty) {
      print("Input tidak boleh kosong.");
      return;
    }
    double angka2 = double.parse(input2);

    double hasil = 0;

    switch (operator) {
      case '+':
        hasil = angka1 + angka2;
        break;
      case '-':
        hasil = angka1 - angka2;
        break;
      case '*':
        hasil = angka1 * angka2;
        break;
      case '/':
        if (angka2 != 0) {
          hasil = angka1 / angka2;
        } else {
          print("Error: Pembagian dengan nol tidak diperbolehkan.");
          return;
        }
        break;
      default:
        print("Operator tidak valid.");
        return;
    }
 print("Hasil: $angka1 $operator $angka2 = $hasil");
  } catch (e) {
    print("Input tidak valid. Harap masukkan angka yang benar.");
  }
}
