// import 'package:flutter/material.dart';
// import 'package:labact/data/hiveboxes.dart';
// import 'package:labact/modals/person.dart';

// class ProfScreen extends StatefulWidget {
//   ProfScreen({super.key});

//   @override
//   State<ProfScreen> createState() => _ProfScreenState();
// }

// class _ProfScreenState extends State<ProfScreen> {
//   var nameCon = TextEditingController();

//   var addressCon = TextEditingController();

//   var emailCon = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     if (personBox.isNotEmpty == true) {
//       Person p = personBox.getAt(personBox.length - 1);
//       nameCon.text = p.fn;
//       addressCon.text = p.address;
//       // emailCon.text = p.email;
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile Screen'),
//         // actions: [
//         //   IconButton(
//         //     icon: Icon(Icons.save),
//         //     onPressed: () {
//         //       personBox.put(
//         //           nameCon.text,
//         //           Person(
//         //             fn: nameCon.text,
//         //             address: addressCon.text,
//         //           ));
//         //       setState(() {});
//         //     },
//         //   ),
//         // ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameCon,
//               decoration: const InputDecoration(
//                 label: Text('Name'),
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   personBox.put(
//                     nameCon.text,
//                     Person(
//                         fn: nameCon.text,
//                         address: addressCon.text,
//                         email: emailCon.text),
//                   );
//                   //  ),);
//                 });
//               },
//             ),
//             TextField(
//               controller: addressCon,
//               decoration: const InputDecoration(
//                 label: Text('address'),
//               ),
//             ),
//             TextField(
//               controller: emailCon,
//               decoration: const InputDecoration(
//                 label: Text('email'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
