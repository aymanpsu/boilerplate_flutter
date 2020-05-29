import 'package:flutter/material.dart';
import '../models/post_modal.dart';
import '../services/post_service.dart';
import 'dart:math';

final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class AddPost extends StatefulWidget {
  Post post;
  AddPost({this.post});

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  bool _isLoading = false;
  PostService _postService = PostService();
  final _formKey = GlobalKey<FormState>();
  var randomizer = new Random();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  int _userID;

  @override
  void initState() {
    super.initState();
  }

  void _sumbitForm() {
    print("start in sumbit process");
    setState(() => _isLoading = true);
    _userID = randomizer.nextInt(100);
    String title = _titleController.text.toString();
    String body = _bodyController.text.toString();
    int userId = int.parse(_userID.toString());
    Post postBody = Post(userId: userId, title: title, body: body);
    print(postBody);
    if (widget.post == null) {
      _postService.addPost(postBody).then((isSuccess) {
        setState(() => _isLoading = false);
        if (isSuccess) {
          print("done add new post");
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('AlertDialog Title'),
              content: Text("Success"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text("OK"),
                )
              ],
            ),
            barrierDismissible: true,
          );
        } else {
          print("faild add new post");
          _scaffoldState.currentState.showSnackBar(
            SnackBar(
              content: Text("field to add new post try agin"),
              action: SnackBarAction(
                label: "Undo",
                onPressed: () {},
              ),
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text('Add post'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _titleController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Title",
                    hintText: 'Enter title',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _bodyController,
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    labelText: "Body",
                    hintText: 'Enter body',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      // valiadate the form
                      if (_formKey.currentState.validate()) {
                        // Process data.
                        _sumbitForm();
                      } else {
                        _scaffoldState.currentState.showSnackBar(
                          SnackBar(
                            content: Text("Please fill all field"),
                            action: SnackBarAction(
                              label: "Undo",
                              onPressed: () {},
                            ),
                          ),
                        );
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
                _isLoading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
