import 'package:flutter/material.dart';

class RegistroAlumno extends StatefulWidget {
  const RegistroAlumno({Key? key}) : super(key: key);

  @override
  State<RegistroAlumno> createState() => _RegistroAlumnoState();
}

class _RegistroAlumnoState extends State<RegistroAlumno> {

  String name = '';
  String lastname = '';
  String cuenta = '';

  void enviar(){
    print('El usuario $name $lastname ha sido registrado');
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

                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.assignment_ind_rounded),
                    labelText: 'Nombre',
                    hintText: 'Coloca tu nombre'
                  ),
                  // onChanged: (String nombre) {
                  //   this.name = nombre;
                  // },

                  keyboardType: TextInputType.name,
                  

                  
                ),

                const SizedBox(
                  height: 20,
                ),

                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.assignment_ind_rounded),
                    labelText: 'Apellido',
                    hintText: 'Coloca tu Apellido'
                  ),
                  // onChanged: (String apellido) {
                  //   this.lastname = apellido;
                  // },

                  keyboardType: TextInputType.name,
                  

                ),

                const SizedBox(
                  height: 20,
                ),

                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.dialpad_outlined),
                    labelText: 'Número de Cuenta',
                    hintText: 'Coloca tu Número de Cuenta'
                  ),
                  // onChanged: (String cuenta) {
                  //   this.cuenta = cuenta;
                  // },

                  keyboardType: TextInputType.number,
                  

                ),

                ElevatedButton(
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
