import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SingleChildScrollView(
          //Quitar los circulos del fondo porque, no estarian formando parte de ningunwidget.
          //La mejor forma es meterlos dentro del container amarillo, y apoyarse.
          //es decir CONTAINER AMARILLO -> STACK -> DENTRO DEL STACK LOS CIRCULOS
          //para la posicion de los circulos, echale ojo al widget POSITIONED, es
          //widget que solamente se usa dentro de los stacks y es justamente para
          //editar la posicion de los widgets.
          //---Asi quedarian en el widget de CustomCard
          ///////////////////////////////////
          ///--------------------------------------
          /////////////////////////////////////////
          child: Column(
            children: [
              SizedBox(
                width: 350,
                height: 400,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ///////////////////////////////////
                    ///--------------------------------------
                    /////////////////////////////////////////
                    ///Al CustomCard hay que prepararlo para que reciba parametros.
                    ///como el title, todo lo que puede cmabiar, como las cantidades
                    ///el icono. la palabra profit y spend
                    ///////////////////////////////////////////
                    const CustomCard(
                      //
                      titleCard: 'Your balance',
                    ),
                  ],
                ),
              ),

              ///////////////
              ///--Este widget tendrían que ser dos separados, por un lado la fecha es un Widget
              ///--y por otro lado otro widget de la cantidad total
              ///--también dejarlos preparados para que reciban parametros
              const FechData(),
              const VentasMarcas(),
              ////
              ///
              ///--también dejarlos preparados para que reciban parametros
              const FechDataw(),
              const CustomProductTile(
                textoPrecio: '-\$222',
                textoSubtitulo: 'ApleStore',
                textoTitulo: 'Apple',
                path: 'assets/apple.png',
                colorcontainer: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//////////////////PARA TODOS ESTOS WIDGETS CREAR UNA CARPETA LLAMADA "WIDGETS"
///Y CREAR UN ARCHIVO PARA CADA WIDGET, ASI QUEDE MAS ORDENADO EL CODIGO Y
/////SE PUEDAN USAR EN OTROS PROYECTOS.

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.titleCard,
  }) : super(key: key);

  final String titleCard;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 350,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.amber.withOpacity(0.8),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 250,
                height: 60,
                child: Row(
                  children: [
                    Text(
                      titleCard,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 250,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '\$2,500',
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
                    ),
                    Icon(
                      Icons.ac_unit_outlined,
                      size: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 250,
                height: 60,
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Profit'),
                          Text(
                            '+\$ 3,500',
                            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Spend'),
                          Text(
                            '-\$ 2,500',
                            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                          )
                        ],
                      ),
                    )
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

class FechDataw extends StatelessWidget {
  const FechDataw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 30,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              'November 4',
              style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class FechData extends StatelessWidget {
  const FechData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 65,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              height: 65,
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'NOVEMBER 2020',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'November 6',
                        style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 114,
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const Text(
                    '-\$740',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VentasMarcas extends StatelessWidget {
  const VentasMarcas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomProductTile(
            textoPrecio: '-\$222',
            textoSubtitulo: 'Sportswear',
            textoTitulo: 'Nike',
            path: 'assets/nike.png',
            colorcontainer: Colors.yellow,
          ),
          CustomProductTile(
            textoPrecio: '-\$400',
            textoTitulo: 'Apple',
            textoSubtitulo: 'Online store',
            path: 'assets/apple.png',
            colorcontainer: Colors.white,
          ),
          CustomProductTile(
              textoPrecio: '-\$10',
              textoTitulo: 'Coffee',
              textoSubtitulo: 'Coffee House',
              path: 'assets/coffee.png',
              colorcontainer: Colors.white)
        ],
      ),
    );
  }
}

class CustomProductTile extends StatelessWidget {
  const CustomProductTile({
    Key? key,
    required this.textoPrecio,
    required this.textoTitulo,
    required this.textoSubtitulo,
    required this.path,
    required this.colorcontainer,
  }) : super(key: key);
  final String textoPrecio;
  final String textoTitulo;
  final String textoSubtitulo;
  final String path;
  final Color colorcontainer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Center(
        child: Container(
          width: 360,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  height: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: colorcontainer,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset(
                            path,
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textoTitulo,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            textoTitulo,
                            style: const TextStyle(color: Colors.black38),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(textoPrecio),
                  ],
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
