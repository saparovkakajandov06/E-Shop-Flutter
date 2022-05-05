// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:turkmen/pages/powerPage.dart';
// import 'package:turkmen/pages/vendedores.dart';
// import 'package:http/http.dart' as http;

// void main() => runApp(LoginApp());


// String user_name;

// class LoginApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'BagtSaherCRM',
//       home: LoginPage(),
//       routes: <String, WidgetBuilder>{
//         '/powerPage': (BuildContext context) => new Power(),
//         '/vendedores': (BuildContext context) => new Vendedores(),
//         '/LoginPage': (BuildContext context) => LoginPage(),
//       }
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
  
//   TextEditingController controllerUser = new TextEditingController();
//   TextEditingController controllerPass = new TextEditingController();

//   String message = '';

//   Future<List> login() async{
//     final response =await http.post("https://127.0.0.1/espocrm/application/Espo/Core/Authentication/Login/Login.php",
//     body: {
//           "user_name" : controllerUser.text,
//           "password" : controllerPass.text,
//     });
  

//   var datauser = json.decode(response.body);

//   if (datauser.length == 0) {
//     setState(() {
//       message="Meydancany dolduryn";
//     });
//   } else {
//       if (datauser[0]['user_name']==['admin'])
//       {
//         Navigator.pushReplacementNamed(context, '/powerPage');
//       }
//       else if (datauser[0]['user_name']==['system']){
//         Navigator.pushReplacementNamed(context, '/vendedores');
//       }
//       setState(() {
//         user_name = datauser[0]['user_name'];
//       });
//   }
//   return datauser;
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomPadding: false,
//       body: Form(
//           child: Container(
//             decoration: new BoxDecoration(
//                 image: new  DecorationImage(
//                   image: new AssetImage("assets/images/gun.png"),
//                   fit: BoxFit.cover
//                   ),

//             ),
//             child: Column(
//               children: <Widget>[
//                 new Container(
//                   padding: EdgeInsets.only(top: 77.0),
//                   child: new CircleAvatar(
//                     backgroundColor: Color(0xF81F7F3),
//                   child: new Image(
//                     width: 135,
//                     height: 135,
//                     image: new AssetImage('assets/images/bmw.png'),

//                     ),
//                   ),
//                   width: 170.0,
//                   height: 170.0,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                   ),

//                 ),
//                 Container(
//                     height: MediaQuery.of(context).size.height /2,
//                     width: MediaQuery.of(context).size.width,
//                     padding: EdgeInsets.only(top: 93),
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                             width: MediaQuery.of(context).size.width / 1.2,
//                             padding: EdgeInsets.only(
//                               top: 4,
//                               left: 16,
//                               right: 16,
//                               bottom: 4,
//                             ),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.all(
//                                   Radius.circular(50)
//                               ),
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(color: Colors.black12,blurRadius: 5),
//                               ],
//                             ),
//                             child: TextFormField(
//                               controller: controllerUser,
//                               decoration: InputDecoration(
//                                 icon: Icon(
//                                     Icons.email,
//                                     color: Colors.black,
//                                 ),
//                                 hintText: 'Ulanyjy ady',
//                               ),
//                             ),
//                         ),
//                         Container(
//                           width: MediaQuery.of(context).size.width / 1.2,
//                           height: 50,
//                           padding: EdgeInsets.only(
//                             top: 4,
//                             left: 16,
//                             right: 16,
//                             bottom: 4,
//                           ),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(50)),
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(
//                                  color: Colors.black12,
//                                  blurRadius: 5, 
//                               ),  
//                             ],
//                           ),
//                           child: TextField(
//                             controller: controllerPass,
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               icon: Icon(
//                                 Icons.vpn_key,
//                                 color: Colors.black,
//                               ),
//                               hintText: 'Password',
//                             ),
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: Padding(padding: const EdgeInsets.only(top: 6, right: 32),
//                           child: Text(
//                             'Acar sozi yatdan cykardynmy?',
//                             style: TextStyle(color: Colors.grey),
//                           ),
//                           ),
//                         ),
//                         Spacer(),
//                           new RaisedButton(
//                             onPressed: (){
//                               login();
//                               Navigator.pop(context);
//                             },
//                             child: new Text(
//                               "Girmek"
//                               ),
//                             color: Colors.orangeAccent,
//                             shape: new RoundedRectangleBorder(
//                               borderRadius: new BorderRadius.circular(30.0),
//                             ),
//                             ),
//                             Text(
//                               message,
//                               style: TextStyle(color: Colors.red, fontSize: 25.0),
//                               ),
                       
//                       ],
//                     ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//     );
//   }
// }


// e_commerce

import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
//
// import 'components/horizontal_listview.dart';

import 'package:turkmen/components/horizontal.dart';
import 'package:turkmen/components/products.dart';
import 'package:turkmen/pages/cart.dart';
import 'package:turkmen/pages/account.dart';
import 'package:turkmen/pages/order.dart';
import 'package:turkmen/pages/my_favourite.dart';
import 'package:turkmen/pages/settings.dart';
import 'package:turkmen/pages/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "e_Market",
      debugShowCheckedModeBanner: false,
      home: HomePageApp(),
    );
  }
}

