import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'country_code.dart'; // your formatter
import '../../../../utils/constants/font.dart';

class PhoneTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;
  final TextInputType keyboardType;
  final int? maxLength;
  final String? prefixText;

  const PhoneTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.isObscure,
    this.keyboardType = TextInputType.phone,
    this.maxLength,
    this.prefixText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        obscureText: isObscure,
        keyboardType: keyboardType,
        maxLength: maxLength,
        inputFormatters: [CountryCodeFormatter()],
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: Tfonts.plusJakartaSansFont,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade50,
          counterText: "",
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 14,
          ),
          prefixText: prefixText,
          prefixStyle: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: Tfonts.plusJakartaSansFont,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontFamily: Tfonts.plusJakartaSansFont,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: theme.primaryColor, // highlight with brand color
              width: 1.6,
            ),
          ),
        ),
      ),
    );
  }
}
