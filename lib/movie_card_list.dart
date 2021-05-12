import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/movie_card.dart';

class MovieCardList extends StatefulWidget {
  @override
  _MovieCardListState createState() => _MovieCardListState();
}

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

class _MovieCardListState extends State<MovieCardList> {
  Future<List<Movie>> fetchAlbum() async {
    var queryParameters = {
      'apikey': '90edfaaf',
      'type': 'movie',
      'r': 'json',
      's': 'Spider man',
      'page': '3'
    };
    final response =
        await http.get(Uri.https('www.omdbapi.com', '', queryParameters));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String, dynamic> body = json.decode(response.body);
      List<Movie> movies = body['Search'].map<Movie>(
        (dynamic movie) {
          return Movie.fromJson(movie);
        },
      ).toList();

      return movies;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Selling Movies',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 10),
                minWidth: 0,
                height: 28,
                color: Colors.red[400],
                child: Text(
                  'See more',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        FutureBuilder<List<Movie>>(
          future: fetchAlbum(),
          builder: (contex, snapshot) {
            if (snapshot.hasData) {
              inspect(snapshot.data);
              return Container(
                height: 330,
                padding: EdgeInsets.symmetric(horizontal: 12),
                // child: ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     MovieCard(
                //       image: 'assets/images/wm.jpeg',
                //       title: 'Wonder Woman 1984',
                //       category: 'Action & Adventure',
                //       price: 'P170.00',
                //     ),
                //     MovieCard(
                //       image: 'assets/images/jl.png',
                //       title: 'Justice League ',
                //       category: 'Action & Adventure',
                //       price: 'P170.00',
                //     ),
                //     MovieCard(
                //       image: 'assets/images/soul.jpeg',
                //       title: 'Soul',
                //       category: 'Comedy',
                //       price: 'P180.00',
                //     ),
                //   ],
                // ),
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contex, i) {
                    return MovieCard(
                      image: snapshot.data[i].image,
                      title: snapshot.data[i].title,
                      category: snapshot.data[i].type,
                      price: snapshot.data[i].year,
                    );
                  },
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ],
    );
  }
}
