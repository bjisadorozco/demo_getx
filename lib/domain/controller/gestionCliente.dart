import 'package:demo_getx/domain/models/cliente.dart';
import 'package:get/get.dart';

class ClienteController extends GetxController{
  Rx<List<Cliente>> listaGral =  Rx<List<Cliente>>([]); //variable que se utiliza para transmitir y recibir una lista de objetos
  final cantidad = 0.obs; //contador

  @override
  void onInit(){ //inicializacion
    listaGral.value = listaClientes;
    super.onInit();
  }

  List<Cliente> get listaPublica => listaGral.value; //me permite extraer/obtener datos del controlador
  int get total => cantidad.value; //total obtiene el valor actual de cantidad.value

  counter() {
    cantidad.value++;
  }
}