import 'dart:io';

class Kalkulator {
  Future<double> hitung(double angka1, double angka2, String operator) async {
    await Future.delayed(Duration(seconds: 1)); // Simulasi proses async
    switch (operator) {
      case '+':
        return angka1 + angka2;
      case '-':
        return angka1 - angka2;
      case '*':
        return angka1 * angka2;
      case '/':
        if (angka2 != 0) {
          return angka1 / angka2;
        } else {
          throw Exception("Pembagian dengan nol tidak diperbolehkan.");
        }
      default:
        throw Exception("Operator tidak valid.");
    }
  }
}

void main() async {
  print("Kalkulator Sederhana dengan Class dan Async");
  Kalkulator kalkulator = Kalkulator();

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

    try {
      double hasil = await kalkulator.hitung(angka1, angka2, operator);
      print("Hasil: $angka1 $operator $angka2 = $hasil");
    } catch (e) {
      print(e);
    }
  } catch (e) {
    print("Input tidak valid. Harap masukkan angka yang benar.");
  }
}
