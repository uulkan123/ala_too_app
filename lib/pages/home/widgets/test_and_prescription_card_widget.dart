import 'package:flutter/material.dart';

class TestAndPrescriptionCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const TestAndPrescriptionCardWidget(
      {Key key, this.image, @required this.title, @required this.subTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      // padding: EdgeInsets.all(20),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(4),
      //   border: Border.all(color: Colors.grey[200], width: 1),
      //   color: Theme.of(context).cardColor,
      // ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                'assets/images/$image',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
