import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      blurRadius: 4,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const ListTile(
                  leading: Icon(Icons.search, color: Colors.grey),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "¿Que quieres hacer?",
                        border : InputBorder.none
                    ),
                  ),
                  trailing: Icon(Icons.filter_list, color: Colors.grey,),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Destacados", style: Theme.of(context).textTheme.headline4,),
              ),
              Container(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_, index){
                  return Padding(padding: const EdgeInsets.all(8),
                  child: Container(
                      height: 240,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              blurRadius: 4,
                            ),
                          ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                                  Image.asset("images/patzcuaro-y-janitzio.jpg", height: 140, width: 200,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const <Widget>[
                                      Padding(padding: EdgeInsets.all(8),
                                        child: Text("Patzcuaro"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(1, 1),
                                                blurRadius: 4,
                                              ),
                                            ],
                                        ),
                                        child: TextButton(
                                          onPressed: null,
                                          child: const Text('Mas Informacion'),
                                          style: ButtonStyle(
                                            foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states){
                                              return states.contains(MaterialState.disabled) ? null : Colors.white;
                                            }),
                                            backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states){
                                              return states.contains(MaterialState.disabled) ? null : Colors.blue;
                                            }),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20,),
              Image.asset("images/img.jpg", height: 270, width: 270, ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("icons/home.png", width: 26, height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("icons/catalogo.png", width: 26, height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("icons/viaje.png", width: 26, height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("icons/cuenta.png", width: 26, height: 26,),
            ),

          ],
        ),
      ),
    );
  }
}
