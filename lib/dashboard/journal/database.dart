import 'package:appdevnursie/dashboard/journal/post.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase_database/firebase_database.dart';

final databaseReference = FirebaseDatabase.instance.reference();

DatabaseReference savePost(Post post){
  var id = databaseReference.child('Symptoms/').push();
  id.set(post.toJson());
  return id;
}

Future<List<Post>> getAllPosts() async {
  DataSnapshot dataSnapshot = await databaseReference.child('Symptoms/').once();
  List<Post> posts = [];
  if (dataSnapshot.value != null) {
    dataSnapshot.value.forEach((key, value) {
      Post post = createPost(value);
      post.setId(databaseReference.child('Symptoms/' + key));
      posts.add(post);
    });
  }
  return posts;
}

