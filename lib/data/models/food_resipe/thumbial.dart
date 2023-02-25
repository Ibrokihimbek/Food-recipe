class THUMBNAIL {
  String url;
  num width;
  num height;

  THUMBNAIL({
    required this.url,
    required this.width,
    required this.height,
  });

  factory THUMBNAIL.fromJson(Map<String, dynamic> json) {
    return THUMBNAIL(
      url: json['url'] as String? ?? '',
      width: json['width'] as num? ?? 0,
      height: json['height'] as num? ?? 0,
    );
  }
}
