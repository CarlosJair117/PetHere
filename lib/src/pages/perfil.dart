import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {

  final _estilo = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16);
  final _estiloVerde = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16, color: Color(0XFF20CDA3));

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0XFF20CDA3),
      ),
      body: Container(
        child: Column(
          children: <Widget>[ _perfil(),],
        ),
      ),
    );
  }

  Widget _perfil(){
    return  Card(
      margin: EdgeInsets.all(30),
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy1E-xQ8FYgoxKCp55IwcMWEfEZIm8jBELmg&usqp=CAU', width: 150, fit: BoxFit.cover,),
            ),
            SizedBox(height: 20,),
            Text('Nombre del dueño', style: _estiloVerde,),
            SizedBox(height: 20,),
            Text('Correo:  joseCr7@gmail.com', style: _estilo,),
            SizedBox(height: 20,),
            Text('Contraseña:  *******', style: _estilo,),
            SizedBox(height: 20,),
            Text('Celular:  2415574986', style: _estilo,),
            SizedBox(height: 20,),
            Text('Dirección:  Calle 12 de Marzo, No.53 Jardines de Apizaco', style: _estilo, textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            Text('Localidad:  Apizaco', style: _estilo,),
            SizedBox(height: 20,),
            Text('Estado:  Tlaxcala', style: _estilo,),
            SizedBox(height: 35,),
            _editar(),
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
}