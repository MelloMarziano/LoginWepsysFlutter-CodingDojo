import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController txtEmail =TextEditingController();
  TextEditingController txtPass =TextEditingController();

  void miFuncion(){
    if(txtEmail.text.isEmpty || txtPass.text.isEmpty){
      print("No puedes dejar los campos vacios");
    }else{
      print("Welcomen... "+ txtEmail.text);
    }
  }


  @override
  Widget build(BuildContext context) {

    final imagen = Image(
      image: AssetImage("assets/images/logo.png"),
    );

    final email =TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: txtEmail,
      decoration: InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(color: Colors.white70),
        helperText: "Wepsys2 Email !!",
        helperStyle: TextStyle(color: Colors.yellow),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
      ),
    );

    final password =TextField(
      obscureText: true,
      controller: txtPass,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(color: Colors.white70),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
      ),
    );

    final boton =Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.lightBlueAccent,
          elevation: 5.0,
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            child: Text('Log iin'),
            onPressed: (){
              miFuncion();
            },
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF273c75),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 48.0),
            Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: imagen,
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 48.0),
            Row(
              children: <Widget>[
                Flexible(
                  child: email,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Flexible(
                  child: password,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Flexible(
                  child: boton,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}