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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const <Widget>[
                          Text('Old Boy'),
                          Text(
                            "Park Chan-Wook",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const Icon(Icons.star),
                      const Text('4.5'),
                    ],
                  ),
                  ElevatedButton(
                      child: const Text('Pelicula'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => secondRoute()));
                      }),
                ],
              ))),
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
      body: Center(
          child: SizedBox(
              child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.network(
              'https://miro.medium.com/max/640/1*RbmhRUicKhfne7t_7Dqb5w.webp',
              fit: BoxFit.contain,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const <Widget>[
                  Text('Old Boy'),
                  Text(
                    "Park Chan-Wook",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(width: 80),
              Column(children: const <Widget>[
                Icon(Icons.star),
                Text('4.5'),
              ]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  Text(
                    "CALL",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.maps_home_work,
                    color: Colors.blue,
                  ),
                  Text(
                    "ROUTE",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Text(
                    "SHARE",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget> [
              Flexible(child:Text("Dae-soo (Choi Min-sik) es un hombre corriente, casado y con una hija, que un d??a es secuestrado sin raz??n aparente. Durante 15 a??os Dae-soo permanece encerrado en una extra??a habitaci??n-c??rcel, completamente aislado del mundo, con una televisi??n como ??nica compa????a. Al ser liberado, en precarias condiciones f??sicas y mentales, y tras descubrir la muerte de su esposa y de su hija, estar?? dispuesto a todo. Sin nada que perder, su ??nico objetivo ser?? recuperarse para poder desentra??ar el misterio y encontrar a su captor, que lo ha sometido a tan perverso experimento. Su pesadilla acaba de empezar.", style: TextStyle(fontSize: 12), )),
            ],
          ),
          ElevatedButton(
                      child: const Text('Volver'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyApp()));
                      }),
        ],
      ))),
    );
  }
}
