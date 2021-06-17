import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'addition_state.dart';

class AdditionCubit extends Cubit<AdditionState> {
  AdditionCubit() : super(AdditionState(number: 1));

  void add() {
    emit(
      AdditionState(number:  state.number + 1),
    );
  }
}
