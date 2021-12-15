// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
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
  final Widget? decoration;
  final bool? withAsterisk;

 const TextFieldContainer(
      {Key? key,
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
      this.decoration,
      @required this.withAsterisk})
      : super(key: key);
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
          height: 1.4,
          fontSize: 12.0,
          fontFamily: 'helves',
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        controller: controller,
        validator: validator,
        obscureText: obscure!,
        keyboardType: textInputType,
        decoration: InputDecoration(
          suffixIconConstraints:
            const   BoxConstraints(minWidth: 2, maxHeight: 20, maxWidth: 23),
          contentPadding:const  EdgeInsets.only(
            left: 12.0,
          ),
          fillColor:const  Color.fromRGBO(249, 249, 249, 1),
          filled: true,
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFd97e5f),
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:const  BorderSide(
              color: Color.fromRGBO(240, 90, 36, 1),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(26.0),
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
              color: Colors.red[400]!,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(26.0),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'helves',
            fontSize: 12.0,
            color: hintTextColor ?? const Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.w400,
          ),
          labelText: text,
          suffixIcon: /*text == 'Password' ?*/ suffixIcon ??
              const SizedBox(
                width: 3,
              ),
          labelStyle:const  TextStyle(
            height: 0.3,
            fontFamily: 'helves',
            fontSize: 12.0,
            color: Color.fromRGBO(0, 0, 0, 0.8),
            fontWeight: FontWeight.w800,
          ),
          errorStyle: const TextStyle(
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
