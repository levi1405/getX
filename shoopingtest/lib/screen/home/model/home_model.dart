

//clase ProducModel
class ProductModel{
  //variables

  String? name;
  String? description;
  double? price; //precio

  //pasamos al contructor es el mismo nombre de la clase
  ProductModel({

    //este es el modelo de datos utilizamos para conectar ya sea firebase, mysql etc

    this.name,
    this.description,
    this.price
  });

}