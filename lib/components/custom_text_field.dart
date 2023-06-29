import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sipara/constant.dart';

class CustomTextInputField extends StatefulWidget {
  final bool enablePasswordField;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController? editingController;
  final String? Function(String?)? validator;
  bool obscureTextPassword;
  CustomTextInputField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    this.editingController,
    this.validator,
    this.enablePasswordField = false,
    this.obscureTextPassword = false,
  }) : super(key: key);
  @override
  State<CustomTextInputField> createState() => _CustomTextInputField();
}

class _CustomTextInputField extends State<CustomTextInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: accentColor),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        style: GoogleFonts.poppins(
            color: blackColor, fontWeight: FontWeight.w400, fontSize: 14),
        controller: widget.editingController,
        validator: widget.validator,
        obscureText: widget.enablePasswordField,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.poppins(
              color: greyColor, fontWeight: FontWeight.w400, fontSize: 14),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: lightGreyColor, width: 1.0),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 1.0),
              borderRadius: BorderRadius.circular(16)),
          suffixIcon: widget.enablePasswordField
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.obscureTextPassword = !widget.obscureTextPassword;
                    });
                  },
                  child: Icon(
                    widget.obscureTextPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    size: 20.0,
                    color: Colors.black,
                  ))
              : null,
        ),
      ),
    );
  }
}
