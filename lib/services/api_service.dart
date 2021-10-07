import 'dart:convert';

import 'package:apinews/model/article_model.dart';
import 'package:http/http.dart' as http;


class ApiService{
  Future<List<Article>> getArticle()async{
    var response = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=8799742f14a24ac9a8947d9a55c43d41"));
    Map json = jsonDecode(response.body);
    List<dynamic> body = json["articles"];
    List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).cast<Article>().toList();

    if (response.statusCode == 200) {
    return articles;
      
    } else {
      throw ("Can't get Api");
    }

  }
}
























// import 'dart:convert';

// import 'package:apinews/model/article_model.dart';
// import 'package:http/http.dart' as http;

// class ApiService{
//   // final endPointUrl = Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=8799742f14a24ac9a8947d9a55c43d41");

//   Future<List<Article>> getArticle()async{

//     var response = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=8799742f14a24ac9a8947d9a55c43d41"));
//     Map json = jsonDecode(response.body);
//     List<dynamic> body = json["articles"];
//     List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).cast<Article>().toList();

// if (response.statusCode == 200) {
//   return articles;
      
//     } else {
//       throw ("Can't get the Articles");
//     }
    
//   }
// }

// //     http.Response res = await http.get(endPointUrl);


// //     if (res.statusCode == 200) {
// //       Map<String, dynamic> json = jsonDecode(res.body);

// //       List<dynamic> body = json["articles"];

// //       List<Article> articles = 
// //           body.map((dynamic item) => Article.fromJson(item)).cast<Article>().toList();

// //       return articles;
      
// //     } else {
// //       throw ("Can't get the Articles");
// //     }
    
// //   }
// // }



// import 'dart:convert';

// import 'package:apinews/model/article_model.dart';
// import 'package:http/http.dart' as http;

// class ApiService{

// Future<List<Article>> getArticle()async{
//   var response = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=8799742f14a24ac9a8947d9a55c43d41"));
//   Map json = jsonDecode(response.body);
//   List<dynamic> body = json["articles"];
//   List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).cast<Article>().toList();

//   if (response.statusCode == 200) {
//     return articles;
    
//   } else {
//     throw ("Can't get Api");
//   }
// }

// }




// import 'dart:convert';

// import 'package:apinews/model/article_model.dart';
// import 'package:http/http.dart' as http;

// class ApiService{
//   Future<List<Article>> getArticle()async{
//     var response = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=8799742f14a24ac9a8947d9a55c43d41"));
//     Map json = jsonDecode(response.body);
//     List<dynamic> body = json["articles"];
//     List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).cast<Article>().toList();

//     if (response.statusCode == 200) {
//       return articles;
//     } else {
//       throw ("Can't get Api");
//     }  

//   }
  
  
// }