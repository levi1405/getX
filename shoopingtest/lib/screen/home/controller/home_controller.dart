

//controlador con el nombre dl ontrolador
import 'package:get/get.dart';
import 'package:shoopingtest/screen/home/model/home_model.dart';

//al dat click en getcontroller en GetxController se importa tambien
class ProductController extends GetxController{


//nombre del modelo
//instanciamos
  final ProductModel productModel = ProductModel();


  //vamos a llamar 2 eventos de incremento el contador del carrito
  //var reconoce el tipo de dato por eso lo utilizamos ejemplo reconoce, string, doble o si es entero
  var count = 0.obs; // obs observa q si el dato cambia coloque ese numero en vez de cero

  //creamos ahora el de incremento  contador de carro creamos evento
  // esto es un evento
  void increment(){

    count++ ;//++ es incremento
    print(count);//imprima el count
    update();//actualize solo Getx lo trae
  }

  //creamos ahora el de disminuir contador de carro creamos evento
  // esto es un evento
  void decrement(){

    count-- ;//-- es incremento

    print(count);
    update();//actualize solo Getx lo trae
    

//para que no pase de menor a 0 el contador
     if(count <= 0){

    count.value = 0;
    }
    else{

    }
  }


 
  


}