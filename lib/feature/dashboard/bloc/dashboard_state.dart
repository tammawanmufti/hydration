part of 'dashboard_bloc.dart';

abstract class DashboardState extends Equatable {
  final double hydrationTotal;
  final double hydrationTarget;
  const DashboardState({required this.hydrationTarget, required this.hydrationTotal});

  @override
  List<Object> get props => [hydrationTarget, hydrationTotal];

  double get percentage => hydrationTotal / hydrationTarget;
}

class DashboardInitial extends DashboardState {
  const DashboardInitial() : super(hydrationTotal: 0, hydrationTarget: 2000);

  @override
  List<Object> get props => [hydrationTarget, hydrationTotal];
}
