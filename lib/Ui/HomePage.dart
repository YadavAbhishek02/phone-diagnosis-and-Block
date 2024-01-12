import 'package:diagnostic_android_application/NavigationBar/navigatorbar.dart';
import 'package:diagnostic_android_application/Ui/sensorPage.dart';
import 'package:flutter/material.dart';
import 'package:system_info2/system_info2.dart';
import 'batteryPage.dart';
const int megaByte = 1024 * 1024;
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test your Phone',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 InkWell(
                   onTap: (){
                     NavigationService.navigateToSensorPage(context);
                   },
                   child: Container(
                     decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(20),
                         color: Colors.blue.shade50),
                     child: const Padding(
                       padding: EdgeInsets.all(20),
                       child: Row(
                         children: [
                           Icon(Icons.sensor_occupied_outlined,
                             color: Colors.grey,size: 30,),
                           SizedBox(width: 20,),
                           Text('Sensors',style: TextStyle(fontSize: 20,
                               color: Colors.black,fontWeight: FontWeight.bold),)
                         ],
                       ),
                     ),
                   ),
                 ),


                 InkWell(
                   onTap: (){
                     NavigationService.navigateToBatteryPage(context);
                   },
                   child: Container(
                     decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(20),
                         color: Colors.blue.shade50),
                     child: const Padding(
                       padding: EdgeInsets.all(20),
                       child: Row(
                         children: [
                           Icon(Icons.battery_4_bar_outlined,color: Colors.grey,size: 30),
                           SizedBox(width: 20,),
                           Text('Battery',style: TextStyle(fontSize: 20,
                               color: Colors.black,fontWeight: FontWeight.bold),)
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),

           const SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){
                    NavigationService.navigateToNetworkPage(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        color: Colors.blue.shade50),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(Icons.network_check_outlined,
                            color: Colors.grey,size: 30,),
                          SizedBox(width: 20,),

                          Text('Network',style: TextStyle(fontSize: 20,
                                  color: Colors.black,fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                  ),
                ),


                Container(
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      color: Colors.blue.shade50),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(Icons.storage,color: Colors.grey,size: 30),
                        SizedBox(width: 20,),
                        Text('Storage',style: TextStyle(fontSize: 20,
                            color: Colors.black,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50,),


            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade50,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.mobile_friendly,size: 35,color: Colors.grey,),
                        const SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.shade800,
                          ),
                          child:   Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(Icons.mobile_friendly_outlined,size: 20,color: Colors.white,),
                                Text(SysInfo.kernelName,style: const TextStyle(fontSize: 20,
                                    color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.shade800,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.battery_0_bar,size: 20,color: Colors.white,),
                                Text('6000 mAh',style: TextStyle(
                                    color: Colors.white,fontSize: 20),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                     const SizedBox(height: 80,),
                    LinearProgressIndicator(
                      value: 0.5,
                      borderRadius: BorderRadius.circular(10),
                      minHeight: 10,
                      backgroundColor: Colors.grey,
                      color: Colors.white,
                    ),
                     Text('${SysInfo.getFreePhysicalMemory()~/ megaByte} MB of ${SysInfo.getTotalPhysicalMemory() ~/ megaByte} MB '),
                  ],
                ),
              ),
            )
          ],
        ),


      ),
    );
  }
}
