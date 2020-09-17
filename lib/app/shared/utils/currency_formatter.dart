class CurrencyFormatter {
  static String format(double value) {
    final nullSafetyValue = value ?? 0;
    final truncatedValue = nullSafetyValue.truncateToDouble();
    final formattedValue = nullSafetyValue.toStringAsFixed(
      truncatedValue == nullSafetyValue ? 0 : 2,
    );

    return '\$$formattedValue';
  }
}
