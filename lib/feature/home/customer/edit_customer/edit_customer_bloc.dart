import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_customer_event.dart';
part 'edit_customer_state.dart';

class EditCustomerBloc extends Bloc<EditCustomerEvent, EditCustomerState> {
  EditCustomerBloc() : super(EditCustomerInitial()) {
    on<EditCustomerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
