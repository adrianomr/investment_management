class DoubleUtil {
  static double fromDynamyc(value) {
    if (value is int) return value.toDouble();
    if (value is String) return double.parse(value);
    return value ?? 0;
  }
}
