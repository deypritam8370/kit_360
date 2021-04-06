import 'package:flutter/material.dart';
import 'package:kit_360/Components/change_theme_button_widget.dart';
import 'package:kit_360/Screens/Menu/components/body.dart';

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}

class Body extends StatelessWidget {
  Items item1 = new Items(
      title: "UTILITY",
      subtitle: "",
      event: "3 Events",
      img: "assets/calendar.png");
  Items item2 = new Items(
    title: "PRODUCTIVITY",
    subtitle: "",
    event: "4 Items",
    img: "assets/food.png",
  );
  Items item3 = new Items(
    title: "NEWS",
    subtitle: "",
    event: "5 Items",
    img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "ENTERTAINMENT",
    subtitle: "6 Items",
    event: "",
    img: "assets/festival.png",
  );
  Items item5 = new Items(
    title: "HEALTH & FITNESS",
    subtitle: "",
    event: "4 Items",
    img: "assets/todo.png",
  );
  Items item6 = new Items(
    title: "SOCIAL MEDIA",
    subtitle: "",
    event: "2 Items",
    img: "assets/setting.png",
  );
  Items item7 = new Items(
    title: "SHOPPING",
    subtitle: "",
    event: "2 Items",
    img: "assets/setting.png",
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: <Widget>[
                top(), //below search bar to end
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 20.0,
                // ),
                // Container(
                //   height: 200.0,
                //   child: GridView(
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,
                //       childAspectRatio: 3 / 2,
                //     ),
                //     children: <Widget>[
                //       gridItem(Icons.airport_shuttle),
                //       gridItem(Icons.add_shopping_cart),
                //       gridItem(Icons.arrow_drop_down_circle),
                //       gridItem(Icons.bluetooth_searching),
                //       gridItem(Icons.add_location),
                //       gridItem(Icons.arrow_drop_down_circle),
                //     ],
                //   ),
                // ),
                bottom(),
              ],
            ),
          ),
        ),
    );
  }

  gridItem(icon) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            icon,
            size: 24.0,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepOrange.withOpacity(0.9),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Birthday",
          style: TextStyle(
            fontSize: 16.0,
          ),
        )
      ],
    );
  }

  top() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  // CircleAvatar(
                  //   backgroundImage: AssetImage("dashboard/assets/img.jpg"),
                  //   radius: 30.0,
                  // ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Hi, Rithika",
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {
                  ///TODO - TRY TO ADD DRAWER HERE
                },
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Search for Apps",
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.filter_list),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(26.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
            ),
          )
        ],
      ),
    );
  } //top

  bottom() {
    List<Items> myList = [item1, item2, item3, item4, item5, item6, item7];
    var color = 0xff453658;
    return Expanded(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}
