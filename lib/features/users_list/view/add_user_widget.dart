// import 'package:flutter/material.dart';
//
// import '../data/schema/user_schema.dart';
//
// class AddUserWidget extends StatelessWidget {
//   final Function(UserSchema) onAdd;
//   final TextEditingController textController = TextEditingController();
//
//   AddUserWidget({Key? key, required this.onAdd}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           TextField(
//             controller: textController,
//             decoration: const InputDecoration(
//               hintText: "Enter User's full name",
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               if (textController.text.isNotEmpty) {
//                 UserSchema user = UserSchema(fullName: textController.text);
//                 onAdd(user);
//               }
//             },
//             child: const Text('Add User'),
//           )
//         ],
//       ),
//     );
//   }
// }
