import 'package:TiflTails/constants.dart';
import 'package:TiflTails/responsive.dart';
import 'package:flutter/material.dart';
import 'package:markdown_editor_plus/widgets/markdown_parse.dart';

class BlogPreviewView extends StatefulWidget {
  final String title;
  final String markdown;
  final Image image;
  const BlogPreviewView(
      {Key? key,
      required this.title,
      required this.markdown,
      required this.image})
      : super(key: key);

  @override
  State<BlogPreviewView> createState() => _BlogPreviewViewState();
}

class _BlogPreviewViewState extends State<BlogPreviewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Responsive.isMobile(context)
            ? body()
            : Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Expanded(child: body()),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              ),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            spacing: 15,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
              Expanded(
                child: Text(
                  widget.title,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 32 : 24,
                    fontFamily: "Raleway",
                    color: kDarkBlackColor,
                    height: 1.3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          widget.image,
          MarkdownParse(
              shrinkWrap: true, selectable: true, data: widget.markdown),
        ],
      ),
    );
  }
}
