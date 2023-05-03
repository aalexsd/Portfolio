import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                'assests/bnw.png',
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.55),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Olá, meu nome é',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Alex Duarte',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Desenvolvedor Mobile | Flutter',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.solidEnvelope,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}