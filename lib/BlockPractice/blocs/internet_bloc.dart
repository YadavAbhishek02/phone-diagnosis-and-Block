import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:diagnostic_android_application/BlockPractice/blocs/internet_events.dart';
import 'package:diagnostic_android_application/BlockPractice/blocs/internet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBlock extends Bloc<InternetEvent,InternetState>{

  final Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;
  InternetBlock(): super(InternetInitialSate()){
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
    on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));

    connectivitySubscription= _connectivity.onConnectivityChanged.listen((result) {
      if(result==ConnectivityResult.mobile || result== ConnectivityResult.wifi){
        add(InternetGainedEvent());
      }
      else {
       add(InternetLostEvent());
      }


    });
  }
  @override
  Future<void> close(){
  connectivitySubscription?.cancel();
    return super.close();
  }
}