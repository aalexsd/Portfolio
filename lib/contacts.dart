import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

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

                CupertinoButton(
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CupertinoAlertDialog(
                          title: const Text('Phone Number'),
                          content: const Text('+5561983449808'),
                          actions: [
                            CupertinoDialogAction(
                              child: const Text('CALL'),
                              onPressed: () async {
                                Navigator.of(context).pop();
                                const phoneUrl = 'tel:+5561983449808';
                                if (await canLaunchUrl(phoneUrl as Uri)) {
                                  await launchUrl(phoneUrl as Uri);
                                } else {
                                  throw 'Could not launch $phoneUrl';
                                }
                              },
                            ),
                            CupertinoDialogAction(
                              child: const Text('CANCEL'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Icon(
                    FontAwesomeIcons.phone,
                    color: CupertinoColors.white,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    var url = Uri(
                      scheme: 'mailto',
                      path: 'alexduarteduartesilva@gmail.com',
                      queryParameters: {
                        'subject': 'Hi Alex!',
                        'body': 'Type your message here!'
                      },
                    );
                    launchUrl(url);
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
