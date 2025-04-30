import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Management System'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildMenuCard(
                    context,
                    'Dashboard',
                    Icons.dashboard,
                    Colors.blue,
                    () => Navigator.pushNamed(context, '/dashboard'),
                  ),
                  _buildMenuCard(
                    context,
                    'Add',
                    Icons.add,
                    Colors.red,
                    () => Navigator.pushNamed(context, '/add'),
                  ),
                  _buildMenuCard(
                    context,
                    'Update',
                    Icons.update,
                    Colors.green,
                    () => Navigator.pushNamed(context, '/update'),
                  ),
                  _buildMenuCard(
                    context,
                    'Logout',
                    Icons.logout,
                    Colors.blueGrey,
                    () => Navigator.pushReplacementNamed(context, '/login'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            color: Colors.blue.withOpacity(0.1),
            width: double.infinity,
            child: const Column(
              children: [
                Text(
                  'Jefri Wahyudiana Putra',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '613230013',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon,
      Color color, VoidCallback onTap) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: color,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
