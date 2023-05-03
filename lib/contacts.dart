import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
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
                  onPressed: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'alexduarteduartesilva@gmail.com',
                    );

                    if (await canLaunchUrl(emailLaunchUri.toString() as Uri)) {
                      await launchUrl(emailLaunchUri.toString() as Uri);
                    } else {
                    }
                  },
                  icon: const Icon(
                    FontAwesomeIcons.solidEnvelope,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    var url = Uri.parse('https://www.linkedin.com/in/alex-sduarte/');
                    launchUrl(url);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: () async {
                      var url = Uri.parse('https://github.com/aalexsd');
                      launchUrl(url);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}