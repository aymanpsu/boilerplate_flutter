import 'package:http/http.dart' as http;
import '../models/post_modal.dart';

class PostService{
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  //get posts from api
  Future<List<Post>> getPosts() async {
    final response = await http.get("$baseUrl/posts");
    print(response.body);
    // If the server did return a 200 OK response, then parse the JSON.
    if (response.statusCode == 200) {
      print("sucess");
      final posts = postFromJson(response.body);
      return posts;
    } else {
      // If the server did not return a 200 OK response, then throw an exception.
      throw Exception('Failed to load posts');
    }
  }

  Future<bool> addPost(Post data) async {
    final response = await http.post(
      "$baseUrl/posts",
      headers: {"content-type": "application/json"},
      body: postToJson(data),
    );
    if (response.statusCode == 201) {
      print("sucess");
      final addedPost = response.body;
      print(addedPost);
      return true;
    } else {
      return false;
    }
  }
}