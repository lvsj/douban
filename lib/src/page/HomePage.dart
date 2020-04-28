import 'package:douban/src/model/movies.dart';
import 'package:douban/src/model/subjects.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

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
              )
            ],
          ),
          ListView.builder(scrollDirection: Axis.horizontal,itemBuilder:(context,index){
            return Column(
              children: <Widget>[
                Image.network('src',width: 60,height: 100,),
                Text('name'),
                Row(

                )
              ],
            );
          })
        ],
      ),
    );
  }

  Future<List<Subjects>> _getInTheaterMovies() async{
   final response= await http.get('https://douban.uieee.com/v2/movie/in_theaters');
   if(response.statusCode==200){
     final movies=Movies.fromJson(convert.jsonDecode(response.body));
     return movies.subjects;
   }else{
      return null;
   }
  }
}
