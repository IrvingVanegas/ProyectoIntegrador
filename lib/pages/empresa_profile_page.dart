import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app_ui/pages/empresa_table_product_page.dart';
import 'package:hotel_booking_app_ui/pages/empresa_table_service_page.dart';

class EmpresaProfilePage extends StatefulWidget {
  const EmpresaProfilePage({Key? key}) : super(key: key);

  @override
  State<EmpresaProfilePage> createState() => _EmpresaProfilePageState();
}

class _EmpresaProfilePageState extends State<EmpresaProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                  image: const NetworkImage(
                      'https://images.unsplash.com/photo-1485160497022-3e09382fb310?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                ),
                Positioned(
                    bottom: -50.0,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: NetworkImage(
                            'https://scontent.ftun7-1.fna.fbcdn.net/v/t39.30808-6/s552x414/255729438_2061962933967301_6536194202848894171_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=8WN5tCaKhNQAX8wbDdB&_nc_ht=scontent.ftun7-1.fna&oh=00_AT-vQcebr_3_dyt5y7xkSu5mO6tTdZSL7pr80y15zU8aOQ&oe=61CD0B9D'),
                      ),
                    ))
              ]),
          SizedBox(
            height: 45,
          ),
          ListTile(
            title: Center(child: Text('Juan Ramirez')),
            subtitle: Center(child: Text('Empresa x')),
          ),
          SizedBox(
            height: 45,
          ),
          ListTile(
            title: Text("Gestionar Servicios"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap:() => Get.off(() => EmpresaServicesTable()),
          ),
          ListTile(
            title: Text("Gestionar Productos"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap:() => Get.off(() => EmpresaProductTable()),
          ),
          ListTile(
            title: Text("Reportes"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
