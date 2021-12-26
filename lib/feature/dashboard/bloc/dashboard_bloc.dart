import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardInitial()) {
    on<DashboardEvent>((event, emit) async {
      if (event is UpdateHydration) {
        emit(await _updateHydrationToState(event));
      }
    });
  }

  Future<DashboardState> _updateHydrationToState(UpdateHydration event) async {
    print(state.hydrationTotal);
    return state.copyWith(hydrationTotal: state.hydrationTotal + event.drinkMl);
  }
}
