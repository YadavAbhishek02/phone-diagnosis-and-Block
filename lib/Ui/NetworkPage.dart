import 'package:flutter/material.dart';
import 'package:network_info_plus/network_info_plus.dart';
class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});
  @override
  State<NetworkPage> createState() => _NetworkPageState();
}
class _NetworkPageState extends State<NetworkPage> {
  final NetworkInfo networkInfo = NetworkInfo();
  String wifiIPAddress = 'Loading...';
  String wifiIpName = 'Loading...';
  @override
  void initState() {
    super.initState();
    getWifiIPAddress();
    getWifiName();
  }

  Future<void> getWifiName() async {
    String? wifiName = await networkInfo.getWifiSubmask();
    setState(() {
      wifiIpName = wifiName ?? 'Not available';
    });
  }

  Future<void> getWifiIPAddress() async {
    String? ipAddress = await networkInfo.getWifiIP();
    setState(() {
      wifiIPAddress = ipAddress ?? 'Not available';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:const Text('Network & Wifi Information',style: TextStyle(
            fontSize: 25,
            color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.teal, Colors.teal.shade500, Colors.teal.shade100],
          ),
        ),
        child:  Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal.shade500,
              ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent.shade700,
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Connected',style: TextStyle(color: Colors.brown.shade700,fontSize: 20),),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal.shade900
                              ),
                              child: Padding(
                                padding: const  EdgeInsets.all(8),
                                child:  Column(
                                  children: [

                                    Center(child: Text('IP Address: $wifiIPAddress',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal.shade900
                              ),
                              child: Padding(
                                padding:  const EdgeInsets.all(8),
                                child:  Column(
                                  children: [
                                  Text('Wifi-Name: $wifiIpName',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 50,),
                        Column(
                          children: [
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal.shade900
                              ),
                              child:const Padding(
                                padding:  EdgeInsets.all(8),
                                child:  Column(
                                  children: [
                                    Text('Technology',style: TextStyle(color: Colors.white),),
                                    Text('Li-poly',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal.shade900
                              ),
                              child:const Padding(
                                padding:  EdgeInsets.all(8),
                                child:  Column(
                                  children: [
                                    Text('Technology',style: TextStyle(color: Colors.white),),
                                    Text('Li-poly',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Signal Level'),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      borderRadius: BorderRadius.circular(10),
                      minHeight: 10,
                      backgroundColor: Colors.teal.shade900,
                      color: Colors.orangeAccent,

                    ),
                  ),
                ],
              ),
            )
      
          ],
        ),
      ),
    );
  }
}
