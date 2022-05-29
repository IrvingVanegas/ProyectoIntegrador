import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_user_page.dart';

class AdminTable extends StatefulWidget {
  const AdminTable({Key? key}) : super(key: key);

  @override
  State<AdminTable> createState() => _AdminTableState();
}

class _AdminTableState extends State<AdminTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuentas"),
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return AddUserPage();
            }));
          }, icon: Icon(Icons.add)
          )
        ],
      ),
    );
  }
}
