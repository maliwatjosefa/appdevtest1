import 'package:appdevnursie/dashboard/journal/post.dart';
import 'package:flutter/material.dart';

class PostList extends StatefulWidget {
  final List<Post> listItems;

  PostList(this.listItems);
  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  void like(Function callback) {
    this.setState(() {
      callback();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.widget.listItems.length,
        itemBuilder: (context, index) {
          var post = this.widget.listItems[index];
          var sub = post.input;
          var sub2 = post.dateTime;
          var subtitle = '$sub    $sub2';
          return Card(
              color: Color(0xffefe6dd),
              child: Row(children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text(post.category),
                    subtitle: Text(subtitle),
                    isThreeLine: true, 
                  )
                ),
          ]));
        });
  }
}