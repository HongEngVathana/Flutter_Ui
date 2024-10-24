import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/components/restaurent.dart';
import 'package:flutter_ui/constats/color.dart';
import 'package:flutter_ui/constats/constants.dart';
import 'package:flutter_ui/dashboard/home.dart';
import 'package:flutter_ui/model/panda_pick_model/pandaPickHelper.dart';
import 'package:flutter_ui/model/panda_pick_model/pandaPickItem.Model.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? Key}) : super(key: Key);

  @override
  _WelcomeScreenStates createState() => _WelcomeScreenStates();
}

class _WelcomeScreenStates extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('New York City'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: CupertinoTextField(
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 10),
                        placeholder: 'Search for shop & restaurants',
                        prefix: const Padding(
                          padding: EdgeInsets.only(left: 13),
                          child: Icon(
                            Icons.search,
                            color: Color(0xff7b7b7b),
                          ),
                        ),
                        style: TextStyle(color: Color(0xff7b7b7b)),
                        decoration: BoxDecoration(
                            color: Color(0xfff7f7f7),
                            borderRadius: BorderRadius.circular(50.0))))
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(color: MyColors.primaryColor),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://scontent.fpnh9-2.fna.fbcdn.net/v/t1.6435-9/30738855_1003659983119724_1530404904647000064_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=833d8c&_nc_ohc=G6nmJxNbFQkQ7kNvgHC0KfN&_nc_zt=23&_nc_ht=scontent.fpnh9-2.fna&_nc_gid=A4kTpMLgoeJplgQ_q3bWkM2&oh=00_AYDi_huI2L852hGD1bgS654LZ9zsLO96HrzjChnrEXf9xg&oe=673FD548"),
                )),
            ListTile(
              title: Text(
                'Setting',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.settings_outlined),
            ),
            ListTile(
              title: Text(
                'Help center 2',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.help_outline),
            ),
            ListTile(
              title: Text(
                'More',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.more_horiz),
            ),
            ListTile(
              title: Text(
                'Sign uo or Login in',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.login_outlined),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: height * .18,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image(
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            image: NetworkImage(
                                "https://i.pinimg.com/enabled_hi/736x/78/54/fc/7854fca8aa3aa4fabd79f24804e30127.jpg")),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Food delivery',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: Bold,
                                    fontSize: 18),
                              ),
                              Text(
                                'Order from your faviutite\n restaurants and home chefs',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  height: 1,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: height * .25,
                          decoration: BoxDecoration(
                              color: Color(0xfffed271),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/pandamart.jpg'),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 0,
                                  child: Text(
                                    'panfamart',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Text(
                                    'panda20 for 20 % fo',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Medium,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: height * .15,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xffef9fc4),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/food.jpg'))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pick-Uo',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'panda20 for 20 % fo',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Medium,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: height * .1,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xfff85bfff),
                              borderRadius: BorderRadius.circular(10),
                              // image: DecorationImage(
                              //     fit: BoxFit.fill,
                              //     image: AssetImage('assets/food.jpg'))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shops',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'Everydy assenttials ',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Medium,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Your daily deals',
                style: TextStyle(
                    color: blackColor, fontSize: 15, fontFamily: Bold),
              ),
              //as list is horizonla so we neet to spcify th height

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: height * .278,
                  child: ListView.builder(
                      itemCount: PandaPickHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        PandaPickItemModel model =
                            PandaPickHelper.getStatusItem(index);
                        return RestaurentScreen(
                          name: model.name,
                          image: model.image,
                          remainingTime: model.remaingTime,
                          totalRating: model.totalRating,
                          subTitle: model.subTitle,
                          rating: model.ratting,
                          deliveryTime: model.remaingTime,
                          deliveryPrice: model.deliveryPrice,
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
