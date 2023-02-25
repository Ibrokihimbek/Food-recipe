class Next {
  String href;
  String title;

  Next({required this.href, required this.title});

  factory Next.fromJson(Map<String, dynamic> json) {
    return Next(
      href: json['href'] as String? ?? '',
      title: json['title'] as String? ?? '',
    );
  }
}
