import 'package:flutter/material.dart';
import 'package:flutter_application_4/styles.dart';

class textfield extends StatefulWidget {
  final String isempty;
  final String error;
  final String regexp;
  final String hint;
  final bool occurtext;
  final TextInputType keyboardtype;
  final int? maxLength;

  final Function(String?) onsaved;
  final IconData? icon;
 

  const textfield(
      {super.key,
      this.maxLength,
      this.icon,
      required this.keyboardtype,
      required this.isempty,
      required this.error,
      required this.regexp,
      required this.onsaved,
      required this.hint,
      required this.occurtext});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  final TextEditingController texts = TextEditingController();
  final TextEditingController text2 = TextEditingController();
  final TextEditingController text3 = TextEditingController();

  String? name, email, phonenumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        controller: text2,
        maxLength: widget.maxLength,
        obscureText: widget.occurtext,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return widget.isempty;
          }
          if (!RegExp(widget.regexp).hasMatch(value)) {
            return widget.error;
          }
          return null;
        },
        onSaved: widget.onsaved,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.yellow,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: widget.hint,
          prefixIcon: Icon(
            widget.icon,
            color: Colors.white,
            size: 28,
          ),
          hintStyle: bodytext,
        ),
        style: bodytext,
        keyboardType: widget.keyboardtype,
      ),
    );
  }
}
