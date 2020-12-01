import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta/entity/widget/CategoryItem.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final List searchCategories = ["IGTV", "Market", "Travel",
                                 "Architechture", "Decor", "Art",
                                 "Food", "Style", "TV & Movies",
                                 "Music", "DIY"];

  final List searchImages = [
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",

        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",

        "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",

        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",

        "https://images.unsplash.com/photo-1506277886164-e25aa3f4ef7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",

        "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",

        "https://images.unsplash.com/photo-1445633629932-0029acc44e88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",

        "https://images.unsplash.com/photo-1523944339743-0fe06f079939?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80"
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        brightness: Brightness.dark,
        title: TextField(

          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(

              hintText: "Найти",
              hintStyle: TextStyle(color: Colors.grey)),
        ),

        leading: IconButton(
            onPressed: (){},
            icon: Icon(Feather.search, color: Colors.white,),
      ),
          actions: <Widget> [
            IconButton(
              onPressed: (){},
              icon: Icon(Feather.maximize, color: Colors.white,),
            ),
          ]
      ),
      body: Container(
        color: Colors.black,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
                child: Column(

                    children: <Widget>[

                      SizedBox(height: 15,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(children: List.generate(
                              searchCategories.length, (index){
                              return CategoryItem(
                                name: searchCategories[index],
                              );
                              })),
                        ),
                ),

                      SizedBox(height: 15,),

                      Wrap(

                  spacing: 1,
                  runSpacing: 1,
                  children: List.generate(searchImages.length, (index){
                  return Container(
                    width: (MediaQuery.of(context).size.width-3)/3,
                    height: (MediaQuery.of(context).size.width-3)/3,
                    decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(
                        searchImages[index]),fit: BoxFit.cover)
                    ),
                  );
                  }),
                )
                    ],

                 )
          ),

        ),

    );
  }

}