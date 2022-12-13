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
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Peliculas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          child: 
          Column(children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(            
              children: const<Widget>[
                Text('Old Boy'),
                Text("Park Chan-Wook", style: TextStyle(color: Colors.grey),),
              ],
            )
            ,
            const Icon(Icons.star),
            const Text('4.5'),
          ],
          ),
          ElevatedButton(child: const Text('Pelicula'), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => secondRoute()));
          }),
          ],)
          
        )
        
        
        
        
      ),
      
    );
  }
}

class secondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
      ),
    );
  }

}
