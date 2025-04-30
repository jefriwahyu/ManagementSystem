import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/add_screen.dart';
import 'screens/update_screen.dart';
import 'models/sales_data.dart';

void main() {
  runApp(const ManagementSystemApp());
}

class ManagementSystemApp extends StatelessWidget {
  const ManagementSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/add': (context) => const AddScreen(),
        '/update': (context) => const UpdateScreen(),
      },
    );
  }
}
