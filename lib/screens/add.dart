// import 'package:flutter/material.dart';
// import 'package:turkmen/api/api.dart';
// import 'package:turkmen/models/todo.dart';
// import 'package:provider/provider.dart';

// class AddMainScreen extends StatefulWidget {
//   @override
//   _AddMainScreenState createState() => _AddMainScreenState();
// }

// class _AddMainScreenState extends State<AddMainScreen> {

//   final mainTitleController = TextEditingController();
//   final mainDesController = TextEditingController();

//   void onAdd(){
//     final String titleVal = mainTitleController.text;
//     final String desVal = mainDesController.text;

//     if(titleVal.isNotEmpty && desVal.isNotEmpty){
//       final Main main=Main(
//         title: titleVal,
//         description: desVal
//       );
//       Provider.of<MainProvider>(context, listen: false).addMain(main);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Maglumat Giriz. . .",
//         ),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             child: Column(
//               children: <Widget>[
//                 TextField(
//                   controller: mainTitleController,
//                 ),
//                 TextField(
//                   controller: mainDesController,
//                 ),
//                 RaisedButton(
//                   child: Text(
//                     "Goş",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                     // onPressed: onAdd,
//                   onPressed: (){
//                     onAdd();
//                     Navigator.of(context).pop();
//                   },

//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
