import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (event != null && event is Equatable) {
      log("on$event : ${event.props}", name: 'BLOC');
    } else {
      log("onEvent :$event", name: 'BLOC');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log("OnChange : $change", name: 'BLOC');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log("onCreate : $bloc", name: 'BLOC');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log("onTransition : $transition", name: 'BLOC');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log("onError: $error", name: 'BLOC');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log("onClose : $bloc", name: "BLOC");
  }
}
