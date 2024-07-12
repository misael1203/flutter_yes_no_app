import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      filled: true,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      suffixIcon: IconButton(
        icon: Icon(Icons.send_outlined),
        onPressed: () {},
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print(value);
      },
    );
  }
}
