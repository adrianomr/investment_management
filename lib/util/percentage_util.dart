import 'package:intl/intl.dart';

class PercentageUtil {
  static String doubleToPercentage(double number) {
    return NumberFormat.decimalPercentPattern(decimalDigits: 2)
        .format(number);
  }
}
