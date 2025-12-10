import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/post_model.dart';

class FirestoreService {
  final CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');

  Future<void> uploadPost(PostModel post) async {
    await posts.doc(post.id).set(post.toJson());
  }

  Stream<List<PostModel>> getPosts() {
    return posts.snapshots().map((snap) =>
        snap.docs.map((doc) => PostModel.fromJson(doc.data() as Map<String, dynamic>)).toList());
  }
}