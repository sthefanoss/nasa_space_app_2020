class ImageOfTheDay {
  final String copyright;
  final String date;
  final String explanation;
  final String url;
  final String title;

  const ImageOfTheDay({
    this.title,
    this.date,
    this.url,
    this.copyright,
    this.explanation,
  });

  factory ImageOfTheDay.fromMap(Map<String, dynamic> map) {
    return ImageOfTheDay(
      title: map["title"],
      copyright: map["copyright"],
      url: map["url"],
      explanation: map["explanation"],
      date: map["date"],
    );
  }
}
