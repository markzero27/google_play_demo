import 'package:flutter/material.dart';

import 'movie_card.dart';

class MovieCardList extends StatefulWidget {
  @override
  _MovieCardListState createState() => _MovieCardListState();
}

class _MovieCardListState extends State<MovieCardList> {
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
        Container(
          height: 330,
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MovieCard(
                image: 'assets/images/wm.jpeg',
                title: 'Wonder Woman 1984',
                category: 'Action & Adventure',
                price: 'P170.00',
              ),
              MovieCard(
                image: 'assets/images/jl.png',
                title: 'Justice League ',
                category: 'Action & Adventure',
                price: 'P170.00',
              ),
              MovieCard(
                image: 'assets/images/soul.jpeg',
                title: 'Soul',
                category: 'Comedy',
                price: 'P180.00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
