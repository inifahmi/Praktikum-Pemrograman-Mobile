import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _showFlutterLogoRed = false;
  bool _showFlutterLogoBlue = false;
  bool _showFlutterLogoGreen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Mobile Menyenangkan!',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 166, 255),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  'assets/images/foto.png',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Fahmi Kariem',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                '123220028',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _showFlutterLogoRed = !_showFlutterLogoRed;
                      });
                    },
                    child: Text('Tombol 1'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _showFlutterLogoBlue = !_showFlutterLogoBlue;
                      });
                    },
                    child: Text('Tombol 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _showFlutterLogoGreen = !_showFlutterLogoGreen;
                      });
                    },
                    child: Text('Tombol 3'),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                          child: Center(
                              child: _showFlutterLogoRed
                                  ? FlutterLogo(size: 60)
                                  : null)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                          child: Center(
                              child: _showFlutterLogoBlue
                                  ? FlutterLogo(size: 60)
                                  : null)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                          child: Center(
                            child: _showFlutterLogoGreen
                                ? FlutterLogo(size: 60)
                                : null,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                        child: Center(
                          child: FlutterLogo(
                            size: 60,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
