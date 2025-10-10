import 'package:flutter/services.dart';

class CountryCodeFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // No formatting, just return the new value as-is
    return newValue;
  }
}
