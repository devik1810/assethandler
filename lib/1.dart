import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List name = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan"
  ];

  List Company = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];

  List images = [
    "assets/images/Sundar pichai.jpg",
    "assets/images/Bill gates.jpg",
    "assets/images/Jeff bezos.jpg",
    "assets/images/Mukesh ambani.jpg",
    "assets/images/Tim cook.jpg",
    "assets/images/Shantanu narayen.jpg",
    "assets/images/Daniel zhang.jpg",
    "assets/images/Harald kruger.jpg",
    "assets/images/Michael dell.jpg",
    "assets/images/Bob swan.jpg",
  ];
  List colors = [
    Color(0xff175375),
    Color(0xff98C9F4),
    Color(0xff1A3F74),
    Color(0xff9DB3F6),
    Color(0xff202C76),
    Color(0xffA9A6F3),
    Color(0xff332272),
    Color(0xffBE9DF0),
    Color(0xff451970),
    Color(0xffCD95EE)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Color(0xffBFE6F6),
          title: Center(
            child: Text("CEO of MNC's", style: TextStyle(color: Colors.black)),
          ),
          elevation: 0,
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: name.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return wiget(
                    images[index], name[index], Company[index], colors[index],index%2==0?Colors.white:Colors.black);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget wiget(String images, String name, String compny, Color colors,Color co) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        textColor: co,
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("$images"),
        ),
        title: Text(name),
        subtitle: Text(compny),
        tileColor: colors,
        contentPadding: EdgeInsets.all(4),
        trailing: Icon(Icons.arrow_circle_right_outlined),
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
