import 'package:flutter/material.dart';
import 'ingreso_produccion_screen.dart';

void main() {
  runApp(BustrockApp());
}

class BustrockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BRUSTOCK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenuScreen(),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BRUSTOCK 📦'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Menu Principal',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            MenuButton(
              icon: Icons.add,
              label: 'Ingreso de referencia',
              options: [
                {'text': 'Ingreso de Producción', 'screen': IngresoProduccionScreen()},
                {'text': 'Proceso de Producción', 'screen': ProcesoProduccionScreen()},
                {'text': 'Envío a Bodega', 'screen': EnvioBodegaScreen()},
                {'text': 'Arreglos', 'screen': ArreglosScreen()},
                {'text': 'Saldos', 'screen': SaldosScreen()},
              ],
            ),
            MenuButton(
              icon: Icons.inventory,
              label: 'Inventario',
              options: [
                {'text': 'Solicitudes de Ingreso', 'screen': SolicitudesIngresoScreen()},
                {'text': 'Inventario Disponible', 'screen': InventarioDisponibleScreen()},
              ],
            ),
            MenuButton(
              icon: Icons.person,
              label: 'Cliente',
              options: [
                {'text': 'Crear Cliente', 'screen': CrearClienteScreen()},
                {'text': 'Ver Perfil', 'screen': VerPerfilClienteScreen()},
              ],
            ),
            MenuButton(
              icon: Icons.receipt_long,
              label: 'Órdenes de Pedido',
              options: [
                {'text': 'Crear Pedido', 'screen': CrearPedidoScreen()},
                {'text': 'Ver Perfil', 'screen': VerPerfilPedidoScreen()},
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final List<Map<String, dynamic>> options;

  MenuButton({required this.icon, required this.label, required this.options});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      trailing: PopupMenuButton<String>(
        onSelected: (value) {
          final selectedOption = options.firstWhere((option) => option['text'] == value);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => selectedOption['screen']),
          );
        },
        itemBuilder: (BuildContext context) {
          return options.map((option) {
            return PopupMenuItem<String>(
              value: option['text'],
              child: Row(
                children: [
                  Icon(Icons.arrow_right, color: Colors.blue),
                  SizedBox(width: 10),
                  Text(option['text']),
                ],
              ),
            );
          }).toList();
        },
        child: Icon(Icons.arrow_drop_down),
      ),
    );
  }
}

// Pantallas para cada opción
class IngresoProduccionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ingreso de Producción')),
      body: Center(child: Text('Contenido para Ingreso de Producción')),
    );
  }
}

class ProcesoProduccionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Proceso de Producción')),
      body: Center(child: Text('Contenido para Proceso de Producción')),
    );
  }
}

class EnvioBodegaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Envío a Bodega')),
      body: Center(child: Text('Contenido para Envío a Bodega')),
    );
  }
}

class ArreglosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arreglos')),
      body: Center(child: Text('Contenido para Arreglos')),
    );
  }
}

class SaldosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saldos')),
      body: Center(child: Text('Contenido para Saldos')),
    );
  }
}

class SolicitudesIngresoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Solicitudes de Ingreso')),
      body: Center(child: Text('Contenido para Solicitudes de Ingreso')),
    );
  }
}

class InventarioDisponibleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inventario Disponible')),
      body: Center(child: Text('Contenido para Inventario Disponible')),
    );
  }
}

class CrearClienteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crear Cliente')),
      body: Center(child: Text('Contenido para Crear Cliente')),
    );
  }
}

class VerPerfilClienteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ver Perfil Cliente')),
      body: Center(child: Text('Contenido para Ver Perfil Cliente')),
    );
  }
}

class CrearPedidoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crear Pedido')),
      body: Center(child: Text('Contenido para Crear Pedido')),
    );
  }
}

class VerPerfilPedidoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ver Perfil Pedido')),
      body: Center(child: Text('Contenido para Ver Perfil Pedido')),
    );
  }
}
