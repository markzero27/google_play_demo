import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String category;
  final String image;
  final String price;

  const MovieCard({Key key, this.title, this.category, this.image, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 170,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              '$image',
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                title,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 2,
                left: 10,
                right: 10,
              ),
              child: Text(
                category,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.grey[600],
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey[600],
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey[600],
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey[600],
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey[600],
                        size: 15,
                      ),
                    ],
                  ),
                  Text(
                    price,
                    style: TextStyle(color: Colors.red[800]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
