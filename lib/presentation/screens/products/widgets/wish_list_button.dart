import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class WishListButton extends StatelessWidget {
  const WishListButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(241, 48, 46, 1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(23),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(23.0),
        child: Container(
          height: 45,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.add,
                  size: 20.0,
                  color: Colors.white,
                ),
                Text(
                  'Wishlist',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'helves',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
        onTap: () {
          // Get.to(() => Wishlist());
          AutoRouter.of(context).push(const WishList());
        },
      ),
    );
  }
}
