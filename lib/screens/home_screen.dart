import 'package:flutter/material.dart';
import 'package:preferences_usuarios/share_preferences.dart/preferences.dart';
import 'package:preferences_usuarios/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const  CustomDrawer(),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkmode ${Preferences.isDarkmode}'),
            Divider(),
            Text('Genero ${Preferences.gender}'),
            Divider(),
            Text('Nombre de usuario ${Preferences.name}'),
            Divider(),
          ],
        ));
  }
}
