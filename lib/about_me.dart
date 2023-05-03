import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: const [
              SizedBox(
                height: 120,
              ),
              Text(
                'Olá, meu nome é',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Alex Duarte',
                  style: TextStyle(color: Colors.white, fontSize: 40)),
              SizedBox(
                height: 50,
              ),
              Text(
                'E aí, pessoal! Sou um entusiasta de tecnologia! Com 22 anos de idade, já tenho 5 anos de experiência no mercado de tecnologia - posso dizer que já vi um pouco de tudo nessa área.\n'
                    '\nE durante esse percurso, percebi que a minha verdadeira vocação é programar em mobile, especialmente em Flutter. Me amarro na maneira como ele torna a criação de aplicativos móveis elegante e eficiente. Para mim, programar em Flutter é como construir uma casa com Lego - divertido e desafiador ao mesmo tempo.\n'
                    '\nAlém disso, sou uma pessoa tranquila, sempre aberta a novas ideias e gosto de trabalhar em equipe. Gosto de aprender e me aperfeiçoar sempre que posso - por isso, estou sempre procurando novos desafios e oportunidades para crescer.\n'
                    '\nEntão, se você está procurando um desenvolvedor mobile com muita vontade e dedicação, é só me chamar que eu estou pronto para ajudar!',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}