import 'package:flutter/material.dart';
import 'package:labact/data/hiveboxes.dart';
import 'package:labact/modals/person.dart';
import 'package:labact/screens/profileScreen.dart';

class PersonHomeScreen extends StatefulWidget {
  const PersonHomeScreen({super.key});

  @override
  State<PersonHomeScreen> createState() => _PersonHomeScreenState();
}

class _PersonHomeScreenState extends State<PersonHomeScreen> {
  var fnController = TextEditingController();
  var addressController = TextEditingController();
  var emailCon = TextEditingController();

  void add() async {
    setState(() {
      personBox.add(
        Person(
            fn: fnController.text,
            address: addressController.text,
            email: emailCon.text),
      );
    });
  }

  void delete(int index) async {
    setState(() {
      personBox.deleteAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       ListTile(
      //         title: const Text('Profile'),
      //         onTap: () {
      //           // Navigator.push(
      //           //   context,
      //           //   MaterialPageRoute(
      //           //     builder: (context) => ProfScreen(),
      //           //   ),
      //           // );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: fnController,
              decoration: const InputDecoration(
                labelText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: add,
                    child: const Text("ADD"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: personBox.length,
                itemBuilder: (_, index) {
                  var person = personBox.getAt(index) as Person;
                  return Dismissible(
                    key: UniqueKey(), //Key(person.fn),
                    direction: DismissDirection.endToStart,
                    child: Card(
                      child: ListTile(
                        title: Text(person.fn),
                        subtitle: Text(person.address),
                      ),
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        personBox.deleteAt(index);
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
