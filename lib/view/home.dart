import 'package:dauwer/provider/stepprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  StpProvider? providerF;
  StpProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<StpProvider>(context,listen: false);
    providerT=Provider.of<StpProvider>(context,listen: true);

    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Hello"),centerTitle: true),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/man.png"),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Himalay"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Himalay120@gmail.com"),
              ],
            ),
            SizedBox(height: 10),
            Divider(height: 10,thickness: 1,color: Colors.blue),
            SizedBox(height: 10),
            ListTile(title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(title: Text("Login"),
              leading: Icon(Icons.login),
            ),
            ListTile(title: Text("Logout "),
              leading: Icon(Icons.logout),
            ),
            ListTile(title: Text("Setting"),
              leading: Icon(Icons.settings),
            ),


          ],
        ),
      ),
      body: Stepper(
        currentStep: providerT!.i,
        onStepContinue: () {
            providerF!.continu();
        },
        onStepCancel: () {
            providerF!.close();
        },
        steps: [
          Step(title: Text("Persoonal"), content: Text("Enter Your Name...")),
          Step(title: Text("Document"), content: Text("Enter Document...")),
          Step(title: Text("Documet verification"), content: Text("Verification Successful...")),
          Step(title: Text("Payment Details"), content: Text("Enter Payment details...")),
          Step(title: Text("Submit"), content: Text("Successful...")),
        ],
      ),
    ));
  }
}
