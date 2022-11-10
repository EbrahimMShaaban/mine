import 'package:mus_app/network/firebase_database.dart';

import '../models/post_model.dart';

abstract class PostRepo{
  static Future<List<PostModel>> getPosts()async{
    return (await FireStoreHelper.instance.getDocumentsList(collection: "Posts")).map((document) => PostModel(document: document)).toList();
  }
}