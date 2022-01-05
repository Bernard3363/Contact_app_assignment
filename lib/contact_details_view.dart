import 'package:contactapp/contact_model.dart';
import 'package:flutter/material.dart';

class ContactDetailsView extends StatelessWidget {
  const ContactDetailsView({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'Contacts',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView(
          children: [
            const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/photos/compliance-rules-and-law-regulation-policy-concept-picture-id1288116976?b=1&k=20&m=1288116976&s=170667a&w=0&h=MUex0dlbYgHe5UeIaex20cVkz5gqGzNuSnDTcyo5LCY=')),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                contact.name,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Center(
              child: Text(
                '${contact.region}, ${contact.country}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      "Mobile",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(contact.phone),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.message,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.call,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          ),
                        )
                      ],
                    ),
                  ),
                  //second column
                  ListTile(
                    title: const Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(contact.email),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //third column
                  const ListTile(
                    title: Text(
                      "Group",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text("BELIEVE THE BOY"),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Account Linked",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  ListTile(
                    title: const Text(
                      "Telegram",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://image.pngaaa.com/53/1461053-middle.png')),
                  ),
                  // ignore: prefer_const_constructors
                  ListTile(
                    title: const Text(
                      "WhatsApp",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'http://assets.stickpng.com/images/580b57fcd9996e24bc43c543.png'),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'More Options',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      "Share Contact",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "QR Code",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
