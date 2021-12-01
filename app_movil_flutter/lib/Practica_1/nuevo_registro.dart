import 'package:flutter/material.dart';
import 'package:app_movil_flutter/Practica_1/main_1.dart';

class RegistroAlumno extends StatefulWidget {
  const RegistroAlumno({Key? key}) : super(key: key);

  @override
  State<RegistroAlumno> createState() => _RegistroAlumnoState();
}



final tname = TextEditingController();
final tlastname = TextEditingController();
final tcuenta = TextEditingController();


class _RegistroAlumnoState extends State<RegistroAlumno> {

  String name = '';
  String lastname = '';
  String cuenta = '';

  

  void enviar(){
    print('El usuario $name $lastname ha sido registrado');

    name = tname.text;
    lastname = tlastname.text;
    cuenta = tcuenta.text;

    personas.add(Persona(name, lastname, cuenta));

    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Inicio()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Nuevo registro'),
      ),

      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            color: Colors.transparent,
            width: double.infinity,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Nuevo Registro',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(height: 20),

                  //Name
                TextField(
                  controller: tname,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.assignment_ind_rounded),
                    labelText: 'Nombre',
                    hintText: 'Coloca tu nombre'
                  ),
                  onChanged: (String nombre) {
                    this.name = nombre;
                  },

                  keyboardType: TextInputType.name,
                  

                  
                ),

                const SizedBox(
                  height: 20,
                ),

                  //Last Name
                TextField(
                  controller: tlastname,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.assignment_ind_rounded),
                    labelText: 'Apellido',
                    hintText: 'Coloca tu Apellido'
                  ),
                  onChanged: (String apellido) {
                    this.lastname = apellido;
                  },

                  keyboardType: TextInputType.name,
                  

                ),

                const SizedBox(
                  height: 20,
                ),

                  //Cuenta
                TextField(
                  controller: tcuenta,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.dialpad_outlined),
                    labelText: 'Número de Cuenta',
                    hintText: 'Coloca tu Número de Cuenta'
                  ),
                  onChanged: (String cuenta) {
                    this.cuenta = cuenta;
                  },

                  keyboardType: TextInputType.number,
                  

                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple, // background
                    onPrimary: Colors.white, // foreground
                  ),

                  onPressed: enviar, 
                  child: const Text('Enviar Data')
                ),



              ],
            ),
          ),
        ),
      ),

      
      
      
      
      
      
      
      
      // Padding(
      //   padding: const EdgeInsets.all(12.0),
      //   child: Center(
      //     child: TextField(
      //         decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Name'),
      //         // textCapitalization: TextCapitalization.,
      //       ), 
      //     ),
      // ),







      );          
  }
}

class Int {
}
