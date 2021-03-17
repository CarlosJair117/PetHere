import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String nameValue;
  String apetPaterno;
  String apetMaterno;
  String passwordValue;
  String email;
  String telefono;
  String calle;
  String numExterior;
  String numInterior;
  String localidad;
  String estado;
  

  final _formKey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0XFF20CDA3)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _presentacion(),
                Image.asset(
                  "assets/images/gato.png",
                  width: 150,
                )
              ],
            ),
          ), 
          Container(
            padding: EdgeInsets.all(30.0),
            child: _form(),
          ),
        ],
      ),
    );
  }

  Widget _presentacion(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/images/logo.png", width: 150),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PET HERE",style: TextStyle(fontSize: 30, color: Colors.white), ),
            Text("Mantén seguras a tus mascotas")
          ],
        ),
      ],
    );
  }   

  Widget _form(){
    return Form(
      key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Crear Cuenta", style: TextStyle(fontSize: 18)),
            TextFormField(
              decoration: InputDecoration(labelText: "Nombre:"),
              onSaved: (value) => nameValue = value,
             validator: (value) {
              if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
            },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Apellido Paterno:"),
              onSaved: (value) => apetPaterno = value,
              validator: (value){
                if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Apellido Materno:"),
              onSaved: (value) => apetMaterno = value,
              validator: (value){
                 if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Correo electrónico:"),
              onSaved: (value) => email = value,
              validator: (value){
                 if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Contraseña:"),
              onSaved: (value) => passwordValue = value,
              validator: (value){
                 if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top:45),
              child: Text("Información de contacto:", style: TextStyle(fontWeight: FontWeight.bold ),),
            ),
            Text('Ésta información es importante ne caso de que tu mascota se extravíe'),
            TextFormField(
              decoration: InputDecoration(labelText: "Número de teléfono"),
              onSaved: (value) => telefono = value,
              validator: (value){
                 if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Calle:"),
              onSaved: (value) => calle = value,
              validator: (value){
                 if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },
            ),
           
                TextFormField(
                  decoration: InputDecoration(labelText: "Número exterior:"),
                  onSaved: (value) => numExterior = value,
                  validator: (value){
                    if (value.isEmpty) {
                      return "Llene este campo";
                    } else { return null; }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Número interior:"),
                  onSaved: (value) => numInterior = value,
                  validator: (value){
                    if (value.isEmpty) {
                      return "Llene este campo";
                    } else { return null; }
                  },
                ),
              
            TextFormField(
              decoration: InputDecoration(labelText: "Localidad:"),
              onSaved: (value) => localidad = value,
              validator: (value){
                 if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },
            ),
            /*TextFormField(
              decoration: InputDecoration(labelText: "Localidad:"),
              onSaved: (value) => localidad = value,
              validator: (value){
                 if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },
            ),*/
            TextFormField(
              decoration: InputDecoration(labelText: "Estado:"),
              onSaved: (value) => estado = value,
              validator: (value){
                 if (value.isEmpty) {
                  return "Llene este campo";
                } else { return null; }
              },          
            ),
            SizedBox( height: 30,),
            _crearCuenta(),
            _regresar(),
          ],
        ),
    );
  }

  Widget _crearCuenta(){
    return ElevatedButton(
    /*  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
      color: Colors.orange,
      textColor: Colors.white, */
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Crear Cuenta"), ],
      ),
     onPressed: (){}
    );
  }

  Widget _regresar() {
    return OutlinedButton(
    /*  shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      borderSide: BorderSide(color: Colors.orange), */
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Ya tengo una cuenta",style: TextStyle(color: Colors.orange), ),],
      ),
      onPressed: () => Navigator.pop(context)
    );
  }

    /* _validar(String value){
     if (value == '') {
      return "Llene este campo";
    } else {
      return null;
    }
  }*/

}

