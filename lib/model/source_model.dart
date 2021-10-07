// class Source{
//   String id;
//   String name;

//   Source({required this.id, required this.name});


// factory Source.fromJson(Map json){
//   return Source(
//     id: json["id"],
//     name: json["name"]
//   );
  
// }

// }





// class Source{
//   String id;
//   String name;

//   Source({required this.id, required this.name});

// factory Source.fromJson(Map json){
//   return Source(
//     id: json["id"], 
//     name: json["name"]
//     );
// }


// }


class Source{
  String id;
  String name;

  Source({required this.id, required this.name});

  factory Source.fromJson(json){
    return Source(
      id: json["id"], 
      name: json["name"]
      );
  }


}