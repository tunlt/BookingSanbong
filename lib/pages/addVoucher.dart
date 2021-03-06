import 'package:Booking_san_bong/common/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:Booking_san_bong/widgets/button3.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:table_calendar/table_calendar.dart';

class addVoucherPage extends StatefulWidget {
  @override
  State<addVoucherPage> createState() => _addVoucherPageState();
}

class _addVoucherPageState extends State<addVoucherPage> {
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
  int _selectedIndex = 0;

  void onTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Stack(
            //   alignment: AlignmentDirectional.topCenter,
            //   overflow: Overflow.visible,
            //   children: <Widget>[
            //     _backBgCover(),
            //   ],
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _addText(),
                    // _notificationCard(),
                    _nextAppointmentText(),
                    _appoinmentCard(),
                    _appoinmentCard(),

                    // _specialistsCardInfo(),
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
          'Khuy???n m??i c???a b???n',
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
              minRadius: 27,
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW8cXT6N87hFULQ_0rFgk-LyKfYZf_l972wg&usqp=CAU'),
            ),
            RichText(
              text: TextSpan(
                text: 'T??y H??a 1',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nT??? ng??y 29/03->31/4/2022',
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: '\nS??n 7v7\nT??y H??a, Linh M???c, Th??? ?????c',
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () =>
                      Navigator.pushNamed(null, UIData.detailPageRoute),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[400],
                  ),
                ),
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
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: <Widget>[
        //     _iconBuilder(Icons.ac_unit_outlined, 'Check-in'),
        //     _iconBuilder(Icons.ac_unit_outlined, 'Cancel'),
        //   ],
        // )
      ],
    ),
  );
}

Widget _addText() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: TextField(
              decoration:
                  ThemeHelper().textInputDecoration("S??n", "T??n s??n..."),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: TextField(
              decoration:
                  ThemeHelper().textInputDecoration("M?? t???", "M?? t???..."),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: TextField(
              decoration: ThemeHelper()
                  .textInputDecoration("Ph???n tr??m gi???m", "Ph???n tr??m gi???m..."),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: TextField(
              decoration:
                  ThemeHelper().textInputDecoration("T??? ng??y", "dd/mm/yyyy"),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: TextField(
              decoration:
                  ThemeHelper().textInputDecoration("?????n ng??y", "dd/mm/yyyy"),
            ),
          ),
        ),
        // TableCalendar(
        //   firstDay: DateTime.utc(2010, 10, 16),
        //   lastDay: DateTime.utc(2030, 3, 14),
        //   focusedDay: DateTime.now(),
        // ),
        Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 0,
              minWidth: double.maxFinite,
              height: 42,
              onPressed: () {
                //Here goes the logic for Google SignIn discussed in the next section
                Navigator.pushNamed(context, UIData.mainHostPageRoute);
              },
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10),
                  Text('Th??m',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
              textColor: Colors.white,
            ),
          );
        }),
      ],
    ),
  );
}
