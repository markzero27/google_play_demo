class Movie {
  String title;
  String year;
  String type;
  String image;

  Movie({this.title, this.image, this.type, this.year});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['Title'],
      year: json['Year'],
      type: json['Type'],
      image: json['Poster'],
    );
  }
}
