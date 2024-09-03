import 'package:flutter/material.dart';
class CustomForm extends StatelessWidget {
  final TextInputType? keyboard;
  final String? text;
  final Icon? icon;
  final Color? color;
  final String? Function(String?)? validator; // Validator function
  final bool txt;
  final TextEditingController? controller;


  CustomForm({
    Key? key,
    required this.text,
    this.keyboard,
    this.icon,
    this.validator, // Validator function passed to TextFormField
    required this.color,
    this.txt = false,
    required this.controller,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(minHeight: 45.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 45,
                  height: 40,
                  child: icon,
                ),
              ),
            Expanded(
              child: Center(
                child: TextFormField(
                  keyboardType: keyboard,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: text,
                  ),
                  validator: validator, // Assign the validator function
                  obscureText: txt,
                  controller: controller,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
