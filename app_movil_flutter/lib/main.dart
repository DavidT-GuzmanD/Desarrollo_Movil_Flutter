import 'package:flutter/material.dart';

import 'nuevo_registro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,   //Quitamos el banner

      title: 'Material App',
      home: Inicio(),
    );
  }

}

class Inicio extends StatefulWidget {
  const Inicio({
    Key? key,
  }) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Material App Bar'),
      ),

      floatingActionButton: const BotonNewRegistro(),

      body: ListView.builder(
        itemCount: personas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(personas[index].name + ' ' + personas[index].lastName),
            subtitle: Text(personas[index].cuenta),
            leading: CircleAvatar(
              child: Text(personas[index].name.substring(0, 1)),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        }
      ),
    );
  }
}

class BotonNewRegistro extends StatelessWidget {
  const BotonNewRegistro({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      child: const Icon(Icons.people_alt_outlined),
      onPressed: () {
        // print('Hola mundo');
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const RegistroAlumno()));
      },
    );
  }
}

List<Persona> personas = [
    Persona('David', 'Guzmán', '20160557'),
    Persona('Pedro', 'Perez', '20160424'),
    Persona('Paco', 'Garcia', '20160363'),
    Persona('Solo', 'Vino', '20172702'),
];


class Persona {
  String name;
  String lastName;
  String cuenta;

  Persona(this.name, this.lastName, this.cuenta);
}






































// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);


//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
