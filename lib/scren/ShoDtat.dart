import 'package:flutter/material.dart';
import 'package:quez2/model/comment_model.dart';
import 'package:quez2/service/dataservice.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //عم يفرش وما ضل معي وقت لضيف

          //  Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Center(
          //                   child: Container(
          //                     width: 300,
          //                     height: 50,
          //                     decoration: BoxDecoration(
          //                         border: Border.all(
          //                           color: const Color.fromARGB(255, 9, 91, 158),
          //                           width: 2,
          //                         ),
          //                         borderRadius: BorderRadius.circular(15),
          //                         color: Colors.blueAccent),
          //                     child: Row(
          //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                       children: [
          //                         Padding(
          //                           padding: const EdgeInsets.all(5.0),
          //                           child: Text(
          //                             'All projects',
          //                             style: TextStyle(
          //                                 fontSize: 25,
          //                                 fontWeight: FontWeight.w600),
          //                           ),
          //                         ),
          //                         Container(
          //                           child: Padding(
          //                             padding: const EdgeInsets.all(8.0),
          //                             child: Row(
          //                               children: [
          //                                 CircleAvatar(
          //                                   radius: 5,
          //                                   backgroundColor: Colors.blueGrey,
          //                                 ),
          //                                 SizedBox(
          //                                   width: 5,
          //                                 ),
          //                                 CircleAvatar(
          //                                   radius: 5,
          //                                   backgroundColor:
          //                                       Color.fromARGB(242, 139, 106, 96),
          //                                 ),
          //                               ],
          //                             ),
          //                           ),
          //                         )
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               ),
          FutureBuilder<List<CommentModel>>(
            future: CommentsSerivceImp().getComment(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData) {
                List<CommentModel>? comments = snapshot.data;
                return ListView.builder(
                  itemCount: comments!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        //بدي انقل لفوق بس فرش عندي و ما ضل وقت
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              width: 300,
                              height: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 9, 91, 158),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blueAccent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      'All projects',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.blueGrey,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Color.fromARGB(
                                                242, 139, 106, 96),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            height: 500,
                            child: ListView.builder(
                              itemCount: comments.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color:
                                            Color.fromRGBO(207, 211, 214, 1)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/traingle.png'))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              comments[index].user.username,
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 175,
                                          height: 75,
                                          child: Text(
                                              comments[index].user.fullName),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              } else {
                return Center(child: Text('No data available'));
              }
            },
          ),
        ],
      ),
    );
  }
}
