import 'package:contactapp/contact_model.dart';
import 'package:contactapp/contact_details_view.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import 'contact_details_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, dynamic>> data = [
    {
      "name": "Teni Duapa",
      "phone": "866-6863",
      "email": "pulvinar@protonmail.net",
      "country": "Brazil",
      "region": "Istanbul"
    },
    {
      "name": "Sir Samuel Esssuman",
      "phone": "1-963-615-5146",
      "email": "ad.litora@yahoo.com",
      "country": "Turkey",
      "region": "Munster"
    },
    {
      "name": "Nigel Akye",
      "phone": "481-0724",
      "email": "ullamcorper.magna@aol.com",
      "country": "Austria",
      "region": "Pernambuco"
    },
    {
      "name": "Judith",
      "phone": "0254761342",
      "email": "helinamvhim@gmail.com",
      "country": "Ghana",
      "region": "Tarkwa"
    },
    {
      "name": "Bridget",
      "phone": "glowman@gmail.com",
      "email": "hannamangyan@gmail.com",
      "country": "Ghana",
      "region": "Koforidua"
    },
    {
      "name": "Rosaria",
      "phone": "0267186523",
      "email": "authorityman@gmail.com",
      "country": "Ghana",
      "region": "Eastern Region"
    },
    {
      "name": "Bernard Kwesi Quayson",
      "phone": "0241663731",
      "email": "bernardquayson18@gmail.com",
      "country": "Germany",
      "region": "Berlin"
    },
    {
      "name": "Claude Amadu",
      "phone": "0245671832",
      "email": "videogames@gmail.com",
      "country": "Ghana",
      "region": "Sekondi-western"
    },
    {
      "name": "Mummy",
      "phone": "0572431657",
      "email": "victoriamasai@gamail.com",
      "country": "Ghana",
      "region": "takoradi"
    },
    {
      "name": "Daddy",
      "phone": "0567278179",
      "email": "terkkwa1@gmail.com",
      "country": "Sweden",
      "region": "Ninh Thuận"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black),
        ),
        actions: const [
          Center(
            child: CircleAvatar(
              radius: 25,
              backgroundImage:NetworkImage('https://images.unsplash.com/photo-1509479200622-4503f27f12ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGFub255bW91cyUyMG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search by name or number',
                  prefixIcon: const Icon(Icons.search)),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Recents",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            ListView.separated(
                //controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return  ListTile(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder:  (context){
                        return ContactDetailsView(
                          contact: Contact(name: 'Bernard', 
                          phone: '+233 24 166 3731', 
                          email: 'bernardquayson18@gmail.com', 
                         country: 'Ghana', 
                          region: 'Western Region'));
                      }));
                    },
                    leading:const CircleAvatar(
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGFub255bW91cyUyMG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
                      radius: 25,
                    ),
                    title: const Text(
                      "Bernard Kwesi Quayson",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: const Text(
                      "+233 55 700 1326",
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 25,
                    thickness: 2,
                  );
                },
                itemCount: 3),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Contacts",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
            GroupedListView<Map<String, dynamic>, String>(
              shrinkWrap: true,
              //controller: _scrollController,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    groupByValue.substring(0, 1),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
              itemBuilder: (context, Map<String, dynamic> element) {
                Contact contact = Contact.fromJson(element);
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return  ContactDetailsView(contact: contact,);
                        }));
                      },
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1540206395-68808572332f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
                        radius: 25,
                      ),
                      title: Text(
                        '${element['name']}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      subtitle: Text(
                        '${element['phone']}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    ),
                    const Divider(
                      indent: 25,
                      thickness: 2,
                    )
                  ],
                );
              },
              itemComparator: (item1, item2) =>
                  item1['name'].compareTo(item2['name']), // optional
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC, // optional
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1A4ADA),
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
