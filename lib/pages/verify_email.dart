import 'package:Booking_san_bong/common/theme_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';

class VerifyEmailPage extends StatefulWidget {
  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: Container(
            padding:EdgeInsets.fromLTRB(30, 0, 30, 0),
            constraints: BoxConstraints.expand(),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[      
                               
                 Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "images/bong.png",
                          ),
                          fit: BoxFit.contain)),
                  height: MediaQuery.of(context).size.height * .15,
                ),
                 Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Row(
                        children: [
                          Text(
                           "                    GoSport\n ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 30),
                              
                          ),
                       ],
                      ),
                    ),
                    Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30,),
                    child: Text("X??c Nh???n Email!",
                    style: TextStyle(
                        fontWeight:FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0,10),
                    child: Text( "Nh???p m?? code ???? ???????c g???i v??o mail c???a b???n!",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20),
                        ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0, 60),
                    child: TextField(
                      style: TextStyle(fontSize:18, color: Colors.black) ,
                      decoration: InputDecoration(
                        labelText: "M?? code",
                        
                        labelStyle: TextStyle(color: Color(0xff888888),fontSize: 15)),
                    ),
                  ),
            Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        TextField(
                       
                          decoration:                  
                            ThemeHelper().textInputPasswordDecoration("M???t Kh???u m???i ", "Nh???p m???t kh???u m???i... "),                     
                            obscureText: true,           
                         ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        TextField(
                       
                          decoration:                  
                            ThemeHelper().textInputPasswordDecoration("X??c Nh???n M???t Kh???u", "Nh???p l???i m???t kh???u... "),                     
                            obscureText: true,           
                         ),
                      ],
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(65, 0, 0, 30),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan( text: "B???n ch??a nh???n ???????c m??? ",style: TextStyle(color: Colors.black, fontSize: 16)),
                                TextSpan(
                                  text: "G???i l???i!",
                                  style: TextStyle(color: Colors.blueAccent, fontSize: 16,fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = (){}
                                ),                               
                              ]
                            )
                          ),
                        
                        ),
                        
                      ],
                    ),
                  )),    
                    Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: MyButton(
                            btnText: "L???y l???i m???t kh???u",
                            onpressed: () =>
                              Navigator.pushNamed(context, UIData.introPageRoute)),
                  ),
                ],
                ),
            ),
          ),
    );
  }
  void onSignInClicked(){}
}
