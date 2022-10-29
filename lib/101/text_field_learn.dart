import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              _mailField(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: _passwordField(),
              ),
            ]),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  TextField _mailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      decoration: _mailDecoration(),
    );
  }

  TextField _passwordField() {
    return TextField(
      maxLength: 24,
      buildCounter: (BuildContext context,
          {int? currentLength, bool? isFocused, int? maxLength}) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                key: key,
                duration: const Duration(seconds: 1),
                height: 10,
                width: 12.0 * (currentLength ?? 0.0),
                color: pageColors().colorIndicator,
              ),
            ],
          ),
        );
      },
      decoration: _passwordDecoration(),
      onSubmitted: (value) {},
      obscureText: _obscureText,
    );
  }

  InputDecoration _mailDecoration() {
    return InputDecoration(
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: pageColors().colorGreen, width: 2)),
      prefixIcon: Icon(
        Icons.mail,
        color: pageColors().colorGreen,
      ),
      border: const OutlineInputBorder(),
      hintText: 'Mail',
    );
  }

  InputDecoration _passwordDecoration() {
    return InputDecoration(
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: pageColors().colorGreen, width: 2)),
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        child: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
          color: pageColors().colorGreen,
        ),
      ),
      prefixIcon: Icon(Icons.lock, color: pageColors().colorGreen),
      border: const OutlineInputBorder(),
      hintText: 'Password',
    );
  }
}

// ignore: camel_case_types
class pageColors {
  final colorGreen = const Color.fromARGB(255, 48, 92, 49);
  final colorIndicator = const Color.fromARGB(255, 183, 149, 238);
}
