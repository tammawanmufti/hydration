part of 'dashboard_bloc.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object> get props => [];
}

class UpdateHydration extends DashboardEvent {
  final int drinkMl;

  const UpdateHydration(this.drinkMl);
}
