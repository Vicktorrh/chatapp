import 'package:flutter/material.dart';
import 'package:freshproject/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Provider.of<ThemeProvider>(context).theme == ThemeMode.dark
          ? true
          : false,
      onChanged: (value) {
        Provider.of<ThemeProvider>(context, listen: false).changeTheme(value);
      },
    );
  }
}
