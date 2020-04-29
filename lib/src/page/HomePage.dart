import 'dart:convert' as convert;

import 'package:douban/src/model/movies.dart';
import 'package:douban/src/model/subjects.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  '影院热映',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FlatButton(
                child: Row(
                  children: <Widget>[
                    Text(
                      '查看更多',
                      style: TextStyle(color: Colors.green),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            child: _MovieListView(),
          ),
        ],
      ),
    );
  }
}

class _MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Subjects>>(
      future: _getInTheaterMovies(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
         return  Text('加载失败');
        }
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _ListItem(snapshot.data[index]);
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }

  Future<List<Subjects>> _getInTheaterMovies() async {
    final response =
        await http.get('https://douban.uieee.com/v2/movie/in_theaters');
    if (response.statusCode == 200) {
      final movies = Movies.fromJson(convert.jsonDecode(response.body));
      return movies.subjects;
    } else {
      throw Exception('failed to get movies');
    }
  }
}

class _ListItem extends StatelessWidget {
  final Subjects subject;

  _ListItem(this.subject);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            subject.images.small,
            width: 100,
            height: 150,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subject.title,
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          _RatingItem(
            subject.rating.average,
          ),
        ],
      ),
    );
  }
}

class _RatingItem extends StatelessWidget {
  final double rating;
  final starSize = 15.0;

  _RatingItem(this.rating);

  @override
  Widget build(BuildContext context) {
    int startNum;
    if (rating <= 10 && rating > 8) {
      startNum = 5;
    } else if (rating <= 8 && rating > 6) {
      startNum = 4;
    } else if (rating <= 6 && rating > 4) {
      startNum = 3;
    } else if (rating <= 4 && rating > 2) {
      startNum = 2;
    } else {
      startNum = 1;
    }
    List<Widget> starIcons = <Widget>[];
    for (int i = 0; i < 5; i++) {
      if (i < startNum) {
        starIcons.add(Icon(
          Icons.star,
          color: Colors.yellow,
          size: starSize,
        ));
      } else {
        starIcons.add(Icon(
          Icons.star,
          color: Colors.grey.shade200,
          size: starSize,
        ));
      }
    }
    starIcons.add(Text(
      '$rating',
      style: TextStyle(color: Colors.grey, fontSize: 12),
    ));
    return Row(
      children: starIcons,
    );
  }
}
