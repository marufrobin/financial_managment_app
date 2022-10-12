import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [customAppBar()],
        ),
      ),
    );
  }

  Row customAppBar() {
    return Row(
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
          child: Row(children: [
            CircleAvatar(backgroundImage: ImageProvider(),)
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
