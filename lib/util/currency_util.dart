import 'package:intl/intl.dart';

class CurrencyUtil {
  static String doubleToCurrency(double number) {
    return NumberFormat.currency(symbol: 'R\$ ', decimalDigits: 2)
        .format(number);
  }
}
