import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de tareas'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Tareas Pendientes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Tarea ${index + 1}'),
                  subtitle: Text('Descripción de la tarea ${index + 1}'),
                  trailing: IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () {
                      // Acción al completar la tarea
                      print('¡Tarea completada!');
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
                print('¡Has presionado el botón de tarea!');
              },
              child: Text('Realizar tarea'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
