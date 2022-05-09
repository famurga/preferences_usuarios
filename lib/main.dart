import 'package:flutter/material.dart';
import 'package:preferences_usuarios/providers/theme_providers.dart';
import 'package:preferences_usuarios/screens/home_screen.dart';
import 'package:preferences_usuarios/screens/settings_screen.dart';
import 'package:preferences_usuarios/share_preferences.dart/preferences.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  runApp(
    MultiProvider(
      providers: [
      ChangeNotifierProvider(create: ( _ ) => ThemeProvider(isDarkMode: Preferences.isDarkmode))
    ],
    child:  MyApp(),
    
    )
  );
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Material App',
      initialRoute: HomeScreen.routerName ,
      routes: {
        HomeScreen.routerName : ( _ ) => const HomeScreen(),
        SettingsScreen.routerName : ( _ ) => const SettingsScreen()
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}