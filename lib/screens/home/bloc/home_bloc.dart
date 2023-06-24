import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/database/database.dart';

import '../../../models/user.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  final database = Database();
  StreamSubscription<DocumentSnapshot<User>>? subscription;

  HomeBloc() : super(HomeInitial()) {
    getUser() async {
      try {
        subscription = database.userRef.snapshots().listen((event) {
          if (event.exists) {
            emit(UserGotState(event.data()!));
          } else {
            emit(ErrorState(event.toString()));
          }
        });
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    }

    getTech() async {}
  }

  @override
  Future<Function> close() {
    return Future.value(() async {
      await subscription?.cancel();
    });
  }
}
