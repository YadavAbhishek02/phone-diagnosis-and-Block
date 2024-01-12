import 'package:flutter/material.dart';
import 'package:system_info2/system_info2.dart';
class SensorPage extends StatefulWidget {
  const SensorPage({super.key});
  @override
  State<SensorPage> createState() => _SensorPageState();
}
class _SensorPageState extends State<SensorPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade100,
        title: Text('Sensor Test',style: TextStyle(
            color: Colors.teal.shade900,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const  EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.teal.shade500
                          ),
                            child: const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:  Icon(Icons.watch_later_outlined,color: Colors.white,size: 25,),
                            )),
                        const SizedBox(width: 20,),
                        Text('Barometer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                            color: Colors.teal.shade900),),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
            Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.teal.shade500
                            ),
                            child: const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:  Icon(Icons.watch_later_outlined,color: Colors.white,size: 25,),
                            )),
                        const SizedBox(width: 20,),
                        Text('Shake',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                            color: Colors.teal.shade900),),
                        const SizedBox(width: 10,),

                      ],
                    ),
                  ),
                ),
              ],
            ),

          const SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Container(
            decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.teal.shade500
                  ),
                  child: const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Icon(Icons.watch_later_outlined,color: Colors.white,size: 25,),
                  )),
             const SizedBox(width: 20,),
              Text('Acceleration',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                  color: Colors.teal.shade900),),
              const SizedBox(width: 10,),
            ],
          ),
        ),
      ),
            Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.teal.shade500
                            ),
                            child: const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:  Icon(Icons.watch_later_outlined,color: Colors.white,size: 25,),
                            )),
                       const  SizedBox(width: 20,),
                        Text('Light',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                            color: Colors.teal.shade900),),
                        const SizedBox(width: 10,),

                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.teal.shade500
                            ),
                            child: const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:  Icon(Icons.watch_later_outlined,color: Colors.white,size: 25,),
                            )),
                        const SizedBox(width: 20,),
                        Text('Bluetooth',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                            color: Colors.teal.shade900),),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
            Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.teal.shade500
                            ),
                            child: const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:  Icon(Icons.watch_later_outlined,color: Colors.white,size: 25,),
                            )),
                        const  SizedBox(width: 20,),
                        Text('Compass',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                            color: Colors.teal.shade900),),
                        const SizedBox(width: 10,),

                      ],
                    ),
                  ),
                ),
              ],
            ),
        const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 80,right: 80),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.teal.shade500
                          ),
                          child: const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child:  Icon(Icons.watch_later_outlined,color: Colors.white,size: 25,),
                          )),
                      const  SizedBox(width: 20,),
                      Text('Proximity',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                          color: Colors.teal.shade900),),


                    ],
                  ),
                ),
              ),
            ),


        const SizedBox(height: 40,),

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal.shade600,
              ),
             child:  Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 const Text('Current Acceleration',style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.bold,fontSize: 20),),
                 const SizedBox(height: 10,),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                   Container(
                     height: 140,
                     width: 100,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                       color: Colors.teal.shade900
                     ),
                     child: Center(child: Text("${SysInfo.kernelArchitecture}",style:
                      const  TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                   ),
                   Container(
                     height: 140,
                     width: 100,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.teal.shade900
                   ),
                   ),
                   Container(
                     height: 140,
                     width: 100,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.teal.shade900
                   ),
                   ),
                 ],
                 )
               ],
             ),
            )

          ],
        ),
      ),
    );
  }
}
