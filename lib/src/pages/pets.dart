import 'package:flutter/material.dart';

class PetsPage extends StatelessWidget {

  final _estilo = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16);
  final _estiloVerde = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16, color: Color(0XFF20CDA3));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mascotas'),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0XFF20CDA3),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                _perfilPet(),
                _perfilPet(),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
        backgroundColor: Color(0XFF20CDA3),
      ),
    );
  }

  Widget _perfilPet(){
    return  Card(
      margin: EdgeInsets.all(14),
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy1E-xQ8FYgoxKCp55IwcMWEfEZIm8jBELmg&usqp=CAU', width: 70,),
            ),
            SizedBox(height: 20,),
            Text('Nombre de la mascota', style: _estiloVerde,),
            SizedBox(height: 5,),
            Text('Collar name:', style: _estilo,),
            SizedBox(height: 5,),
            Text('Collar de Snoppy', style: _estiloVerde,),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Raza:  ', style: _estilo,),
                Text('Pastor Belga', style: _estilo),
              ],),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Tipo de Mascota:  ', style: _estilo,),
                Text('Perro', style: _estilo),
              ],),
            SizedBox(height: 10,),
            _editar(),
            _eliminar(),
          ],
        ),
      ),
    );
  }

  Widget _editar(){
    return  RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      color: Colors.orange,
      textColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Editar"),
        ],
      ),
      onPressed: () {},
    );
  }

  Widget _eliminar(){
    return OutlineButton(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), ),
      borderSide: BorderSide(color: Colors.orange),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Borrar", style: TextStyle(color: Colors.orange)),
        ],
      ),
      onPressed: () {}
    );
  }
}