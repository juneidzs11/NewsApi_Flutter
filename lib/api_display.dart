import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiDisplay extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    displayData() async {
      // var url = Uri.parse("https://newsapi.org/v2/top-headlines/sources?category=business&apiKey=8799742f14a24ac9a8947d9a55c43d41");
      // http.Response response = await http.get(url);
      // String data = response.body;
      // var jsonData = jsonDecode(data);
      // print(jsonData);

      var users = [];
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=8799742f14a24ac9a8947d9a55c43d41"));
      var jsonData = jsonDecode(response.body);
      print(jsonData);
      for (var i in jsonData) {
        articleModel user = articleModel(i["articles"]);
        users.add(user);
      }
      return users;
    }
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: displayData(),
          builder: (context, snapshot){
            List? data = snapshot.data as List?;
            if (data == null) {
              return Container(child: Text("Nothing in Api"),);
            } else {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i){
                return ListTile(
                  title: Text(data[i]),
                  // subtitle: Text(data[i].title)
                );
              });
            }
          }),
      ),
    );
  }
}
class articleModel{
  var articles;
  articleModel(this.articles);
}

class userModel{
  var author;
  var title;
  var discription;

  userModel(this.author, this.title, this.discription);
}