import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moovees/core/utils/size_config.dart';
import 'package:moovees/core/utils/widget_constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Container(
        width: getScreenWidth(),
        height: getScreenHeight(),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.circleUser,
              size: getProportionateScreenWidth(120),
              color: Colors.blueGrey,
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              "Wahyu Andhika Putra",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              "wahyu.andhika.p@gmail.com",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(12),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Container(
              width: getScreenWidth(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.ticket,
                            size: getProportionateScreenWidth(80),
                            color: Colors.deepOrange,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(3),
                          ),
                          Text(
                            "05",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(20),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(3),
                          ),
                          Text(
                            "Favourite Movies",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(50),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.tv,
                            size: getProportionateScreenWidth(80),
                            color: Colors.deepOrange,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(3),
                          ),
                          Text(
                            "06",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(20),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(3),
                          ),
                          Text(
                            "Favourite TV Shows",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            Container(
              width: getProportionateScreenWidth(150),
              alignment: Alignment.center,
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getProportionateScreenWidth(5),
                  ),
                  border: Border.all(color: Colors.deepOrange, width: 1.0),
                  boxShadow: [defaultBoxShadow]),
              child: const Text("Sign Out"),
            ),
          ],
        ),
      ),
    );
  }
}
