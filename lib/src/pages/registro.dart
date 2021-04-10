import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {

  final _estilo = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16);
  final _estiloVerde = new TextStyle(fontWeight:FontWeight.bold, fontSize: 16, color: Color(0XFF20CDA3),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Registro'),
        backgroundColor: Color(0XFF20CDA3),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _ultConexion(),
          _diaConexion(),
          _totalConexiones()
        ],
      ),
    );
  }

  Widget _ultConexion() {
    return Card(
      elevation: 7,
      margin: EdgeInsets.only(bottom: 25),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Última conexión: ', style: _estiloVerde),
            SizedBox(height: 20,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('12:45 hrs', style: _estilo,),
              Text('15/03/2021', style: _estilo,),
            ],),
          ],
        ),
      ),
    );
  }

  Widget _diaConexion() {
    return Card(
      elevation: 7,
      margin: EdgeInsets.only(bottom: 25),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Registro de conexiones en las ultimas 24 horas: ', style: _estiloVerde, textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('12:45 hrs', style: _estilo,),
              Text('15/03/2021', style: _estilo,),
            ],),
            SizedBox(height: 15,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('12:45 hrs', style: _estilo,),
              Text('15/03/2021', style: _estilo,),
            ],),
            SizedBox(height: 15,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('12:45 hrs', style: _estilo,),
              Text('15/03/2021', style: _estilo,),
            ],),
          ],
        ),
      ),
    );
  }

  Widget _totalConexiones() {
    return Card(
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Registro total de conexiones: ', style: _estiloVerde),
            SizedBox(height: 20,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('12:45 hrs', style: _estilo,),
              Text('15/03/2021', style: _estilo,),
            ],),
            SizedBox(height: 15,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('12:45 hrs', style: _estilo,),
              Text('15/03/2021', style: _estilo,),
            ],),
            SizedBox(height: 15,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('12:45 hrs', style: _estilo,),
              Text('15/03/2021', style: _estilo,),
            ],),
          ],
        ),
      ),
    );
  }
  
}