import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quez2/config/get_it_config.dart';
import 'package:quez2/scren/ShoLoginUser.dart';
import 'package:shared_preferences/shared_preferences.dart';

final TextEditingController name = TextEditingController();
final TextEditingController password = TextEditingController();

class LogInPeg extends StatelessWidget {
  const LogInPeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 50, 77, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 150,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Color.fromRGBO(119, 193, 193, 1),
                  child: Image.asset('assets/Intersect.png'),
                ),
              )),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.circular(15)),
              width: 350,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color.fromRGBO(119, 193, 193, 0.75),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      controller: name,
                      decoration: const InputDecoration(
                        hintText: 'Enter your username',
                        suffixIcon:
                            Icon(Icons.check_circle, color: Colors.green),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color.fromRGBO(119, 193, 193, 0.75),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      controller: password,
                      decoration: const InputDecoration(
                        fillColor: Color.fromRGBO(119, 193, 193, 0.75),
                        hintText: 'Enter your password',
                        suffixText: 'Strong',
                        suffixStyle: TextStyle(color: Colors.green),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255)),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(83, 83, 83, 1)),
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              core.get<SharedPreferences>().setString('name', name.text);

              core.get<SharedPreferences>().setString('pass', password.text);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const dtatprint(),
                  ));
            },
            child: Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(
                    color: Color.fromRGBO(10, 50, 77, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              )),
            ),
          )
          // Center(
          //   // child: Stack(
          //   //   children: [
          //   //     Center(
          //   //       child: Container(
          //   //         color: Color.fromRGBO(119, 193, 193, 1),
          //   //         width: 288,
          //   //         height: 300,
          //   //         child: Column(
          //   //           children: [
          //   //             Text(
          //   //               'Email',
          //   //               style: TextStyle(
          //   //                   fontWeight: FontWeight.w400, fontSize: 15),
          //   //             ),
          //   //             TextField(
          //   //               decoration:
          //   //                   InputDecoration(hintText: 'Example@gmail.com'),
          //   //             ),
          //   //             Text(
          //   //               'Password',
          //   //               style: TextStyle(
          //   //                   fontWeight: FontWeight.w400, fontSize: 15),
          //   //             ),
          //   //             TextField(
          //   //               decoration:
          //   //                   InputDecoration(hintText: '***************'),
          //   //             ),
          //   //             SizedBox(
          //   //               height: 50,
          //   //             )
          //   //           ],
          //   //         ),
          //   //       ),
          //   //     ),
          //   //     Positioned(
          //   //         top: -10,
          //   //         left: 120,
          //   //         child: CircleAvatar(
          //   //           radius: 85,
          //   //           backgroundColor: Colors.white,
          //   //           child: CircleAvatar(
          //   //             radius: 75,
          //   //             backgroundColor: Color.fromRGBO(119, 193, 193, 1),
          //   //             child: Image.asset('asset/Intersect.png'),
          //   //           ),
          //   //         )),
          //   //   ],
          //   // ),
          // )
        ],
      ),
    );
  }
}
