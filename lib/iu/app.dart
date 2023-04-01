import 'package:demo_getx/iu/pages/cliente.dart';
import 'package:demo_getx/iu/pages/factura.dart';
import 'package:demo_getx/iu/pages/lista.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Getx',
      theme: ThemeData(primarySwatch: Colors.red, primaryColor: Colors.indigo),
      home: const Cliente(), //inicia con la vista de Cliente
      routes: {
        "/cliente":(context) => const Cliente(),
        "/factura":(context) => const Factura(),
        "/articulos":(context) => const ListaArticulos(),
      },
    );
  }
}