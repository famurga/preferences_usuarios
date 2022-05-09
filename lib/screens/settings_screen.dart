import 'package:flutter/material.dart';
import 'package:preferences_usuarios/providers/theme_providers.dart';
import 'package:preferences_usuarios/share_preferences.dart/preferences.dart';
import 'package:preferences_usuarios/widgets/custom_drawer.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

/*   bool isDarkMode = false;
  int gender = 1;
  String name = 'Pedro'; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajustes')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
             const Text(
                'Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                  value: Preferences.isDarkmode,
                  title: const Text('DarkMode'),
                  onChanged: (value) {
                    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
                    value ? themeProvider.setDarkMode() : themeProvider.setLigthMode();
                    setState(() {
                      Preferences.isDarkmode = value;
                    });
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: Preferences.gender,
                  title: const Text('Masculino'),
                  onChanged: (value) {
                    setState(() {
                      Preferences.gender = value ?? 1;
                    });
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 2,
                  groupValue: Preferences.gender,
                  title: const Text('Femenino'),
                  onChanged: (value) {
                    setState(() {
                      Preferences.gender = value ?? 2;
                    });
                  }),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: (value) {
                    setState(() {
                      Preferences.name = value;
                    });
                  },
                  decoration: const InputDecoration(
                      labelText: 'Nombre', helperText: 'Nombre del usuario'),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
