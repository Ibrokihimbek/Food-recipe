class Next {
  Next({
    required this.href,
  });

  String href;

  factory Next.fromJson(Map<String, dynamic> json) => Next(
        href: json["href"] as String? ?? '',
      );
}