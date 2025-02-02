class BlogsModel {
  int? id;
  String? createdAt;
  String? title;
  String? content;
  String? author;
  int? impression;
  String? category;
  String? img;

  BlogsModel(
      {this.id,
      this.createdAt,
      this.title,
      this.content,
      this.author,
      this.impression,
      this.img,
      this.category});

  BlogsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    title = json['title'];
    content = json['content'];
    author = json['author'];
    img = json['img'];
    impression = json['impression'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['title'] = this.title;
    data['content'] = this.content;
    data['author'] = this.author;
    data['img'] = this.img;
    data['impression'] = this.impression;
    data['category'] = this.category;
    return data;
  }
}
