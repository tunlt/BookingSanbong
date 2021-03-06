// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:Booking_san_bong/widgets/button3.dart';
import 'package:flutter/services.dart';

class HistoryHostPage extends StatefulWidget {
  @override
  _historyHostPageState createState() => _historyHostPageState();
}

class _historyHostPageState extends State<HistoryHostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HistoryCustomerPage(),
    );
  }
}

class HistoryCustomerPage extends StatefulWidget {
  HistoryCustomerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HistoryCustomerPageState createState() => _HistoryCustomerPageState();
}

class _HistoryCustomerPageState extends State<HistoryCustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // _notificationCard(),
                    _nextAppointmentText(),
                    _appoinmentCard(),
                    _appoinmentCard1(),
                    _areaSpecialistsText(),
                    _specialistsCardInfo(),
                    _specialistsCardInfo1(),
                    _specialistsCardInfo(),

                    //_specialistsCardInfo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _nextAppointmentText() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Qu???n l?? ?????t s??n',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(
          'Xem th??m',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Container _appoinmentCard() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(
                  'https://img.favpng.com/12/15/21/computer-icons-avatar-user-profile-recommender-system-png-favpng-HaMDUPFH1etkLCdiFjgTKHzAs.jpg'),
              radius: 36.0,
            ),
            RichText(
              text: TextSpan(
                text: 'H??? Qu???c Kh???i',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nT??y H??a1',
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: '\nCh??? nh???t,22/2/2022\n 18h45-20h15',
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Divider(
          color: Colors.grey[200],
          height: 3,
          thickness: 1,
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buttonBuilderCencel('T??? Ch???i'),
            // _buttonBuilderAccept('Ch???p nh???n')
          ],
        )
      ],
    ),
  );
}

Container _appoinmentCard1() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(
                  'https://img.favpng.com/12/15/21/computer-icons-avatar-user-profile-recommender-system-png-favpng-HaMDUPFH1etkLCdiFjgTKHzAs.jpg'),
              radius: 36.0,
            ),
            RichText(
              text: TextSpan(
                text: 'Nguy???n B?? T??m',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nThanh H??a',
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: '\nTh??? Hai,30/2/2022\n 18h45-20h15',
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Divider(
          color: Colors.grey[200],
          height: 3,
          thickness: 1,
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buttonBuilderCencel('T??? Ch???i'),
            // _buttonBuilderAccept('Ch???p nh???n')
          ],
        )
      ],
    ),
  );
}

Column _buttonBuilderCencel(text) {
  return Column(
    children: <Widget>[
      FlatButton(
        
          color: Colors.red,
          onPressed: () {},
          child: Text(text, style: TextStyle(color: Colors.white))),
      SizedBox(
        height: 8.0,
      ),
    ],
  );
}

Column _buttonBuilderAccept(text) {
  return Column(
    children: <Widget>[
      FlatButton(
          color: Color.fromARGB(255, 19, 168, 111),
          onPressed: () {},
          child: Text(text, style: TextStyle(color: Colors.white))),
      SizedBox(
        height: 8.0,
      ),
    ],
  );
}

Widget _areaSpecialistsText() {
  return Container(
    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'L???ch s??? ?????t s??n',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(
          'Xem th??m',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Widget _specialistsCardInfo() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
    margin: EdgeInsets.only(
      bottom: 20.0,
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.2),
            spreadRadius: 1.0,
            blurRadius: 6.0,
          ),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(
                  'https://img.favpng.com/12/15/21/computer-icons-avatar-user-profile-recommender-system-png-favpng-HaMDUPFH1etkLCdiFjgTKHzAs.jpg'),
              radius: 36.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Minh Anh',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '\nT??y H??a2',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: '\nTh??? b???y,21/2/2022\n18h45-20h15 PM',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
              ],
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.green,
          size: 36,
        ),
      ],
    ),
  );
}

Widget _specialistsCardInfo1() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
    margin: EdgeInsets.only(
      bottom: 20.0,
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.2),
            spreadRadius: 1.0,
            blurRadius: 6.0,
          ),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(
                  'https://img.favpng.com/12/15/21/computer-icons-avatar-user-profile-recommender-system-png-favpng-HaMDUPFH1etkLCdiFjgTKHzAs.jpg'),
              radius: 36.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Con ma nh?? h??? H???a',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '\nU H??a',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: '\nTh??? s??u,20/2/2022\n7h45-9h15 AM',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
              ],
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.green,
          size: 36,
        ),
      ],
    ),
  );
}
