import 'package:firebase_core/firebase_core.dart';
import 'package:personal_task_manager/widgets/appdrawer.dart'; 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_task_manager/config/firebase_options.dart';
import 'package:personal_task_manager/providers/task_provider.dart';
import 'package:personal_task_manager/providers/theme_provider.dart';
import 'package:personal_task_manager/screens/splash_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseConfig.options);

  // Initialize Firebase
  await Firebase.initializeApp(options: FirebaseConfig.options);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TaskProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
            title: 'Personal Task Manager',
            theme: AppTheme.lightTheme,
     
          home: const SplashScreen(),

        );
      }
  }


class AppTheme {
  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Color.fromARGB(255, 74, 20, 140),
      scaffoldBackgroundColor: Colors.white,
      textTheme: GoogleFonts.dmSansTextTheme().apply(bodyColor: Colors.black),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 74, 20, 140),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 74, 20, 140),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 74, 20, 140),
        foregroundColor: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color.fromARGB(255, 74, 20, 140)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color.fromARGB(255, 74, 20, 140), width: 2),
        ),
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      dividerColor: Colors.grey[300],
    );
  }

}
