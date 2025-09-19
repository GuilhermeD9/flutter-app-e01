import 'package:flutter/material.dart';
import 'package:memobile/screens/edit_profile_screen.dart';
import 'package:memobile/screens/login_screen.dart';
import 'package:memobile/screens/main_screen.dart';
import 'package:memobile/screens/register_user_screen.dart';
import 'package:memobile/screens/register_vehicle_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlugaMe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange, primary: Colors.orange),
        useMaterial3: true,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.orange,
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange.shade700, width: 2.0),
          ),
        )
      ),

      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const MainScreen(),
        '/register' : (context) => const RegisterUserScreen(),
        '/register-vehicle': (context) => const RegisterVehicleScreen(),
        '/edit-profile' : (context) => const EditProfileScreen()
      },
    );
  }
}
