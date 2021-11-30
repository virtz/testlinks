import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final bool? obscure;
  final String? text;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final Color? cursorColor;
  final bool? enabled;
  final String? initialValue;
  final hintText;
  final Color? hintTextColor;
  final Function(String)? locationCallback;
  final TextCapitalization? textCapitalization;

  InputField(
    String s, {
    Key? key,
    this.text,
    this.controller,
    this.validator,
    this.obscure = false,
    this.suffixIcon,
    this.textInputType,
    this.cursorColor,
    this.enabled,
    this.initialValue,
    this.hintText,
    this.hintTextColor,
    this.locationCallback,
    this.textCapitalization,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: text == 'Details' ? 0.0 : 5.0,
      ),
      child: TextFormField(
        maxLines: text == 'Message' || text == 'Details' ? 3 : 1,
        initialValue: initialValue,
        enabled: enabled,
        textCapitalization: textCapitalization ?? TextCapitalization.words,
        cursorColor: cursorColor ?? const Color(0xFFd97e5f),
        style: const TextStyle(
          height: 1.6,
          fontSize: 14.0,
          fontFamily: 'SofiaPro',
          color: Colors.black54,
          fontWeight: FontWeight.w300,
        ),
        controller: controller,
        validator: validator,
        obscureText: obscure!,
        keyboardType: textInputType,
        decoration: InputDecoration(
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFd97e5f),
              width: 1.5,
            ),
          ),
          focusedBorder:const  OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(240, 90, 36, 1),
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[400]!,
              width: 0.15,
            ),
            borderRadius: BorderRadius.circular(26.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[400]!,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(26.0),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'SofiaPro',
            fontSize: 16.0,
            color: hintTextColor ??const Color.fromRGBO(0, 0, 0, 0.4),
            fontWeight: FontWeight.w500,
          ),
          labelText: text,
          suffixIcon: text == 'Password' ? suffixIcon :const  SizedBox(),
          labelStyle: const TextStyle(
            height: 0.3,
            fontFamily: 'SofiaPro',
            fontSize: 12.0,
            color: Color.fromRGBO(0, 0, 0, 0.4),
            fontWeight: FontWeight.w800,
          ),
          errorStyle:const TextStyle(
            fontFamily: 'Opensans',
            fontSize: 11.0,
          ),
        ),
        onChanged: (value) {
          locationCallback!(value);
        },
      ),
    );
  }
}
