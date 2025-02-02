import 'package:TiflTails/data/response/api_response.dart';
import 'package:TiflTails/model/blogs_model.dart';
import 'package:TiflTails/model/category_model.dart';
import 'package:TiflTails/repository/blog_repo.dart';
import 'package:flutter/material.dart';

class BlogsViewModel extends ChangeNotifier {
  BlogRepository blogsRepo = BlogRepository();
  ApiResponse<List<BlogsModel>> blogsModel = ApiResponse.none();
  List<CategoryModel> categoryList = [];

  void getCategoriesCount(List<BlogsModel> blogs) {
    // List cats = [];
    for (int i = 0; i < blogs.length; i++) {
      var blog = blogs[i];
      if (!categoryList.contains(blog.category)) {
        categoryList.add(CategoryModel(CategoryName: blog.category!, Count: 1));
      } else {
        categoryList.map((e) {
          if (e.CategoryName == blog.category) {
            e.Count + 1;
          }
        });
      }
    }
  }

  void _setBlogs(ApiResponse<List<BlogsModel>> response) {
    blogsModel = response;
    if (response.data != null) {
      getCategoriesCount(response.data!);
    }
    notifyListeners();
  }

  Future<void> getBlogs() async {
    _setBlogs(ApiResponse.loading());

    await blogsRepo
        .getBlogs()
        .then((val) => _setBlogs(ApiResponse.completed(val)))
        .onError((err, stackTrace) => _setBlogs(
              ApiResponse.error(err.toString()),
            ));
  }
}
