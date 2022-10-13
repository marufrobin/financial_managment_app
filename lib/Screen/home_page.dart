import 'package:financial_managment_app/Screen/model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.fromLTRB(25, 30, 25, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customAppBar(),
                SizedBox(height: 30),
                Container(
                  width: 370,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xffF4EFEF)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      menuBar(isSelected: true, menuName: "Week"),
                      menuBar(isSelected: false, menuName: "Month"),
                      menuBar(isSelected: false, menuName: "Year")
                    ],
                  ),
                ),
                SizedBox(height: 44),
                Text(
                  "Upcoming Transaction",
                  style: textStyle(size: 20, clr: Color(0xff5F5B5B)),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    cardUpcomingBills(
                        bigBoxClr: Color(0xff3A0F55),
                        smallBoxClr: Color(0xff9871B7)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xffF98B4D),
                        smallBoxClr: Color(0xffF3A257)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xff3A0F55),
                        smallBoxClr: Color(0xff9871B7)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xffF98B4D),
                        smallBoxClr: Color(0xffF3A257)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xff3A0F55),
                        smallBoxClr: Color(0xff9871B7)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xffF98B4D),
                        smallBoxClr: Color(0xffF3A257)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xff3A0F55),
                        smallBoxClr: Color(0xff9871B7)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xffF98B4D),
                        smallBoxClr: Color(0xffF3A257)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xff3A0F55),
                        smallBoxClr: Color(0xff9871B7)),
                    SizedBox(width: 18),
                    cardUpcomingBills(
                        bigBoxClr: Color(0xffF98B4D),
                        smallBoxClr: Color(0xffF3A257)),
                  ]),
                ),
                SizedBox(height: 42),
                Text(
                  "Week Transaction",
                  style: textStyle(size: 20, clr: Color(0xff5F5B5B)),
                ),
                SizedBox(height: 40),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: myList.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          leading: Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: myList[index].price! > 0
                                    ? Color(0xff5DF06C)
                                    : Color(0xffF06F5D)),
                            child: myList[index].price! > 0
                                ? Icon(
                                    Icons.arrow_upward,
                                    color: Color(0xff10C122),
                                  )
                                : Icon(
                                    Icons.arrow_downward,
                                    color: Color(0xffC11010),
                                  ),
                          ),
                          title: Text(
                            "${myList[index].title}",
                            style: textStyle(size: 20, clr: Colors.black),
                          ),
                          subtitle: Text(
                            "${myList[index].date}",
                            style: textStyle(size: 16, clr: Color(0xff5F5B5B)),
                          ),
                          trailing: Text(
                            myList[index].price! > 0
                                ? "+${myList[index].price}"
                                : "${myList[index].price}",
                            style: textStyle(size: 16, clr: Color(0xff5F5B5B)),
                          ),
                          tileColor: myList[index].price! > 0
                              ? Color(0xffC0F5BB)
                              : Color(0xffF5BBBB),
                        ),
                      );
                    }))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container cardUpcomingBills(
          {required Color bigBoxClr, required Color smallBoxClr}) =>
      Container(
        height: 180,
        width: 240,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: bigBoxClr),
        child: Column(children: [
          Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "22 June 2022",
                  style: textStyle(size: 20, clr: Color(0xff5F5B5B)),
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                margin: EdgeInsets.only(left: 14, right: 14, bottom: 14),
                // height: 58,
                width: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: smallBoxClr),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Evernote",
                          style: textStyle(size: 16, clr: Color(0xffE9E0E0)),
                        ),
                        Text(
                          "\$9.50",
                          style: textStyle(
                              size: 16, clr: Colors.white, fw: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: SvgPicture.asset(
                        "images/arrow.svg",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ))
        ]),
      );

  Container menuBar({required bool isSelected, required String menuName}) =>
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 46,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? Colors.white : Color(0xffF4EFEF),
        ),
        child: Text(
          "$menuName",
          style: isSelected
              ? textStyle(size: 20, clr: Colors.black, fw: FontWeight.bold)
              : textStyle(size: 20, clr: Color(0xff413030)),
        ),
      );

  Row customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$6,890",
              style:
                  textStyle(size: 24, clr: Colors.black, fw: FontWeight.bold),
            ),
            Text(
              "June earning",
              style: textStyle(size: 20, clr: Color(0xff5F5B5B)),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(3, 0, 20, 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Color(0xffF4EFEF),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              padding: EdgeInsets.only(left: 3, top: 3, bottom: 3, right: 20),
              child: Image.asset(
                "images/hero1.jpg",
                fit: BoxFit.cover,
                width: 52,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset('images/spot.png')
          ]),
        )
      ],
    );
  }

  TextStyle textStyle(
      {required double size, required Color clr, FontWeight? fw}) {
    return TextStyle(
      fontSize: size,
      fontFamily: "NunitoSans",
      fontWeight: fw,
      color: clr,
    );
  }
}
