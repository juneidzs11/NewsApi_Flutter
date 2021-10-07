// import 'package:apinews/api_data.dart';
// import 'package:apinews/api_display.dart';
import 'package:apinews/components/custom_list_tile.dart';
import 'package:apinews/model/article_model.dart';
import 'package:apinews/services/api_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      // routes: {
      //   "/apidata": (context) => ApiData(),
      //   "/apidisplay": (context)=> ApiDisplay(),
      // },
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ApiService client = ApiService();
    return Scaffold(
      appBar: AppBar(
        title: Text("ApiNews", style: TextStyle(color: Colors.cyan,),),
        backgroundColor: Colors.white,
      ),
     body: FutureBuilder(
       future: client.getArticle(),
       builder: (BuildContext context, AsyncSnapshot snapshot){
         if (snapshot.hasData) {
           List<dynamic> data = snapshot.data;
           return ListView.builder(
             itemCount: data.length,
             itemBuilder: (context,index){
               return customListTile(data[index],context);             
             });
           
         } else {
           return Center(
             child: CircularProgressIndicator(),
           );
         }
       })
    );
  }
}

// class HomepPage extends StatefulWidget {
//   @override
//   _HomepPageState createState() => _HomepPageState();
// }
// class _HomepPageState extends State<HomepPage> {
//   @override
//   Widget build(BuildContext context) {
//     void getApi(){
//       Navigator.of(context).pushNamed("/apidata");
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ApiNews", style: TextStyle(color: Colors.black)),
//         backgroundColor: Colors.white,
//       ),
//       body: Container(
//         child: Center(
//           child: ElevatedButton(onPressed: getApi, child: Text("Get")),
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatefulWidget {

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     ApiService client = ApiService();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ApiNews", style: TextStyle(color: Colors.black),),
//         backgroundColor: Colors.white,

//       ),
//       body: FutureBuilder(
//         future: client.getArticle(),
//         builder: (BuildContext context, AsyncSnapshot snapshot){
//           if (snapshot.hasData) {
//           List<dynamic> data = snapshot.data;

//           return ListView.builder(
//             itemCount: data.length,
//             itemBuilder: (context, index){
//               // return ListTile(
//               //   title: Text(data[index].title),
//               // );
//               return customListTile(data[index], context);

//             });
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         }),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     ApiService client = ApiService();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "ApiNews",
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: FutureBuilder(
//           future: client.getArticle(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.hasData) {
//               List<dynamic> data = snapshot.data;
//               return ListView.builder(
//                   itemCount: data.length,
//                   itemBuilder: (context, index) {
//                     return customListTile(data[index], context);
//                   });
//             } else {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           }),
//     );
//   }
// }

