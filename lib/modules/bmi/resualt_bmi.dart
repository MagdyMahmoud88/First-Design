import 'package:flutter/material.dart';


class ResualtBmi extends StatelessWidget {
  final bool  gender;
  final int ? age;
  final double ? resualt;

  ResualtBmi({
    this.gender = true ,
    @required this.age,
   @required this.resualt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:const Text("resualt")),
      body: Center(
        child: Column (
         mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         Text( "  ${gender ? "male" : "female"}" ,
          style: const TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
          ),
             Text("your age is =   $age" ,
              style:const TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
            ), const Text("ياتخييييييييين" ,
              style:  TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
