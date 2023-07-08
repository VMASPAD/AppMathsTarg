// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TARG Maths',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('TARG Maths'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Función Cuadratica'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:
                          'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Funtions/index.html',
                      appBarTitle: 'Función Cuadratica',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Función Lineal'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Lineals/index.html',
                      appBarTitle: 'Función Lineal',
                    ),
                  ),
                );
              },
            ),
                        ListTile(
              title: const Text('Función Lineal (Dos puntos)'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Twopoints/index.html',
                      appBarTitle: 'Función Lineal (Dos puntos)',
                    ),
                  ),
                );
              },
            ),
          ListTile(
              title: const Text('Función Homografica / Racional'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Homographic/index.html',
                      appBarTitle: 'Función Homografica',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Función Exponencial'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Exponencial/index.html',
                      appBarTitle: 'Función Exponencial',
                    ),
                  ),
                );
              },
            ),
                        ListTile(
              title: const Text('Limites'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Limits/index.html',
                      appBarTitle: 'Limites',
                    ),
                  ),
                );
              },
            ),
                        ListTile(
              title: const Text('Logaritmos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Logarithms/index.html',
                      appBarTitle: 'Logaritmos',
                    ),
                  ),
                );
              },
            ),
                        ListTile(
              title: const Text('Integrales'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Integrals/index.html',
                      appBarTitle: 'Integrales',
                    ),
                  ),
                );
              },
            ),
                        ListTile(
              title: const Text('Inecuaciones'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebViewPage(
                      url:'https://portfolio-ta-github.000webhostapp.com/assets/Maths/Inequations/index.html',
                      appBarTitle: 'Inecuaciones',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("./lib/img/start.png", width: 200,),),
          
           Center(
           child: Container(
            width: 200,
            height: 100,
            child: const Center(child: Text("Bienvenído a TARG Maths! Arriba a la izquierda estara el boton que abre el menu de las calculadoras.",style: TextStyle(color: Colors.black, fontSize: 15,),textAlign: TextAlign.center,),
           ),
          ),
      )],
      ),
    );
  }
}

class WebViewPage extends StatelessWidget {
  final String url;
  final String appBarTitle;

  const WebViewPage({
    required this.url,
    required this.appBarTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
