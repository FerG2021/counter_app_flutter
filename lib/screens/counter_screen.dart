import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // lo ponemos fuera del build sino se volveria a crear una y otra vez
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Número de clicks',
                style: fontSize30,
              ),
              Text(
                '$counter',
                style: fontSize30,
              )
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // BOTON SUMAR CLICKS
          FloatingActionButton(
            child: Icon(Icons.minimize),
            onPressed: () {
              counter--;
              setState(() {});
              ;
            },
          ),

          // SEPARACION ENTRE LOS BOTONES
          const SizedBox(
            width: 20,
          ),

          // BOTON REINICIAR CONTADOR
          FloatingActionButton(
            child: Icon(Icons.restart_alt_outlined),
            onPressed: () {
              counter = 0;
              setState(() {});
              ;
            },
          ),

          // SEPARACION ENTRE LOS BOTONES
          const SizedBox(
            width: 20,
          ),

          // BOTON RESTAR CLICKS
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              counter++;
              setState(() {});
              ;
            },
          ),
        ],
      ),
    );
  }
}
