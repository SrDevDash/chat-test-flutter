import 'package:flutter/material.dart';

class MessageFieldForm extends StatelessWidget {


  const MessageFieldForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _color = Theme.of(context).colorScheme;

    final _outLineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final _inputDecolration = InputDecoration(
      enabledBorder: _outLineInputBorder,
      focusedBorder: _outLineInputBorder,
      filled: true,
      suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.send)));

    return TextFormField(
      decoration: _inputDecolration,
      onFieldSubmitted: (value) {
        print('value $value');
      },
    );
  }
}