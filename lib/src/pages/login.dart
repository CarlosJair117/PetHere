import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nameValue;
  String passwordValue;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0XFF20CDA3)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:[
               _presentacion(),
                Image.asset( "assets/images/perro.png",width: 150,)
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, 103),
            child: Center(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(20),
                child: _form()
              ),
            ),
          )
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
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Iniciar Sesión", style: TextStyle(fontSize: 18)),
            TextFormField(
              decoration: InputDecoration(labelText: "Usuario:"),
              onSaved: (value) => nameValue = value,
              validator: (value) {
                if (value.isEmpty) {
                  return "Llene este campo";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Contraseña:"),
              onSaved: (value) => passwordValue = value,
              validator: (value) {
                if (value.isEmpty) {
                  return "Llene este campo";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 30, ),
            _iniciarSesion(),
            _registro(),
          ],
        ),
      ),
    );
  }

  Widget _iniciarSesion(){
    return  RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      color: Colors.orange,
      textColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Iniciar Sesión"),
        ],
      ),
      onPressed: () => Navigator.of(context).pushNamed("navBar"),
    );
  }

  Widget _registro(){
    return OutlineButton(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10), ),
      borderSide: BorderSide(color: Colors.orange),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Registrate", style: TextStyle(color: Colors.orange)),
        ],
      ),
      onPressed: () => Navigator.of(context).pushNamed("account")
    );
  }
}
