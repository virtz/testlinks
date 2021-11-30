

import 'package:ajeo/presentation/screens/auth/local_widgets/textfield.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor:const Color.fromRGBO(153, 143, 162, 1),
         body:ListView(
           children:[
             Padding(
            padding: EdgeInsets.only(
              left: sizeFit(true, 9.0, context),
              top: 9.0,
            ),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: sizeFit(true, 318.0, context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                       Expanded(
                        child: TextFieldContainer(withAsterisk: null,),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: sizeFit(true, 24.0, context),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child:const Icon(
                      FontAwesomeIcons.timesCircle,
                      color: Color.fromRGBO(241, 52, 50, 1),
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),

  ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 10,
                  right: sizeFit(true, 55.0, context),
                ),
                child: Container(
                  height: 73.0,
                  padding:const  EdgeInsets.symmetric(vertical: 6.0),
                  width: sizeFit(true, 300, context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: sizeFit(true, 12.0, context),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: sizeFit(true, 16.0, context),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: sizeFit(true, 110.0, context),
                                child:const  Text(
                                  'Eggs',
                                  style: TextStyle(
                                    color: Color.fromRGBO(49, 49, 51, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                          const    Text(
                                '2 Dozen / Free Range Eggs',
                                style: TextStyle(
                                  color: Color.fromRGBO(49, 49, 51, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                   const     SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: sizeFit(true, 56.0, context),
                              ),
                              child: Image.asset(
                                'assets/images/egg3.png',
                                height: 25.0,
                              ),
                            ),
                            RichText(
                              text:const  TextSpan(
                                text: 'N200',
                                style: TextStyle(
                                  color: Color.fromRGBO(8, 237, 34, 1),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'helves',
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' / ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'N320',
                                    style: TextStyle(
                                      color: Color.fromRGBO(237, 8, 8, 1),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' / ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'N280',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )

           ]
         )
    );
  }
}