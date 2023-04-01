import 'package:flutter/material.dart';

class Cliente{
  late String nombre;
  late String apellido;
  late int edad;
  late bool estado;
  late String foto;

  Cliente(
    {required this.nombre,
    required this.apellido,
    required this.edad,
    required this.estado,
    required this.foto});

    factory Cliente.crear(Map <String, dynamic> jsonMap){
      return Cliente(
        nombre: jsonMap['nombre'],
        apellido: jsonMap['apellido'],
        edad: jsonMap['edad'],
        estado: jsonMap['estado'],
        foto: jsonMap['foto'],
      );
    }

  tipoEstado(){
    if(estado == true){
      return 'Activo';
    }else{
      return 'Inactivo';
    }
  }
}

Map<String, dynamic> cliente1 = {
  'nombre': 'Brayan',
  'apellido': 'Orozco',
  'edad': 21,
  'estado': true,
  'foto': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyD3SI8Qdekp6twYtnVVcpKfHw7WVQGy9Yfd32EiXPZI30cEgXJ-XhquB0ObTnutlwQrM&usqp=CAU',
};

Map<String, dynamic> cliente2 = {
  'nombre': 'Alexander',
  'apellido': 'Vacca',
  'edad': 25,
  'estado': false,
  'foto': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyD3SI8Qdekp6twYtnVVcpKfHw7WVQGy9Yfd32EiXPZI30cEgXJ-XhquB0ObTnutlwQrM&usqp=CAU',
};

Map<String, dynamic> cliente3 = {
  'nombre': 'Daniel',
  'apellido': 'España',
  'edad': 20,
  'estado': true,
  'foto': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyD3SI8Qdekp6twYtnVVcpKfHw7WVQGy9Yfd32EiXPZI30cEgXJ-XhquB0ObTnutlwQrM&usqp=CAU',
};

Map<String, dynamic> cliente4 = {
  'nombre': 'Jhon',
  'apellido': 'Santana',
  'edad': 23,
  'estado': false,
  'foto': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyD3SI8Qdekp6twYtnVVcpKfHw7WVQGy9Yfd32EiXPZI30cEgXJ-XhquB0ObTnutlwQrM&usqp=CAU',
};

List<Cliente> listaClientes = [
  Cliente.crear(cliente1),
  Cliente.crear(cliente2),
  Cliente.crear(cliente3),
  Cliente.crear(cliente4)
];