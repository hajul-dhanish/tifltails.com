import 'package:TiflTails/data/response/status.dart';
import 'package:TiflTails/utils/widget.dart';
import 'package:TiflTails/view_model/blogs_vm.dart';
import 'package:flutter/material.dart';
import 'package:TiflTails/constants.dart';
import 'package:TiflTails/responsive.dart';
import 'package:provider/provider.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class BlogView extends StatefulWidget {
  const BlogView({
    Key? key,
  }) : super(key: key);

  @override
  State<BlogView> createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  final BlogsViewModel blogVm = BlogsViewModel();

  @override
  void initState() {
    blogVm.getBlogs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BlogsViewModel>(
      create: (BuildContext context) => blogVm,
      child: Consumer<BlogsViewModel>(
        builder: (context, viewModel, _) {
          if (viewModel.blogsModel.status == Status.LOADING) {
            return Center(child: Utils.loader(context));
          } else if (viewModel.blogsModel.status == Status.COMPLETED) {
            var data = viewModel.blogsModel.data ?? [];
            return Column(
              spacing: 10,
              children: [
                if (Responsive.isMobile(context))
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Search()),
                    ],
                  ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: List.generate(
                          data.length,
                          (index) => BlogPostCard(blog: data[index]),
                        ),
                      ),
                    ),
                    if (!Responsive.isMobile(context))
                      SizedBox(width: kDefaultPadding),
                    // Sidebar
                    if (!Responsive.isMobile(context))
                      Expanded(
                        child: Column(
                          children: [
                            Search(),
                            SizedBox(height: kDefaultPadding),
                            Categories(
                              categoryList: viewModel.categoryList,
                            ),
                            SizedBox(height: kDefaultPadding),
                            RecentPosts(),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            );
          } else {
            return Text(viewModel.blogsModel.message.toString());
          }
        },
      ),
    );
  }
}
