// import 'package:apinews/model/article_model.dart';
// import 'package:flutter/material.dart';

// class ArticlePage extends StatefulWidget {

// final Article article;

// ArticlePage({required this.article});

//   @override
//   State<ArticlePage> createState() => _ArticlePageState();
// }

// class _ArticlePageState extends State<ArticlePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.article.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 200,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 image: DecorationImage(image: NetworkImage(widget.article.urlToImage),
//                 fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(12),
  
//               ),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Container(
//               padding: EdgeInsets.all(6),
//               decoration: BoxDecoration(
//                   color: Colors.red, borderRadius: BorderRadius.circular(18)),
//               child: Text(widget.article.source.name, style: TextStyle(color: Colors.white),),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Text(widget.article.description, style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16
//             ),)
//           ],
//         ),
//       )
      
//     );
//   }
// }


// import 'package:apinews/model/article_model.dart';
// import 'package:flutter/material.dart';

// class ArticlePage extends StatefulWidget {
//   final Article article;

//   ArticlePage({required this.article});

//   @override
//   _ArticlePageState createState() => _ArticlePageState();
// }

// class _ArticlePageState extends State<ArticlePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.article.title),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(8),
  
//     margin: EdgeInsets.all(12),
//         child: Column(
        
//         mainAxisAlignment: MainAxisAlignment.start,
        
//         crossAxisAlignment: CrossAxisAlignment.start,
        
//         children: [
        
//           Container(
        
//             height: 200,
        
//             width: double.infinity,
        
//             decoration: BoxDecoration(
        
//               borderRadius: BorderRadius.circular(12),
        
//               image: DecorationImage(image: NetworkImage(widget.article.urlToImage), fit: BoxFit.cover),       
        
//             )
        
//           ),
        
//           SizedBox(
        
//             height: 8,
        
//           ),
        
//           Container(
        
//             padding: EdgeInsets.all(5),
        
//             decoration: BoxDecoration(
        
//               borderRadius: BorderRadius.circular(10),
        
//               color: Colors.red
        
//             ),
        
//             child: Text(widget.article.source.name, style: TextStyle(color: Colors.white,),
        
//             )
        
//           ),
        
//           SizedBox(
        
//             height: 8,
        
//           ),
        
//           Text(widget.article.description)
        
        
        
//         ]),
//       ),
      
//     );
//   }
// }


import 'package:apinews/api_display.dart';
import 'package:apinews/model/article_model.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {


final Article article;

ArticlePage({required this.article});
  

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.title),
      ),
      body: Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 5, color: Colors.black12),
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(widget.article.urlToImage), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                      ),
                      child: Text(widget.article.source.name),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Text(widget.article.description),
                    )
                  ],
                ),
      ),
    );
  }
}