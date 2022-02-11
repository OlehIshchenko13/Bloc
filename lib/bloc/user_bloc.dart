import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_3_les/bloc/user_event.dart';
import 'package:flutter_bloc_3_les/bloc/user_state.dart';
import 'package:flutter_bloc_3_les/models/user.dart';
import 'package:flutter_bloc_3_les/services/repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UsersRepository usersRepository;

  UserBloc(this.usersRepository) : super(UserEmptyState()) {
    on<UserLoadEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final List<User> _loadedUserList = await usersRepository.getAllUsers();
        emit(UserLoadedState(loadedUser: _loadedUserList));
      } catch (_) {
        emit(UserErrorState());
      }
    });
    on<UserClearEvent>((event, emit) async {
      emit(UserEmptyState());
    });
  }
}