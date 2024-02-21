// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<String> todoList = [];

//   var itemController = TextEditingController();

//   Future<void> addTodo() async {
//     var todo = await Hive.openBox('todos');
//     todo.put('todoList', todoList);
//     setState(() {});
//   }

//   Future<void> fetchTodos() async {
//     var todo = await Hive.openBox('todos');
//     if (todo.get('todoList') != null) {
//       todoList = (todo.get('todoList') as List)
//           .map((item) => item.toString())
//           .toList();
//     }
//     print(todo.get('todoList'));
//   }

//   Future<void> delete(int index) async {
//     todoList.removeAt(index);
//     var todo = await Hive.openBox('todos');
//     todo.put('todoList', todoList);
//     setState(() {});
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchTodos().then((value) {
//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text('Students'),
//               TextField(
//                 // controller: itemController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: addTodo,
//                   child: const Text('Add'),
//                 ),
//               ),
//               // Expanded(
//               //   child:ListView.builder(
//               //     itemBuilder: (_, index) {
//               //       return ListTile(
//               //         title: Text(todoList[index]),
//               //         trailing: IconButton(
//               //           icon: Icon(Icons.delete),
//               //           onPressed: () => delete(index),
//               //         ),
//               //       );
//               //     },
//               //     itemCount:todoList.length,
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
