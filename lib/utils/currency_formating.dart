import 'package:intl/intl.dart';

String currencyFormatter(num amount, {int decimalCount = 0}) {
  final formatCurrent =
      NumberFormat.simpleCurrency(decimalDigits: decimalCount);
  return formatCurrent.format(amount);
}
