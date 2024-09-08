


import 'package:flutter_bloc/flutter_bloc.dart';

import '../Models/cubit.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super (Initialization_States()) ;

// to easily call to object of countercubit
static CounterCubit get(context) => BlocProvider.of(context) ;

  int counter = 1;

void Min()
{
  counter--;
emit(CounterMinState()) ;
}
  void Plus()
  {
    counter++;
 emit(CounterPlusState()) ;
  }
}