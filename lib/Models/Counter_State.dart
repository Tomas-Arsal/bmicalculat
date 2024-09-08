import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../counter/states.dart';
import 'cubit.dart';

class Counter_State extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if(state is Initialization_States){
            print('state is initialize') ;
          }
          if(state is CounterPlusState)
          {
            print('State is plue ') ;
          }
          if(state is CounterMinState)
          {
            print('State is Mins ') ;
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Counter'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).Plus() ;
                    },
                    child: const Text(
                      'PLUS',
                      style: TextStyle(
                        color: CupertinoColors.darkBackgroundGray,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).Min() ;
                    },
                    child: const Text(
                      'MINUS',
                      style: TextStyle(
                        color: CupertinoColors.darkBackgroundGray,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}