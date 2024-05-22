import 'package:flutter/material.dart';
import 'package:task/core/widgets/custom_button.dart';
import 'package:task/features/cart/presentation/views/cart_view_body.dart';

import '../../../../constants.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const CartViewBody(),
      Positioned(
        bottom: 16,
        left: 25,
        right: 25,
        child: Center(
          child: ElevatedButton(
           style:  ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
            ),
            onPressed: () {
             showBottomSheet(context: context, builder: (context){
               return Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     const Text("Are you sure ?",
                     style: TextStyle(
                       fontSize: 40,
                       fontWeight: FontWeight.bold
                     ),),
                     const SizedBox(height: 400,),
                     CustomButton(onTap: (){}, title: "Order please")
                   ],
                 ),
               );
             });
            },
            child: const SizedBox(
              height: 48,
              width: double.infinity,
              child: Center(
                child: Text('Checkout',
                   textAlign: TextAlign.center,
                   style:  TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    )),
              ),
            ),
          ),
        ),
      )
    ],);
  }
}
