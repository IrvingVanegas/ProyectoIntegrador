import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/modules/http.dart';

class AddUserPage extends StatefulWidget {
  const AddUserPage({Key? key}) : super(key: key);

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController empresaController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  String response="";

  createUser() async {
    var result = await http_post("create-user", {
      "nombre": nameController.text,
      "idempresa": empresaController.text,
      "contrasena": passController.text,
      "correo": correoController.text,
    });
    if(result.ok){
      setState(() {
        response = result.data['status'];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuentas"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Nombre"
            ),
          ),
          TextField(
            controller: empresaController,
            decoration: InputDecoration(
                hintText: "Empresa"
            ),
          ),
          TextField(
            controller: passController,
            decoration: InputDecoration(
                hintText: "Contraseña"
            ),
          ),
          TextField(
            controller: correoController,
            decoration: InputDecoration(
                hintText: "Correo"
            ),
          ),
          RaisedButton(
            child: Text("Guardar"),
            onPressed: createUser,
          ),
          Text(response),
        ],
      ),
    );
  }
}
