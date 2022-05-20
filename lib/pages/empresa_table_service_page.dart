import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmpresaServicesTable extends StatefulWidget {
  const EmpresaServicesTable({Key? key}) : super(key: key);

  @override
  State<EmpresaServicesTable> createState() => _EmpresaServicesTableState();
}

class _EmpresaServicesTableState extends State<EmpresaServicesTable> {
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
                  'Servicio',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Disponibilidad',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Costo',
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
                DataCell(Text('Hotel')),
                DataCell(Text('Si')),
                DataCell(Text('450')),
                DataCell(Icon(
                    Icons.edit
                )),
                DataCell(Icon(
                    Icons.delete
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Tour')),
                DataCell(Text('No')),
                DataCell(Text('150')),
                DataCell(Icon(
                    Icons.edit
                )),
                DataCell(Icon(
                    Icons.delete
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('10')),
                DataCell(Text('Spa')),
                DataCell(Text('Si')),
                DataCell(Text('200')),
                DataCell(Icon(
                    Icons.edit
                )),
                DataCell(Icon(
                    Icons.delete
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Buceo')),
                DataCell(Text('si')),
                DataCell(Text('300')),
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
