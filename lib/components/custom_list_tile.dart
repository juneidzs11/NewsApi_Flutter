// import 'package:apinews/model/article_model.dart';
// import 'package:apinews/pages/article_page.dart';
// import 'package:flutter/material.dart';

// Widget customListTile(Article article, BuildContext context) {
//   return InkWell(
//     onTap: (){
//       Navigator.push(context, MaterialPageRoute(builder: (context){
//         return ArticlePage(article: article);
//       })
//       );
//     } ,
//     child: Container(
//       padding: EdgeInsets.all(8),
//       margin: EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 3,
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 200,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(image: NetworkImage(article.urlToImage),
//               fit: BoxFit.cover),
//               borderRadius: BorderRadius.circular(12),
  
//             ),
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Container(
//             padding: EdgeInsets.all(6),
//             decoration: BoxDecoration(
//                 color: Colors.red, borderRadius: BorderRadius.circular(18)),
//             child: Text(article.source.name, style: TextStyle(color: Colors.white),),
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Text(article.title, style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 16
//           ),)
//         ],
//       ),
//     ),
//   );
// }

// import 'package:apinews/model/article_model.dart';
// import 'package:apinews/pages/article_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// Widget customListTile(Article article, BuildContext context){

// return InkWell(
//   onTap: (){
//     Navigator.push(context, MaterialPageRoute(builder: (context){
//       return ArticlePage(article: article);
//     }));
//   },
//   child:   Container(
  
//     padding: EdgeInsets.all(8),
  
//     margin: EdgeInsets.all(12),
  
//     decoration: BoxDecoration(
  
//       color: Colors.white,
  
//       borderRadius: BorderRadius.circular(18),
  
//       boxShadow: [
  
//         BoxShadow(color: Colors.black12, blurRadius: 5),
  
        
  
//       ]),
  
//     child: Column(
  
//       mainAxisAlignment: MainAxisAlignment.start,
  
//       crossAxisAlignment: CrossAxisAlignment.start,
  
//       children: [
  
//         Container(
  
//           height: 200,
  
//           width: double.infinity,
  
//           decoration: BoxDecoration(
  
//             borderRadius: BorderRadius.circular(12),
  
//             image: DecorationImage(image: NetworkImage(article.urlToImage), fit: BoxFit.cover),       
  
//           )
  
//         ),
  
//         SizedBox(
  
//           height: 8,
  
//         ),
  
//         Container(
  
//           padding: EdgeInsets.all(5),
  
//           decoration: BoxDecoration(
  
//             borderRadius: BorderRadius.circular(10),
  
//             color: Colors.red
  
//           ),
  
//           child: Text(article.source.name, style: TextStyle(color: Colors.white,),
  
//           )
  
//         ),
  
//         SizedBox(
  
//           height: 8,
  
//         ),
  
//         Text(article.title)
  
  
  
//       ]),
  
//   ),
// );
// }




import 'package:apinews/model/article_model.dart';
import 'package:apinews/pages/article_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Widget customListTile(Article article, BuildContext context){

  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return ArticlePage(article: article,);

      }));
    },
    child: Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white54,
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
                        image: DecorationImage(image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
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
                      child: Text(article.source.name, style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Text(article.title, style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
      ),
  );
}






















