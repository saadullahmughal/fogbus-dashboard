import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FogBus2 Security Monitoring",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          leading: Icon(
            Icons.security,
            color: Colors.white,
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.shortestSide * 0.1),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.cyan),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Registered Devices",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Row(
                          children: [
                            Text(
                              "38",
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.shortestSide * 0.1),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.cyan),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Traffic Rate",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                            Text(
                              "827.5 kbps",
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            Icon(
                              Icons.trending_up,
                              size: 36,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const ListTile(
                textColor: Colors.white,
                title: Text(
                  "Network Requests",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.cyan,
              ),
              const ListTile(
                textColor: Colors.white,
                leading: Icon(Icons.safety_check),
                title: Text("180.98.78.09 -> 129.43.54.65"),
                subtitle: Text("VideoOCR"),
                tileColor: Colors.grey,
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("13:12:12 09-03-24"),
                    Text(""),
                    // Text("Security Check in progress"),
                  ],
                ),
              ),
              const ListTile(
                leading: Icon(Icons.check_circle),
                title: Text("180.98.87.89 -> 129.43.34.43"),
                subtitle: Text("Flutter Build APK"),
                tileColor: Colors.white,
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("18:12:12 08-03-24"),
                    Text("18:14:24 08-03-24"),
                  ],
                ),
              ),
              const ListTile(
                textColor: Colors.white,
                leading: Icon(Icons.error),
                title: Text("180.100.78.09 -> 129.43.94.65"),
                subtitle: Text("ColorTracking"),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("08:25:12 08-03-24"),
                    Text("08:26:24 08-03-24"),
                  ],
                ),
                tileColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
