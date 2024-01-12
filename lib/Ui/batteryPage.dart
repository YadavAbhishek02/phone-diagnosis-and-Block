import 'package:flutter/material.dart';

class BatteryPage extends StatefulWidget {
  const BatteryPage({Key? key}) : super(key: key);

  @override
  State<BatteryPage> createState() => _BatteryPageState();
}

class _BatteryPageState extends State<BatteryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,

        title: RichText(
          text: const TextSpan(
              text: 'Get Battery',
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: [
                TextSpan(
                    text: ' information',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
              ]),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.teal,
                    Colors.teal.shade500,
                    Colors.teal.shade100
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      // height: MediaQuery.sizeOf(context).height*0.5,
                      // width: MediaQuery.sizeOf(context).width*0.8,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.teal.shade500),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.teal.shade900),
                              child: Center(
                                child: SizedBox(
                                  child: Column(
                                    children: [
                                       const Padding(
                                        padding:  EdgeInsets.all(10),
                                        child:  Icon(
                                          Icons.electric_bolt,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(10),
                                        child:  Text(
                                          '6000 mAh',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),

                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                          color: Colors.orangeAccent.shade700,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            'No Charge',
                                            style: TextStyle(
                                                color:
                                                Colors.brown.shade700,),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width*0.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal.shade900),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text(
                                      'Technology',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      'Li-poly',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: MediaQuery.sizeOf(context).width*0.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal.shade900),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text(
                                      'Voltage',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      '-1.00',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: MediaQuery.sizeOf(context).width*0.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal.shade900),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text(
                                      'Temperature',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      '30 C',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: MediaQuery.sizeOf(context).width*0.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal.shade900),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Text(
                                      'Health',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      'Good',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        const Column(
                          children: [
                            Icon(
                              Icons.battery_4_bar,
                              size: 150,
                              color: Colors.white70,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
    );
  }
}
