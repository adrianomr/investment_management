class IntUtil {
  static int fromDynamyc(value) {
    if (value is double) return value.toInt();
    if (value is String) return int.parse(value);
    return value;
  }
}
