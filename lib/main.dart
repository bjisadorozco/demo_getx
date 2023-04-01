import 'package:demo_getx/domain/controller/gestionCliente.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'iu/app.dart';

void main() {
  Get.put(ClienteController()); //para inicializar el controlador
  runApp(const App());
}
