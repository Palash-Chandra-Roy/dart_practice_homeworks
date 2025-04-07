/*import 'dart:convert';
import 'dart:io';

Future<Post> fachPost(int id) async {
  final url = 'https:jsonplaceholder.typicode.com/posts/$id';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw HttpException('${response.statusCode}');
  }
}

void main() async {
  try {
    int id = 1;
    var post = await fachPost(id);
    print("Post with $id: $post");
  } on SocketException catch (e) {
    print(e);
  } on HttpException catch (e) {
    print(e);
  } on FormatException catch (e) {
    print(e); 
  }
}
*/

// Node this measage in dart import package : https/http.dart as https;
import 'dart:convert';

import 'dart:io';
import 'package:https/http.dart' as http;

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  @override
  String toString() {
    return 'ID: $id\nTitle: $title\nBody: $body';
  }
}

Future<Post> fetchPost(int id) async {
  final url = 'https://jsonplaceholder.typicode.com/posts/$id';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw HttpException('Failed to load post: ${response.statusCode}');
  }
}

void main() async {
  try {
    int id = 1;
    var post = await fetchPost(id);
    print("Post with ID $id:\n$post");
  } on SocketException {
    print("No internet connection.");
  } on HttpException catch (e) {
    print(e);
  } on FormatException {
    print("Invalid data format received.");
  }
}
