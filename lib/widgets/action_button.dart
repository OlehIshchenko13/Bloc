import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_3_les/bloc/user_bloc.dart';
import 'package:flutter_bloc_3_les/bloc/user_event.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          
          child: Text('load', ),
          onPressed: () {
              userBloc.add(UserLoadEvent());
          },
          
        ),
        SizedBox(width: 10,),
       ElevatedButton(
          child: Text('Clear'),
          onPressed: () {
            userBloc.add(UserClearEvent());
          },
           ) ,
        
      ],
    );
  }
}
