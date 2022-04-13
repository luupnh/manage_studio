import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_customer_event.dart';
part 'search_customer_state.dart';

class SearchCustomerBloc extends Bloc<SearchCustomerEvent, SearchCustomerState> {
  SearchCustomerBloc() : super(SearchCustomerInitial()) {
    on<SearchCustomerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
