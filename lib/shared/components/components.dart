import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton(
        {double width = double.infinity,
        Color background = Colors.blue,
        required VoidCallback function,
        required String text}) =>
    Container(
      width: width,
      color: background,
      height: 40.0,
      child: MaterialButton(
        child: Text(
          text.toUpperCase(),
        ),
        onPressed: function,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );

Widget defaultFormField({
      required TextEditingController controller,
      required IconData prefixIcon,
      required String label,
      required String? Function(String?) validator,
      Function(String)? onSubmit,
      TextInputType textInputType=TextInputType.text,
      bool obscureType=false,
      IconData? suffixIcon,
      Function()? onSuffixIconTap
}
    ) => TextFormField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: obscureType,
      onFieldSubmitted: onSubmit,
      validator:validator,
      decoration:  InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          prefixIcon: Icon(
            prefixIcon
          ),
          suffixIcon: IconButton(
              icon: suffixIcon!=null ? Icon(suffixIcon): Icon(null),
              onPressed: onSuffixIconTap,
          ),
    )
);
