import 'package:demo_getx/domain/controller/gestionCliente.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cliente extends StatelessWidget {
  const Cliente({super.key});

  @override
  Widget build(BuildContext context) {
    ClienteController controlador = Get.find(); //instancia para acceder a todo lo del ClienteController
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Clientes"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemCount: controlador.listaPublica.length,
        itemBuilder: (context, index){
          return Padding(padding: const EdgeInsets.all(8.0),
          child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, //para centrar el nombre y el apellido
                        crossAxisAlignment: CrossAxisAlignment.start, //para alinearlo en la parte superior del Row
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              controlador.listaPublica[index].nombre,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),//Espaciado entre nombre y apellido
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              controlador.listaPublica[index].apellido,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                controlador.listaPublica[index].foto,
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              //child: controlador.listaPublica[index].estado ? const Icon(Icons.check, color: Colors.green, size: 30.0) : const Icon(Icons.clear, color: Colors.red, size: 30.0),
                              child: Text(
                                controlador.listaPublica[index].tipoEstado(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/factura');
                            },
                            child: const Text('SELECCIONAR'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
          );
        }),
    );
  }
}