class HomePageApp extends StatefulWidget {
  @override
  _HomePageAppState createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: new AppBar(
    elevation: 0.1,
     title: Text(
       "e_Market",
     ),
     centerTitle: true,
     backgroundColor: Colors.green[600],
     actions: <Widget>[
       new IconButton(
        icon: Icon(
        Icons.search,
        color: Colors.white,
         ),
        onPressed: (){},
       ),

       new IconButton(
         icon: Icon(
           Icons.shopping_cart,
         color: Colors.white,
         ),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
         },
       ),
       
     ],
      ),
   drawer: new Drawer(
     child: new ListView(
       children: <Widget>[
         //header
         //gapdalky menu
         new UserAccountsDrawerHeader(accountName: Text('Kakajan Saparow'), accountEmail: Text('saparovkakajandov06@gmail.com'),
         currentAccountPicture: GestureDetector(
           child: new CircleAvatar(
             backgroundColor: Colors.white,
             child: Icon(
               Icons.person,
               color: Colors.green[800],
               size: 65.0,
             ),
           ),
         ),
         decoration: BoxDecoration(
           color: Colors.green,
         ),
         ),

          //body of drawer

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePageApp()));
          },
          child: ListTile(
            title: Text('Baş sahypa',
            style: TextStyle(
              color: Colors.green[800],
            fontSize: 18.0,
            ),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.red[800],
              ),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new MyAccount()));
          },
          child: ListTile(
            title: Text(
              'Meniň Akkoundym',
              style: TextStyle(
              color: Colors.green[800],
              fontSize: 18.0,
            ),
            ),
            leading: Icon(
              Icons.person,
               color: Colors.red[800],
              ),
          ),
        ),

          InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Order()));
          },
          child: ListTile(
            title: Text(
              'Meniň sargytlarym',
            style: TextStyle(
            color: Colors.green[800],
            fontSize: 18.0,
            ),
            ),
            leading: Icon(
              Icons.shopping_basket,
               color: Colors.red[800],
               ),
          ),
        ),

         InkWell(
          onTap: (){},
          child: ListTile(
            title: Text(
              'Kategoriýalar',
            style: TextStyle(
              color: Colors.green[800],
            fontSize: 18.0
            ),
            ),
            leading: Icon(
              Icons.dashboard,
              color: Colors.red[800],
            ),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          },
          child: ListTile(
            title: Text(
              'Meniň Sebedim',
            style: TextStyle(
            color: Colors.green[800],
            fontSize: 18.0
            ),
            ),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.red[800],
            ),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Favourite()));
          },
          child: ListTile(
            title: Text(
              'Halanlarym',
            style: TextStyle(
            color: Colors.green[800],
            fontSize: 18.0,
            ),
            ),
            leading: Icon(
              Icons.favorite,
               color: Colors.red[800],
            ),
          ),
        ),

        Divider(),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Settings()));
          },
          child: ListTile(
            title: Text(
              'Sazlamalar',
            style: TextStyle(
            color: Colors.green[800],
            fontSize: 18.0
            ),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.red[800],
            ),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new About()));
          },
          child: ListTile(
            title: Text(
              'Biz barada',
            style: TextStyle(
              color: Colors.green[800],
            fontSize: 18.0
            ),
            ),
            leading: Icon(
              Icons.help, color: Colors.blue,
            ),
          ),
        ),

       ],
     ),
   ),
   body: new ListView(
    children: <Widget>[
     
      
      new Padding(
        padding: const EdgeInsets.all(8.0),
      child: new Text(
        'Kategoriýalar'
        ),
      ),

      HorizontalList(),

      new Padding(
        padding: const EdgeInsets.all(8.0),
      child: new Text('Soňky harytlar'),
      ),
      Container(
        height: 650.0,
        width: 150,
        child: Products(),
      ),
    ],
   ),
    );
  }
}


// e_commerce 



// flutter + django

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:turkmen/api/api.dart';
// import 'package:turkmen/models/todo.dart';
// import './screens/add.dart';

// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context)=> MainProvider(),
//       child: MaterialApp(
//         title: 'TurkmenInv',
//         theme: ThemeData(
//           primarySwatch: Colors.indigo,
//         ),
//         home: MyHomeApp(),
//       ),
//     );
//   }
// }

// class MyHomeApp extends StatefulWidget {
//   @override
//   _MyHomeAppState createState() => _MyHomeAppState();
// }

