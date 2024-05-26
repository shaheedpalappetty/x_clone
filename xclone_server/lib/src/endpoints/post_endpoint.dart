// ignore_for_file: deprecated_member_use_from_same_package

import 'package:serverpod/serverpod.dart';
import 'package:xclone_server/src/generated/post.dart';

class PostEndpoint extends Endpoint {
  // Future<String> hello(Session session, String name) async {
  //   return 'Hello $name';
  // }

 Future<void> createPost(Session session, Post post) async {
  await Post.db.insertRow(session, post);
}

 Future<void> deletePost(Session session, Post post) async {
  await Post.db.deleteRow(session, post);
}

Future<List<Post>> getAllPosts(Session session) async {
  // By ordering by the id column, we always get the Posts in the same order
  // and not in the order they were updated.
  return await Post.db.find(
    session,
    orderBy: (t) => t.id,
  );
}
}
