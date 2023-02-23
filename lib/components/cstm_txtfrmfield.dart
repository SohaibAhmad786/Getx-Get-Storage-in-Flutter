import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    this.preIcon,
    this.txt,
    this.icon,
    required this.flag,
    required this.controller,
  }) : super(key: key);
  final String? txt;
  final Widget? icon;
  final Widget? preIcon;
  final bool flag;
  final TextEditingController controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10, bottom: 10, right: 36.38, left: 36.38),
      child: Container(
        height: 61,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border(
            bottom: BorderSide.none,
            left: BorderSide.none,
            right: BorderSide.none,
            top: BorderSide.none,
          ),
        ),
        child: TextFormField(
          controller: widget.controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          onChanged: ((value) {
            setState(() {
                
            });
          }),
          obscureText: widget.flag,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )),
            fillColor: const Color(0xffF2F2F2),
            filled: true,
            prefixIcon: widget.preIcon,
            suffixIcon: widget.icon,
            labelText: widget.txt,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(
                color: Color(0xff2A4385),
              ),
            ),
            labelStyle: const TextStyle(
              fontSize: 16,
              color: Color(0xff2A4385),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
