class Next {
  String? href;
  String? title;

  Next({this.href, this.title});

  Next.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    title = json['title'];
  }
}