import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  aboutAchivements(num, type) {
    return Row(
      children: [
        Text(num,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Soho",
            )),
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              type,
              style: const TextStyle(
                fontFamily: "Soho",
              ),
            ))
      ],
    );
  }

  mySpec(icon, text) {
    return SizedBox(
      height: 150,
      width: 160,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16, fontFamily: "Soho", color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            icon: const Icon(Icons.menu),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: TextButton(
                        child: const Text(
                          'Projetos',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/project');
                        }),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: TextButton(
                        child: const Text(
                          'Sobre mim',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/about');
                        }),
                  ),
              PopupMenuItem(
                value: 2,
                child: TextButton(
                    child: const Text(
                      'Contatos',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    }),
              ),
                ]),
      ),
      body: SlidingSheet(
        elevation: 1,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 120,
              ),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Olá, meu nome é',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Alex Duarte',
                  style: TextStyle(
                      fontFamily: "Soho",
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 2,
              ),
              Text(
                'Desenvolvedor Mobile | Flutter',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Soho", fontSize: 20),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            alignment: AlignmentDirectional.topCenter,
            margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
            height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    aboutAchivements('12', ' Projetos'),
                    aboutAchivements('3', ' Clientes'),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Especializado em',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Soho",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(FontAwesomeIcons.android, 'Android'),
                          mySpec(FontAwesomeIcons.apple, 'iOS'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(FontAwesomeIcons.mobile, 'Flutter'),
                            mySpec(FontAwesomeIcons.github, 'github'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpec(FontAwesomeIcons.google, 'Firebase'),
                            mySpec(FontAwesomeIcons.database, 'MySQL'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
