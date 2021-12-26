import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';
import 'package:hydration/routes/router.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashEvent>((event, emit) async {
      if (event is FirstLoading) {
        emit(await _firstLoadingToState());
      }
    });
  }

  Future<SplashState> _firstLoadingToState() async {
    return Future.delayed(const Duration(seconds: 2), () {
      Get.offAndToNamed(Routes.dashboard);
      return SplashLoaded();
    });
  }
}
