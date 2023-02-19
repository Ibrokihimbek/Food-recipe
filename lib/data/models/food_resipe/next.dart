class Next {
    Next({
        required this.title,
        required this.href,
    });

    String title;
    String href;

    factory Next.fromJson(Map<String, dynamic> json) => Next(
        title: json["title"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "href": href,
    };
}