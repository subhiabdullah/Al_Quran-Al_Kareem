import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    double width = MediaQuery.of(context).size.width * 0.8;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height,
      child: Material(
        color: themechange.darkTheme ? Colors.black : Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.dark_mode,
                    color: themechange.darkTheme ? Colors.white : Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Dark Mode',
                      style: TextStyle(
                        fontSize: 20,
                        color:
                            themechange.darkTheme ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.3,
                  ),
                  Switch(
                      value: themechange.darkTheme,
                      onChanged: (value) {
                        themechange.darkTheme = value;
                      }),
                ],
              ),
              Divider(
                height: 50.0,
                thickness: 2.0,
                color: themechange.darkTheme ? Colors.blue : Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
