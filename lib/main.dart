import 'package:flutter/material.dart';

// Definir la clase Plato
class Plato {
  final String nombre;
  final double precio;
  final String imagen;

  Plato({required this.nombre, required this.precio, required this.imagen});
}

// Lista de platos
List <Plato> listaDePlatos = [
  Plato(
    nombre: 'Hamburguesa con queso',
    precio: 8.99,
    imagen: '../hamburguesa.jpg',
  ),
  Plato(
    nombre: 'Pizza Pepperoni',
    precio: 10.99,
    imagen: '../pizza.jpg',
  ),
  Plato(
    nombre: 'Ensalada César',
    precio: 7.99,
    imagen: '../ensalada.jpg',
  ),
  Plato(
    nombre: 'Sándwich de pollo',
    precio: 9.49,
    imagen: '../sandwich.jpg',
  ),
  Plato(
    nombre: 'Pasta Alfredo',
    precio: 11.99,
    imagen: '../pasta.jpg',
  ),
  Plato(
    nombre: 'Sushi variado',
    precio: 13.99,
    imagen: '../sushi.jpg',
  ),
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menú'),
        ),
        body: ListView.builder(
          itemCount: listaDePlatos.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                listaDePlatos[index].imagen,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(listaDePlatos[index].nombre),
              subtitle: Text('\$${listaDePlatos[index].precio.toStringAsFixed(2)}'),
            );
          },
        ),
      ),
    );
  }
}