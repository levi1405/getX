

//statelesw crea esctructura
// importar click en StatelessWidget

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoopingtest/screen/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(

      init: ProductController(),

      //builder vienen los controladores usamos (_) para evitar escribir contronller
      builder: (_) => //regresa el controlador
      
      // este recibe el controlador
       Scaffold( //envolvemos scaffold en getbuilder
        appBar: AppBar(
    
          //barra blanco
          backgroundColor: Color.fromARGB(192, 249, 243, 252),
    
          //elevacion
          elevation: 2,
    
          //iconos
          leading: Icon(Icons.category, color: const Color.fromARGB(167, 0, 0, 0),),
          title: Text('Shopping', style: TextStyle(color: Color.fromARGB(176, 39, 0, 43),),), //color letra
          centerTitle: true,
    
          //poner carrito y lo encerramos en un padding
          actions: [
            
            Stack(
    
                //envolvemos padding en otro widget stack
              children: [ 
    
             
                Positioned(
                  child: Padding(
                  padding: const EdgeInsets.only(right:20, top: 15 ), //right se mueve a la derecha
                  child: Center(child: Icon(Icons.shopping_cart_checkout, color: Color.fromARGB(235, 0, 0, 0), size: 25,)),
                            ),
                ),
    
              
              Positioned(
                right: 10, //derecha
                top: 15, //para arriba
    
                //simula el contador del carro
                //envolvemos container en Positionated
                child: Container(
                  width: 17,
                  height: 17,
                  
                  //hacer redondo
                  decoration: BoxDecoration(
                     color: Color.fromARGB(255, 108, 0, 165),
                     borderRadius: BorderRadius.circular(100),
                  ),
    
                  //centra el contador del carrito
                  //Text se encerro en un center
                  child: Obx(()=>  Center(child: Text(_.count.toString()//llama al contador osea el total del contador carrito
                  )
                  ),)

                  
                ),
              )
    
    
              ],
            ),
          ],
        ),
    

        //agregamos el cuerpo
        body: Container(
          //envolvemos en container al column
          padding: EdgeInsets.all(20), // ordena en margen y se bea bien
          child: Column(
            children: [

              Container(
                width: 150,
                
                padding: EdgeInsets.symmetric(horizontal: 10),

                decoration: BoxDecoration(
                  color: Color.fromARGB(6, 19, 0, 2),//contendedor de color fondo
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(128, 0, 0, 0),
                      offset: Offset(4, 5),
                      blurRadius: 13 ,//sombra
                    ),


                    
                  ],//sombra
                  borderRadius:BorderRadius.circular(20)

                ),


//  datos del contenedor de imagen y descripsiones
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,

                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage('asets/zapato.jpg',//ruta de img
                        ),

                        fit: BoxFit.fill  )
                      ),
                    ),


                    //agregar texto
                    Text('Zapato Nike',style: TextStyle(fontSize: 15, color: Colors.white),),

                    //agregar texto
                    Text('Para uso personal',style: TextStyle(fontSize: 15, color: Colors.white),),

                    SizedBox(height: 10,), //da espacio de linea en precio
                    Align(
                      alignment: Alignment.center,
                      child: Text('\$ 20.0',
                      style: TextStyle(fontSize: 15, color: Colors.white, fontWeight:FontWeight.bold),),
                    ),


                  ],
                ),
              ),
              //            Text(_.productModel.name.toString()),//llama al modelo de datos pero no tenemos base de datos por eso aparece nulo
              
              
              //agregamos un boton
              ElevatedButton(onPressed: (){
        
        
        // se llaman los controladores
                _.increment(); 
              }, child: Text('+') ),//recibe widget)
              
              
              
              ElevatedButton(onPressed: (){
                _.decrement();
        
              }, child: Text('-') )//recibe widget)
            ],
          ),
        ),

        

        
    
    
      ),
    );
  }
}