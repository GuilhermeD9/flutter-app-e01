import 'package:flutter/material.dart';
import 'package:memobile/screens/about_crew_screen.dart';
import 'package:memobile/screens/edit_profile_screen.dart';
import 'package:memobile/screens/login_screen.dart';
import 'package:memobile/screens/forgot_password_screen.dart';
import 'package:memobile/screens/main_screen.dart';
import 'package:memobile/screens/moto_details_screen.dart';
import 'package:memobile/screens/map_screen.dart';
import 'package:memobile/screens/register_user_screen.dart';
import 'package:memobile/screens/register_vehicle_screen.dart';
import 'package:memobile/screens/about_app_screen.dart';


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
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const MainScreen(),
        '/moto-details': (context) => const MotoDetailsScreen(),
        '/register' : (context) => const RegisterUserScreen(),
        '/register-vehicle': (context) => const RegisterVehicleScreen(),
        '/edit-profile' : (context) => const EditProfileScreen(),
        '/unity-map' : (context) => const MapScreen(),
        '/about-crew' : (context) => const AboutCrewScreen(),
        '/about-app': (context) => const AboutAppScreen(),
      },
    );
  }
}
