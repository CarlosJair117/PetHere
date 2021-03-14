import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String nameValue;
  String passwordValue;
  String email;
  bool tecladoVisible = false;
  

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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/images/logo.png", width: 150),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "PET HERE",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text("Mantén seguras a tus mascotas")
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/gato.png",
                  width: 150,
                )
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, 135),
            child: Center(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Crear Cuenta", style: TextStyle(fontSize: 18)),
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
                          decoration:
                              InputDecoration(labelText: "Correo electrónico:"),
                          onSaved: (value) => email = value,
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
                        
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.orange,
                          textColor: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Crear Cuenta"),
                            ],
                          ),
                          onPressed: () {},
                        ),
                        OutlineButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            borderSide: BorderSide(color: Colors.orange),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ya tengo una cuenta",
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                            onPressed: () => Navigator.pop(context)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

   

}

