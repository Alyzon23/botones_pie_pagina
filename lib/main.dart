import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones En Pie De Pagina'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Text(
          'holi :3',
          style: TextStyle(fontSize: 24, color: Colors.grey[700]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCustomButton(context, Icons.home, "Inicio", Colors.pink[200]),
            _buildCustomButton(context, Icons.search, "Buscar", Colors.blue[200]),
            _buildCustomButton(context, Icons.favorite, "Favoritos", Colors.green[200]),
            _buildCustomButton(context, Icons.notifications, "Notificaciones", Colors.purple[200]),
            _buildCustomButton(context, Icons.person, "Perfil", Colors.orange[200]),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomButton(BuildContext context, IconData icon, String label, Color? color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: CircleBorder(),
            padding: EdgeInsets.all(16),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('holi :3'))
            );
          },
          child: Icon(icon, color: Colors.white, size: 30),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: Colors.grey[700], fontSize: 12),
        ),
      ],
    );
  }
}
