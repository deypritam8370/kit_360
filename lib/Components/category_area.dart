import 'package:flutter/material.dart';

class CategoryArea extends StatelessWidget {
  List<Items> myList = [item1, item2, item3, item4, item5, item6, item7];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: myList.map((data){
            //=> GestureDetector(
            //   // onTap: () {
            //   //   Navigator.push(
            //   //     context,
            //   //   MaterialPageRoute(
            //   //     builder: (context) => WelcomeScreen();
            //   //   //Navigator.of(context).pushNamed(RouteName.GridViewBuilder);
            //   // },
            return Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
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
                      //color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: TextStyle(
                      //color: Colors.white38,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: TextStyle(
                      //color: Colors.white70,
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

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
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


// bottom() {
//   List<Items> myList = [item1, item2, item3, item4, item5, item6, item7];
//   return Expanded(
//     child: GridView.count(
//         childAspectRatio: 1.0,
//         padding: EdgeInsets.only(left: 16, right: 16),
//         crossAxisCount: 2,
//         crossAxisSpacing: 15,
//         mainAxisSpacing: 15,
//         children: myList.map((data){
//           //=> GestureDetector(
//           //   // onTap: () {
//           //   //   Navigator.push(
//           //   //     context,
//           //   //   MaterialPageRoute(
//           //   //     builder: (context) => WelcomeScreen();
//           //   //   //Navigator.of(context).pushNamed(RouteName.GridViewBuilder);
//           //   // },
//           return Container(
//             margin: EdgeInsets.all(10.0),
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Colors.grey[400],
//                 width: 2,
//               ),
//               //color: Colors.grey[300],
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Image.asset(
//                   data.img,
//                   width: 42,
//                 ),
//                 SizedBox(
//                   height: 14,
//                 ),
//                 Text(
//                   data.title,
//                   style: TextStyle(
//                     //color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text(
//                   data.subtitle,
//                   style: TextStyle(
//                     //color: Colors.white38,
//                       fontSize: 10,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   height: 14,
//                 ),
//                 Text(
//                   data.event,
//                   style: TextStyle(
//                     //color: Colors.white70,
//                       fontSize: 11,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//           );
//         }).toList()),
//   );
// }