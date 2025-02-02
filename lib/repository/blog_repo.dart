import 'package:TiflTails/data/response/api_response.dart';
import 'package:TiflTails/data/supabase.dart';
import 'package:TiflTails/model/blogs_model.dart';
import 'package:flutter/material.dart';

class BlogRepository extends ChangeNotifier {
  ApiResponse<List<BlogsModel>> blogsModel = ApiResponse.none();

  Future<List<BlogsModel>> getBlogs() async {
    try {
      dynamic blogs = await SupabaseService().fetchData("blogs");
      List<BlogsModel> blogsList = [];
      for (var blog in blogs) {
        blogsList.add(BlogsModel.fromJson(blog));
      }
      return blogsList;
    } catch (e) {
      rethrow;
    }
  }
}
