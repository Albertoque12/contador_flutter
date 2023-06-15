// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   String _selectedBackground =
//       'https://media.istockphoto.com/id/1370772148/photo/track-and-mountains-in-valle-del-lago-somiedo-nature-park-asturias-spain.jpg?s=612x612&w=0&k=20&c=QJn62amhOddkJSbihcjWKHXShMAfcKM0hPN65aCloco=';

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _decrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   void _resetCounter() {
//     setState(() {
//       _counter = 0;
//     });
//   }

//   void _changeBackground(String backgroundUrl) {
//     setState(() {
//       _selectedBackground = backgroundUrl;
//     });
//   }

//   void _changeIncrement(int incrementValue) {
//     setState(() {
//       // Actualizar la lógica para cambiar el incremento/descenso del contador
//       _counter += incrementValue;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('App de Contador'),
//           bottom: TabBar(
//             tabs: [
//               Tab(text: 'Contador'),
//               Tab(text: 'Configuración'),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             // Pestaña del contador
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _changeBackground(
//                       'https://media.istockphoto.com/id/1370772148/photo/track-and-mountains-in-valle-del-lago-somiedo-nature-park-asturias-spain.jpg?s=612x612&w=0&k=20&c=QJn62amhOddkJSbihcjWKHXShMAfcKM0hPN65aCloco='),
//                   child: Text('Fondo 1'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => _changeBackground(
//                       'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/09/c3/33/97.jpg'),
//                   child: Text('Fondo 2'),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 20.0),
//                   child: Text(
//                     'Contador: $_counter',
//                     style: TextStyle(fontSize: 24.0),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: _decrementCounter,
//                       child: Icon(Icons.remove),
//                     ),
//                     SizedBox(width: 20.0),
//                     ElevatedButton(
//                       onPressed: _resetCounter,
//                       child: Text('Limpiar'),
//                     ),
//                     SizedBox(width: 20.0),
//                     ElevatedButton(
//                       onPressed: _incrementCounter,
//                       child: Icon(Icons.add),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(20.0),
//                   child: Image.network(
//                     _selectedBackground,
//                     width: 300,
//                     height: 300,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ],
//             ),

//             // Pestaña de configuración
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Configuración del contador',
//                   style: TextStyle(fontSize: 24.0),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => _changeIncrement(1),
//                   child: Text('Incremento +1'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => _changeIncrement(-1),
//                   child: Text('Descenso -1'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _selectedBackground =
      'https://ibb.co/LZkSFhc';
  int _incrementValue = 1; // Valor de incremento/descenso inicial

  void _incrementCounter() {
    setState(() {
      _counter += _incrementValue;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter -= _incrementValue;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _changeBackground(String backgroundUrl) {
    setState(() {
      _selectedBackground = backgroundUrl;
    });
  }

  void _changeIncrement(int incrementValue) {
    setState(() {
      _incrementValue = incrementValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('App de Contador'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Contador'),
              Tab(text: 'Configuración'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Pestaña del contador
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _changeBackground(
                      'https://media.istockphoto.com/id/1370772148/photo/track-and-mountains-in-valle-del-lago-somiedo-nature-park-asturias-spain.jpg?s=612x612&w=0&k=20&c=QJn62amhOddkJSbihcjWKHXShMAfcKM0hPN65aCloco='),
                  child: Text('Fondo 1'),
                ),
                ElevatedButton(
                  onPressed: () => _changeBackground(
                      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/09/c3/33/97.jpg'),
                  child: Text('Fondo 2'),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Contador: $_counter',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _decrementCounter,
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 20.0),
                    ElevatedButton(
                      onPressed: _resetCounter,
                      child: Text('Limpiar'),
                    ),
                    SizedBox(width: 20.0),
                    ElevatedButton(
                      onPressed: _incrementCounter,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Image.network(
                    _selectedBackground,
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            // Pestaña de configuración
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Configuración del contador',
                  style: TextStyle(fontSize: 24.0),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      _incrementValue = int.tryParse(value) ?? 1;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Valor de incremento/descenso',
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _changeIncrement(_incrementValue),
                  child: Text('Actualizar incremento/descenso'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



