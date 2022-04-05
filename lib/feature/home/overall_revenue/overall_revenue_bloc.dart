import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'overall_revenue_event.dart';
part 'overall_revenue_state.dart';

class OverallRevenueBloc extends Bloc<OverallRevenueEvent, OverallRevenueState> {
  OverallRevenueBloc() : super(OverallRevenueInitial()) {
    on<OverallRevenueEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
