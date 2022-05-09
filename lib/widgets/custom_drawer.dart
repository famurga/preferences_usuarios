import 'package:flutter/material.dart';
import 'package:preferences_usuarios/screens/screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeaderCustom(),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('home'),
            onTap: (){
                       Navigator.pop(context);
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined),
            title: const Text('people'),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            },
          ),
        ],
      ),
    );
  }
}

class DrawerHeaderCustom extends StatelessWidget {
  const DrawerHeaderCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/menu-img.jpg'),
        fit: BoxFit.cover
        )
      ),
      );
  }
}