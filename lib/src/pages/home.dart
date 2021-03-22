import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final _estilo = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16);
  final _estiloVerde = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16, color: Colors.green[200]);
  final _estiloRojo = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16, color: Colors.red);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: <Widget>[
          _presentacion(context),
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                _estado(),
                _informacion()
              ],
            ),),
        ],
      ),
    );
  }

  Widget _presentacion( BuildContext context ) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: _screenSize.height * 0.2,
      decoration: BoxDecoration(color: Color(0XFF20CDA3), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset("assets/images/logo.png", width: 150,),
          Text('PET HERE', style: TextStyle(fontSize: 40, color: Colors.yellow,)),
        ],
      ),
    );
  }

  Widget _estado() {
    return Card(
      margin: EdgeInsets.only(bottom: 25),
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Mascotas registradas:  2', style: _estilo,),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Perros:  2', style: _estilo,),
                Text('Gatos:  1', style: _estilo),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _informacion() {
    return Card(
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt-qfOH94ej4_6S1qf6GEmmhKU159lFU68EA&usqp=CAU', width: 100,),
            SizedBox(height: 20,),
            Text('Nombre de la mascota', style: _estiloVerde,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Estado Collar: ', style: _estilo,),
                Text('Apagado', style: _estiloRojo),
              ],),
            SizedBox(height: 20,),
            Text('Última conexión:', style: _estilo,),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('12:45 hrs', style: _estiloRojo,),
                Text('15/03/2021', style: _estiloRojo),
              ],),
          ],
        ),
      ),
    );
  }


}