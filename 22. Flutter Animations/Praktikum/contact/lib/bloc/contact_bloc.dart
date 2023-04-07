import 'package:contact/models/contact.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial(contacts: List.empty())) {
    on<ContactEvent>((event, emit) async {
      emit(Loading(contacts: state.contacts));

      await Future.delayed(const Duration(milliseconds: 300));

      if (event is CreateContact) {
        emit(ContactLoaded(contacts: [...state.contacts, event.contact]));
      } else if (event is DeleteContact) {
        emit(ContactLoaded(
            contacts: [...state.contacts]..remove(event.contact)));
      } else if (event is UpdateContact) {
        emit(ContactLoaded(contacts: [...state.contacts, event.contact]));
      } else if (event is ContactErrored) {
        emit(Error(contacts: state.contacts));
      }

      emit(ContactLoaded(contacts: state.contacts));
      // TODO: implement event handler
    });
  }
}
