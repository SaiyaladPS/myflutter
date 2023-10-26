import 'package:flutter/material.dart';

class TextFromFiladDing extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData icons;
  final IconData icons_1;
  final IconData? icons_2;
  final bool function;
  final TextInputType keyboard;

  TextFromFiladDing(
      {required this.controller,
      required this.labelText,
      required this.icons,
      required this.function,
      required this.icons_1,
      required this.keyboard,
      this.icons_2});

  @override
  State<TextFromFiladDing> createState() => _TextFromFiladPassState();
}

class _TextFromFiladPassState extends State<TextFromFiladDing> {
  bool _isPasswordVisible = false;
  bool _isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboard,
      textAlign: TextAlign.center,
      obscureText: widget.function ? _isPasswordVisible : false,
      onChanged: (val) {
        if (val.isEmpty) {
          setState(() {
            _isEmpty = false;
          });
        } else {
          setState(() {
            _isEmpty = true;
          });
        }
      },
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: IconButton(
            onPressed: () {
              widget.function
                  ? setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    })
                  : setState(() {
                      widget.controller.clear();
                      _isEmpty = false;
                    });
            },
            icon: _isEmpty
                ? _isPasswordVisible
                    ? Icon(widget.icons_2)
                    : Icon(widget.icons_1)
                : const Text("")),
        labelStyle: const TextStyle(color: Color.fromARGB(221, 82, 4, 228)),
        errorMaxLines: 12,
        floatingLabelStyle:
            const TextStyle(color: Color.fromARGB(221, 4, 228, 228)),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Color.fromARGB(221, 82, 4, 228))),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            borderSide: BorderSide(color: Color.fromARGB(221, 4, 228, 209))),
        prefixIcon: InkWell(child: Icon(widget.icons)),
      ),
    );
  }
}
