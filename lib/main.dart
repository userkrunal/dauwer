import 'package:dauwer/provider/stepprovider.dart';
import 'package:dauwer/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => StpProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>Home_Screen()
        },
      ),
    ),
  );
}