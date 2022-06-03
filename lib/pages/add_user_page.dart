import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddUserPage extends StatefulWidget {
  const AddUserPage({Key? key}) : super(key: key);

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  final _nameController = TextEditingController();
  final _empresaController = TextEditingController();
  final _passController = TextEditingController();
  final _correoController = TextEditingController();
  String response="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuentas"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Nombre"
            ),
          ),
          TextField(
            controller: _empresaController,
            decoration: InputDecoration(
                hintText: "Empresa"
            ),
          ),
          TextField(
            controller: _passController,
            decoration: InputDecoration(
                hintText: "Contraseña"
            ),
          ),
          TextField(
            controller: _correoController,
            decoration: InputDecoration(
                hintText: "Correo"
            ),
          ),
          RaisedButton(
            child: Text("Guardar"),
            onPressed: getData,
          ),
          Text(response),
        ],
      ),
    );
  }

  getData() async {
    final data = [
      _nameController.value.text,
      _empresaController.value.text,
      _passController.value.text,
      _correoController.value.text
    ];

    createUser(data);
  }

  createUser(data) async {
    var nombre = data[0];
    var idEmpresa = data[1];
    var contrasena = data[2];
    var correo = data[3];

    var urlTrabajador = Uri.parse('http://12.0.0.1:8080/Agregar/Trabajador');
    late List trabajadores = [];
    var response;

    void _alert(message,context){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text(message, style: Theme.of(context).textTheme.headline6),
          actions: <Widget>[
            TextButton(
              child: const Text('Volver'),
              onPressed: () => Navigator.pop(context, 'Cancel'),
            ),
          ],
        );
      });
    }

    bool _verifyData(nombre,idEmpresa, contrasena, correo,context){
      if(nombre == '' || idEmpresa == '' || contrasena == '' || correo == ''){
        _alert('Los campos no pueden estar vacios',context);
        return false;
      }else return true;
    }

    if(_verifyData(nombre, idEmpresa, contrasena, correo, context)){
      try{
        response = await http.post(urlTrabajador, body: {'nombre': '$nombre', 'idEmpresa': '$idEmpresa',
          'contrasena': '$contrasena', 'correo': '$correo'
        });

        if(json.decode(response.body)['row'].toString() != 'null'){
          trabajadores = List<Map<String, dynamic>>.from(json.decode(response.body)['row']);
        }

      }catch(_){
        _alert('Datos incorrectos',context);
      }
    }

  }
}
