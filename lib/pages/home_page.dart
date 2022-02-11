import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_3_les/bloc/user_bloc.dart';
import 'package:flutter_bloc_3_les/services/repository.dart';
import 'package:flutter_bloc_3_les/widgets/action_button.dart';
import 'package:flutter_bloc_3_les/widgets/user_list.dart';

class HomePage extends StatelessWidget {
  final usersRepository = UsersRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(usersRepository),
      child: Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: Text('Users List'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ActionButtons(),
            Expanded(child: UserList()),
          ],
        ),
      ),
    );
  }
}