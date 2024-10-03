import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Frame(),
    );
  }
}

class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              padding: const EdgeInsets.only(bottom: 25, right: 10, left: 10),
              color: const Color(0xFF3888F7),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          "assets/images/avatar.png",
                          width: 80,
                          height: 80,
                        )),
                    Texto("Hola Lina", 28),
                    Texto("La app del programador", 15)
                  ]),
            ),
          ),
          Positioned(
              top: 190,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFFE0D9C4)),
              )),
          const Positioned(
            top: 210,
            left: 15,
            child: Text(
              "Topicos populares",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Positioned(
            top: 235,
            left: 10,
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 160,
              width: MediaQuery.of(context).size.width - 20,
              // color: Colors.amberAccent,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Cajas("Java", 20, "30 Post", 15, Colors.purple),
                Cajas("CSS", 20, "24 Post", 15, Colors.blueAccent),
                Cajas("JS", 20, "10 Post", 15, Colors.orange),
                Cajas("C++", 20, "20 Post", 15, Colors.greenAccent),
                Cajas("Python", 20, "30 Post", 15, Colors.cyan),
                Cajas("Ruby", 20, "30 Post", 15, const Color(0xFFC10D22)),
                Cajas("Dart", 20, "30 Post", 15, const Color(0xFF031579))
              ]),
            ),
          ),
          const Positioned(
            top: 390,
            left: 15,
            child: Text(
              "Tendencias",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Positioned(
            top: 430,
            left: 10,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 430,
              width: MediaQuery.of(context).size.width - 20,
              child: ListView(
                children: [
                  Filas(
                      "Miguel Perez",
                      1,
                      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
                      976,
                      997),
                  Filas(
                      "Irma Fonseca",
                      1,
                      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor.",
                      976,
                      997),
                  Filas(
                      "Daniel Pizarro",
                      1,
                      "Lorem Ipsum (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.",
                      976,
                      997),
                  Filas(
                      "Yulianis Delgado",
                      1,
                      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.",
                      976,
                      997),
                  Filas(
                      "Lina Gallardo",
                      1,
                      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.",
                      976,
                      997)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// ignore: non_constant_identifier_names
  Widget Texto(String titulo, double tam) {
    return Text(
      titulo,
      style: TextStyle(color: Colors.white, fontSize: tam),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Cajas(
      String titulo, double tam, String cont, double tam2, dynamic col) {
    return Container(
      width: 130,
      // height: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: col,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Texto(titulo, tam), Texto(cont, tam2)]),
    );
  }

  Widget Filas(String nombre, int hora, String cont, int like, int vistas) {
    return Container(
      // height: 240,
      // width: 250,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 242, 230, 244)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/avatar.png",
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nombre,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Hace $hora horas",
                      style: const TextStyle(color: Color(0xFF818181)))
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(cont),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.thumb_up_alt_outlined),
              Expanded(
                flex: 2,
                child: Text("$like Likes"),
              ),
              const Icon(Icons.remove_red_eye_rounded),
              Text(" $vistas Vistos")
            ],
          )
        ],
      ),
    );
  }
}
