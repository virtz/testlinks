
import 'package:ajeo/presentation/widgets/drawer.dart';
import 'package:flutter/material.dart';



class ProductPageUnitIncrease extends StatefulWidget {
  const ProductPageUnitIncrease({ Key? key }) : super(key: key);

  @override
  _ProductPageUnitIncreaseState createState() => _ProductPageUnitIncreaseState();
}

class _ProductPageUnitIncreaseState extends State<ProductPageUnitIncrease> {



    final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           key: scaffoldKey,
      drawer: const MenuDrawer(),
      backgroundColor:const Color.fromRGBO(250, 250, 250, 1),
    );
  }
}