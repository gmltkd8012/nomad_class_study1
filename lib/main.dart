import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad_class_study01/widget/button.dart';
import 'package:nomad_class_study01/widget/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       backgroundColor: Color(0xFF181818),
       body: SingleChildScrollView(
         child: Padding(
           padding: EdgeInsets.symmetric(
               horizontal: 20,
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                 height: 80,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text('Hey, Selena',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 34,
                           fontWeight: FontWeight.w600,
                         ),),
                       Text('Welcom back',
                         style: TextStyle(
                             color: Colors.grey,
                             fontSize: 18,
                         ),)
                     ],
                   )
                 ],
               ),
               SizedBox(
                 height: 70,
               ),
               Text('Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
               ),
               SizedBox(
                 height: 10,
               ),
               Text('\$5 194 482',
                 style: TextStyle(
                   fontSize: 48,
                   fontWeight: FontWeight.w600,
                   color: Colors.white,
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Button(text: 'Transfer',
                    bgColor: Color(0xFFF1B33B),
                    textColor: Colors.black,
                   ),
                   Button(text: 'Request',
                     bgColor: Color(0xFF1F2123),
                     textColor: Colors.white,
                   ),
                 ],
               ),
               SizedBox(
                 height: 100,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Text('Wallets',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 36,
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                   Text('View All',
                     style: TextStyle(
                       color: Colors.white.withOpacity(0.8),
                       fontSize: 18,
                     ),
                   ),
                 ],
               ),
               SizedBox(
                 height: 20,
               ),
               CurrencyCard(
                 name: 'Euro',
                 code: 'EUR',
                 amount: '6 428',
                 icon: Icons.euro_rounded,
                 isInverted: false,
                 order: 0,
               ),
               CurrencyCard(
                 name: 'Bitcoin',
                 code: 'BTC',
                 amount: '9 785',
                 icon: Icons.currency_bitcoin,
                 isInverted: true,
                 order: -2,
               ),
               CurrencyCard(
                 name: 'Dollar',
                 code: 'USD',
                 amount: '428',
                 icon: Icons.attach_money_outlined,
                 isInverted: false,
                 order: -4,
               ),
             ],
           )
         ),
       ),
     ),
    );
  }
}

