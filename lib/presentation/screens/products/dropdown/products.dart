import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/variety.dart';
import 'package:ajeo/presentation/screens/products/product_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProductDrop extends StatefulWidget {
  final Product? product;
  final Color? color;

  const ProductDrop({Key? key, this.color, this.product}) : super(key: key);

  @override
  _ProductDropState createState() => _ProductDropState();
}

class _ProductDropState extends State<ProductDrop> {
  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<ProductPageViewModel>.reactive(
      onModelReady: (h){
        h.dropdownValue = widget.product!.variety![0];
      },
      viewModelBuilder:()=>ProductPageViewModel(),
      builder:(context,model,child)=> DropdownButton<Variety>(
        value: model.dropdownValue,
        icon: const Icon(
          Icons.arrow_drop_down_outlined,
          size: 25,
          color: Color.fromRGBO(242, 39, 35, 1.0),
        ),
        iconSize: 24,
        // elevation: 16,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontFamily: 'helves',
          fontWeight: FontWeight.w600,
        ),
        onChanged: (newValue) {
          setState(() {
           model.dropdownValue = newValue!;
          });
        },
        items: widget.product!.variety!
            .map<DropdownMenuItem<Variety>>((Variety value) {
          return DropdownMenuItem<Variety>(
              value: value,
              child: SizedBox(
                  width: size.width * 0.5,
                  child:
                      Text(value.varietyname!, overflow: TextOverflow.ellipsis)));
        }).toList(),
      ),
    );
  }
}
