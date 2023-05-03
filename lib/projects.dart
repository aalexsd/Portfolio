import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, star, repoLink) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {
                      // Convert the repoLink string to a Uri object
                      var url = Uri.parse(repoLink);
                      // Redirect to the GitHub repository
                      launchUrl(url);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Projetos'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                  'FLUTTER', 'Ecommerce', 'An ecommerce application', '6', 'https://github.com/aalexsd/Minha-Loja'),
              projetCard('FLUTTER', 'Login App',
                  'Login app using firebase as backend', '8', 'https://github.com/aalexsd/Login_firebase'),
              projetCard(
                  'FLUTTER', 'ToDo List', 'A ToDo Application.', '5', 'https://github.com/aalexsd/To-Do-List'),
              projetCard(
                  'FLUTTER', 'Journal', 'A Journal Application.', '7', 'https://github.com/aalexsd/Projeto_Diario'),
              projetCard('FLUTTER', 'CleanApp', 'An app to control cleaning', '4', 'https://github.com/aalexsd/projeto-limpeza'),
              projetCard('FLUTTER', 'MobFlix', 'A Netflix Clone', '3', 'https://github.com/aalexsd/MobFlix'),
              projetCard('FLUTTER', 'Linkedin Clone', 'A Linkedin Clone', '3', 'https://github.com/aalexsd/linkedin-clone'),
            ],
          ),
        ),
      ),
    );
  }
}
