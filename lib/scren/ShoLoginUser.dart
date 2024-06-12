import 'package:flutter/material.dart';
import 'package:quez2/config/get_it_config.dart';
import 'package:quez2/scren/ShoDtat.dart';
import 'package:quez2/scren/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class dtatprint extends StatelessWidget {
  const dtatprint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    "Welcome Mr ${core.get<SharedPreferences>().getString('name') ?? 'User'}",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    "pass:  ${core.get<SharedPreferences>().getString('pass') ?? 'User'}",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyWidget(),
                      ));
                },
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 15, 116, 211),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    'Gat Data',
                    style: TextStyle(
                        color: Color.fromRGBO(10, 50, 77, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
