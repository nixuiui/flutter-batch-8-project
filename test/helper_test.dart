import 'package:flutter_batch_8_project/helpers/helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group("Test formatRupiah()", () {

    test("Mengembalikan format rupiah untuk nilai positif", () {
      final result = formatRupiah(100000);
      expect(result, "Rp 100.000");
    });

    test("Mengembalikan Rp 0 jika nilai null", () {
      final result = formatRupiah(null);
      expect(result, "Rp 0");
    });

    test("Mengembalikan Rp 0 jika nilai 0", () {
      final result = formatRupiah(0);
      expect(result, "Rp 0");
    });

    test("Mengembalikan (Rp 10.000) jika nilai -10000", () {
      final result = formatRupiah(-10000);
      expect(result, "(Rp 10.000)");
    });

  });
  
}