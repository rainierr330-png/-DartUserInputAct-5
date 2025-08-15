import 'dart:io';

double readNumber(String label) {
  while (true) {
    stdout.write("Enter $label: ");
    final line = stdin.readLineSync();
    final value = double.tryParse(line ?? "");
    if (value != null) return value;
    print("Invalid number. Please type a number (e.g., 12 or 3.5).");
  }
}

void main() {
  // Input
  print("==== Dart Mathematical Calculator ====");
  final num1 = readNumber("1st num");
  final num2 = readNumber("2nd num");
  final num3 = readNumber("3rd num");
  final num4 = readNumber("4th num");

  print("\nHere is the output:");

  // 1) 1st + 3rd + 2nd * 1st
  final res1 = num1 + num3 + (num2 * num1);
  print("1st + 3rd + 2nd * 1st = $res1");

  // 2) 2nd * 3rd / 1st (fixed missing multiplication operator)
  if (num1 == 0) {
    print("2nd * 3rd / 1st = undefined (division by zero)");
  } else {
    final res2 = num2 * (num3 / num1);
    print("2nd * 3rd / 1st = $res2");
  }

  // 3) 4th + 1st * 4th
  final res3 = num4 + (num1 * num4);
  print("4th + 1st * 4th = $res3");

  // 4) 1st / 2nd + 3rd * 4th
  // 5) 4th + 2nd / 2nd
  if (num2 == 0) {
    print("1st / 2nd + 3rd * 4th = undefined (division by zero)");
    print("4th + 2nd / 2nd = undefined (division by zero)");
  } else {
    final res4 = (num1 / num2) + (num3 * num4);
    print("1st / 2nd + 3rd * 4th = $res4");

    final res5 = num4 + (num2 / num2);
    print("4th + 2nd / 2nd = $res5");
  }
}