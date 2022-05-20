import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminTable extends StatefulWidget {
  const AdminTable({Key? key}) : super(key: key);

  @override
  State<AdminTable> createState() => _AdminTableState();
}

class _AdminTableState extends State<AdminTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
          Center(
              child: Text(
                'Cuentas Activas',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          DataTable(
            columns: [
              DataColumn(label: Text(
                  'ID',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Nombre',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Empresa',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Editar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Eliminar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Stephen')),
                DataCell(Text('Empresa x')),
                DataCell(Icon(
                    Icons.edit
                )),
                DataCell(Icon(
                    Icons.delete
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('John')),
                DataCell(Text('Empresa y')),
                DataCell(Icon(
                    Icons.edit
                )),
                DataCell(Icon(
                    Icons.delete
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('10')),
                DataCell(Text('Harry')),
                DataCell(Text('Empresa z')),
                DataCell(Icon(
                    Icons.edit
                )),
                DataCell(Icon(
                    Icons.delete
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text('Empresa a')),
                DataCell(Icon(
                    Icons.edit
                )),
                DataCell(Icon(
                    Icons.delete
                )),
              ]),
            ],
          ),
        ])
    );
  }
}
