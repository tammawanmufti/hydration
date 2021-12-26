part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  final int hydrationTotal;
  final int hydrationTarget;
  const DashboardState({required this.hydrationTarget, required this.hydrationTotal});

  @override
  List<Object> get props => [hydrationTarget, hydrationTotal];

  double get percentage {
    if ((hydrationTotal / hydrationTarget) > 1.0) {
      return 1;
    }
    return hydrationTotal / hydrationTarget;
  }

  Future<DashboardState> copyWith({int? hydrationTotal, int? hydrationTarget}) async {
    return DashboardState(
      hydrationTarget: hydrationTarget ?? this.hydrationTarget,
      hydrationTotal: hydrationTotal ?? this.hydrationTotal,
    );
  }
}

class DashboardInitial extends DashboardState {
  const DashboardInitial() : super(hydrationTotal: 0, hydrationTarget: 2000);

  @override
  List<Object> get props => [hydrationTarget, hydrationTotal];
}
