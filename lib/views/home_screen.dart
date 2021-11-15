import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final   width = MediaQuery.of(context).size.width;
    final  height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height *0.01,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.03),
                    child: Text(
                      "Bloc News".toUpperCase(),
                      style:const  TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    height: 1,
                    color: Colors.grey,
                    width: width,
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                  )
                ],
              ),

              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: height * 0.08),
                child: ListView.builder(
                  physics:const  AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                  itemCount: 12,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const  [
                          BoxShadow(
                            blurRadius: 1,
                            color: Colors.grey,
                            offset: Offset(0,2),
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      height: height * 0.15,
                      margin: EdgeInsets.only(top: height *0.01, bottom: height * 0.01),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: width * 0.02),
                            width: width * 0.30,
                            height: height * 0.13,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1636902540061-cc8a48b856e0?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                ),
                                fit: BoxFit.cover
                              )
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}