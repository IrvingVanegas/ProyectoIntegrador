import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/widgets/bottom_nav_bar.dart';
import 'package:hotel_booking_app_ui/widgets/home/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness ==
        Brightness.dark; //check if device is in dark or light mode
    Color defaultColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: buildBottomNavBar(0, size, isDarkMode),
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: isDarkMode
                ? const Color(0xff06090d)
                : const Color(0xfff8f8f8), //background color
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.02,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: ListView(
                children: [
                  buildTopBar(defaultColor, size),
                  Divider(
                    color: defaultColor,
                    thickness: 0.25,
                    height: size.height * 0.035,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      height: 340,
                      width: 240,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1, 1),
                            blurRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.asset("images/patzcuaro-y-janitzio.jpg", height: 270,),
                          Text("Patzcuaro", style: Theme.of(context).textTheme.headline4,),
                          TextButton(
                            onPressed: null,
                            child: Text('Mas Informacion'),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states){
                                return states.contains(MaterialState.disabled) ? null : Colors.white;
                              }),
                              backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states){
                                return states.contains(MaterialState.disabled) ? null : Colors.blue;
                              }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset("images/img.jpg", height: 270, width: 270, ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