// class _MyHomeAppState extends State<MyHomeApp> {
//   @override
//   Widget build(BuildContext context) {
//     final mainP=Provider.of<MainProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'TurkmenInv',
//         ),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//           itemCount: mainP.todos.length,
//           itemBuilder: (BuildContext context, int index){
//             return ListTile(
//               trailing: IconButton(
//                 icon: Icon(
//                   Icons.delete,
//                   color: Colors.red[800],
//                 ),
//                 onPressed: (){
//                   mainP.deleteMain(mainP.todos[index]);
//                 }
//               ),
//             title: Text(
//               mainP.todos[index].title,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.indigo,
//               ),
//             ),
//               subtitle: Text(
//                 mainP.todos[index].description,
//                 style: TextStyle(
//                   color: Colors.blue[800],
//                   fontSize: 15,
//                 ),
//               ),
//             );
//           },
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add,
//         size: 30 ,),
//         onPressed: (){
//           Navigator.of(context).push(MaterialPageRoute(
//             builder: (ctx)=> AddMainScreen(),
//           ));
//         },
//       ),
//     );
//   }
// }

// flutter + django


// CRUD etmeli



// import 'package:flutter/material.dart';
// import 'package:turkmen/models/contact.dart';
// import 'package:turkmen/utils/database_helper.dart';

// void main(){
//   runApp(Crud());
// }

// class Crud extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'TurkmenInv',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: CrudApp(),
//     );
//   }
// }

// class CrudApp extends StatefulWidget {
//   @override
//   _CrudAppState createState() => _CrudAppState();
// }

// class _CrudAppState extends State<CrudApp> {

//   List<Contact> _contacts = [];

//   Contact _contact = Contact();
//   DatabaseHelper _dbHelper;


//   final _formKey = GlobalKey<FormState>();
//   final _ctrlName = TextEditingController();
//   final _ctrlMobile = TextEditingController();

//   @override
//   void initState(){
//     super.initState();
//     setState(() {
//       _dbHelper = DatabaseHelper.instance;
//     });
//     _refreshContactList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         title: Text(
//           "TurkmenInv",
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             _form(),
//             _list(),
//           ],
//         ),
//       ),
//     );
//   }

//   _form() => Container(
//     color: Colors.white,
//     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//     child: Form(
//       key: _formKey,
//       child: Column(
//         children: <Widget>[
//           TextFormField(
//             controller: _ctrlName,
//             decoration: InputDecoration(
//               labelText: 'Doly Inisialyňyz',
//             ),
//             onSaved: (val) => setState(()=>_contact.name = val),
//             validator: (val) =>
//             (val.length == 0 ? 'Meýdançany dolduryň': null),
//           ),
//           TextFormField(
//             controller: _ctrlMobile,
//             decoration: InputDecoration(
//               labelText: 'Telefon belgi',
//             ),
//              onSaved: (val) => setState(()=>_contact.mobile = val),
//             validator: (val) =>
//             (val.length < 10 ? '8 simwoldan az bolmaly däl': null),
//           ),
//           Container(
//             margin: EdgeInsets.all(10.0),
//             child: RaisedButton(
//               onPressed: () => _onSubmit(),
//               child: Text(
//                 'Giriz',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               color: Colors.indigo,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );

//   _refreshContactList() async{
//     List<Contact> x = await _dbHelper.fetchContacts();
//     setState(() {
//       _contacts = x;
//     });
//   }

//   _onSubmit() async{
//     var form = _formKey.currentState;
//     if(form.validate()) {
//       form.save();
//       if(_contact.id==null)
//         await _dbHelper.insertContact(_contact);
//       else
//         await _dbHelper.updateContact(_contact);
//       // setState(() {
//       //   // _contacts.add(_contact);
//       //   _contacts.add(Contact(id: null,name: _contact.name,mobile: _contact.mobile));
//       // });
//       await _dbHelper.insertContact(_contact);
//       _refreshContactList();
//       print(_contact.name);
//       form.reset();
//     }
//   }

//     _resetForm(){
//       setState(() {
//         _formKey.currentState.reset();
//         _ctrlName.clear();
//         _ctrlMobile.clear();
//         _contact.id = null;
//       });
//     }

//   _list() => Expanded(

//     child: Card(
//       margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
//       child: ListView.builder(
//         padding: EdgeInsets.all(8),
//           itemBuilder: (context,index){
//           return Column(
//             children: <Widget>[
//               ListTile(
//                 leading: Icon(Icons.account_circle,
//                 color: Colors.blue[800],
//                 size: 40.0,
//                 ),
//                 title: Text(
//                   _contacts[index].name.toUpperCase(),
//                   style: TextStyle(
//                     color: Colors.blue[800],
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 subtitle: Text(_contacts[index].mobile),
//                 trailing: IconButton(
//                   icon: Icon(
//                     Icons.delete_sweep,
//                     color: Colors.red,
//                   ),
//                   onPressed: () async{
//                     await _dbHelper.deleteContact(_contacts[index].id);
//                     _resetForm();
//                     _refreshContactList();
//                   },
//                 ),
//                 onTap: (){
//                   setState(() {
//                     _contact = _contacts[index];
//                     _ctrlName.text = _contacts[index].name;
//                     _ctrlMobile.text = _contacts[index].mobile;
//                   });
//                 },

//               ),
//               Divider(
//                 height: 5.0,
//               ),
//             ],
//           );
//           },
//         itemCount: _contacts.length,
//       ),
//     ),

//   );

// }

// CRUD etmeli



