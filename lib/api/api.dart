// import 'dart:convert';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import '../models/todo.dart';
// import 'package:http/http.dart' as http;


// class MainProvider with ChangeNotifier {

//   MainProvider(){
//     this.fetchTasks();
//   }

//   List<Main> _todos = [];

//   List<Main> get todos {
//     return[..._todos];
//   }

//   void addMain(Main main)async{
//     final response =
//     await http.post('http://192.168.200.152:8000/apis/v1/',
//         headers: {"Content-Type":"application/json"},
//         body: json.encode(main));
//     if(response.statusCode == 201){
//       main.id=json.decode(response.body)['id'];
//       _todos.add(main);
//       notifyListeners();
//     }
//   }

//   void deleteMain(Main main)async{
//     final response = 
//         await http.delete('http://192.168.200.152:8000/apis/v1/${main.id}/');
//     if(response.statusCode==204){
//       _todos.remove(main);
//       notifyListeners();
//     }
//   }




// fetchTasks() async{
//     final url = 'http://192.168.200.152:8000/apis/v1/?format=json';
//     final response = await http.get(url);
//     if(response.statusCode == 200){
//       var data=json.decode(response.body) as List;
//       _todos = data.map<Main>((json) => Main.fromJson(json)).toList();
//       notifyListeners();
//     }
// }

// }
