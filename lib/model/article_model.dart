// import 'package:apinews/model/source_model.dart';

// class Article{
//   Source source;
//   String author;
//   String title;
//   String description;
//   String url;
//   String urlToImage;
//   String publishedAt;
//   String content;

//   Article({required this.source, required this.author, required this.title, required this.description, required this.url,
//           required this.urlToImage, required this.publishedAt, required this.content});


//   factory Article.fromJson(Map json){

//     return Article(
//     source: Source.fromJson(json["source"]),
//     author: json["author"] as String,
//     title: json["title"] as String,
//     description: json["description"] as String,
//     url : json["url"] as String,
//     urlToImage: json["urlToImage"] as String,
//     publishedAt: json["publishedAt"] as String,
//     content: json["content"] as String,

//   );
// }
// }



// import 'package:apinews/model/source_model.dart';

// class Article{
//   Source source;
//   String author;
//   String title;
//   String description;
//   String url;
//   String urlToImage;
//   String publishedAt;
//   String content;

//   Article ({required this.source, required this.author, required this.title, required this.description, 
//             required this.url, required this.urlToImage, required this.publishedAt, required this.content});

//   factory Article.fromJson(Map json){
//     return Article(
//       source: Source.fromJson(json["source"]), 
//       author: json["author"] as String, 
//       title: json["title"] as String, 
//       description: json["description"] as String, 
//       url: json["url"] as String,
//       urlToImage: json["urlToImage"] as String, 
//       publishedAt: json["publishedAt"] as String,
//       content: json["content"] as String,
//       );
//   }

// }


// import 'package:apinews/model/source_model.dart';

// class Article {
//   Source source;
//   String author;
//   String title;
//   String description;
//   String url;
//   String urlToImage;
//   String publishedAt;
//   String content;

//   Article ({required this.source, required this.author, required this.title,
//             required this.description, required this.url, required this.urlToImage,
//             required this.publishedAt, required this.content});


//   factory Article.fromJson(Map json){
//     return Article(
//       source: Source.fromJson(json["source"]), 
//       author: json["author"], 
//       title: json["title"], 
//       description: json["description"], 
//       url: json["url"], 
//       urlToImage: json["urlToImage"], 
//       publishedAt: json["publishedAt"], 
//       content: json["content"]
//       );
//   }
// }

import 'package:apinews/model/source_model.dart';

class Article{
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({required this.source, required this.author, required this.title,
            required this.description, required this.url, required this.urlToImage,
            required this.publishedAt, required this.content});


  factory Article.fromJson(json){
    return Article(
      source: Source.fromJson(json["source"]),
      author: json["author"], 
      title: json["title"], 
      description: json["description"], 
      url: json["url"], 
      urlToImage: json["urlToImage"], 
      publishedAt: json["publishedAt"], 
      content: json["content"]
      );
  }
}