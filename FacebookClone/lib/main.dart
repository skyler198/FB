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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        titleSpacing: 0,
        title: Row(
          children: [
            const SizedBox(width: 10),
            
            Container(
              width: 39,
              height: 39,
              decoration: const BoxDecoration(
                color: Color(0xff1877f2),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  "f",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 43,
                    fontWeight: FontWeight.bold,
                    height: 1.05,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),

            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: const Icon(Icons.search, color: Colors.black54),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: Icon(Icons.apps, color: Colors.black),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: Icon(Icons.messenger, color: Colors.black,),
              ),
              const SizedBox(width: 10),

              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: Icon(Icons.add_alert, color: Colors.black),
              ),
              const SizedBox(width: 10),

              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://i.pinimg.com/736x/05/25/3e/05253ea4e5ec6c7ae5f53dcf75699081.jpg"),
              ),
            ]
          ),
        ],
      ),


      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              width: 500,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage("https://i.pinimg.com/736x/05/25/3e/05253ea4e5ec6c7ae5f53dcf75699081.jpg"),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Text(
                          "¿Qué estas pensado, Skyler?",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                          )
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.video_camera_back_outlined, color: Colors.red, fontWeight: FontWeight.bold, size: 30),
                  const SizedBox(width: 10),
                  const Icon(Icons.image_outlined, color: Colors.green, size: 30),
                  const SizedBox(width: 10),
                  const Icon(Icons.tag_faces, color: Colors.orange, size: 30)
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 110,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage("https://i.pinimg.com/736x/05/25/3e/05253ea4e5ec6c7ae5f53dcf75699081.jpg"),
                      ),
                    ),
                    child: Stack(
                      children: const [
                        Positioned(
                          bottom: 8,
                          left: 8,
                          child: Text(
                            "Skyler",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //2
                  Container(
                    width: 110,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage("https://i.pinimg.com/736x/05/25/3e/05253ea4e5ec6c7ae5f53dcf75699081.jpg"),
                      ),
                    ),
                    child: Stack(
                      children: const [
                        Positioned(
                          bottom: 8,
                          left: 8,
                          child: Text(
                            "Arturo",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //3
                  Container(
                    width: 110,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage("https://i.pinimg.com/736x/05/25/3e/05253ea4e5ec6c7ae5f53dcf75699081.jpg"),
                      ),
                    ),
                    child: Stack(
                      children: const [
                        Positioned(
                          bottom: 8,
                          left: 8,
                          child: Text(
                            "Juana",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //4
                  Container(
                    width: 110,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage("https://i.pinimg.com/736x/05/25/3e/05253ea4e5ec6c7ae5f53dcf75699081.jpg"),
                      ),
                    ),
                    child: Stack(
                      children: const [
                        Positioned(
                          bottom: 8,
                          left: 8,
                          child: Text(
                            "Edmilson",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      const SizedBox(width: 15, height: 40),

                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          "https://i.pinimg.com/736x/05/25/3e/05253ea4e5ec6c7ae5f53dcf75699081.jpg",
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Skyler TP",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "1 h · 🌎",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.more_horiz),
                    ],
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Patitos nwn",
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 10),


                  ClipRRect(

                    borderRadius: BorderRadius.circular(10),
                    child: Center(
                      child: Image.network(
                        "https://www.shutterstock.com/image-illustration/pixel-art-little-duck-cartoon-260nw-2132878629.jpg",
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.thumb_up_alt_outlined),
                      Icon(Icons.comment_outlined),
                      Icon(Icons.share_outlined),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
