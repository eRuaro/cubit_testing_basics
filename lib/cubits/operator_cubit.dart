import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'operator_state.dart';

class OperatorCubit extends Cubit<OperatorState> {
  OperatorCubit() : super(OperatorState(number: 1));

  void add() {
    emit(
      OperatorState(number: state.number + 1),
    );
  }

  void substract() {
    emit(
        OperatorState(number: state.number - 1),
    );
  }

  void multiply() {
    emit(
        OperatorState(number: state.number * 2 ),
    );
  }

  void divide() {
    emit(
        OperatorState(number: state.number / 2),
    );
  }
}
