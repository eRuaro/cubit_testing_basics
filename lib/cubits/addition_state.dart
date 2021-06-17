part of 'addition_cubit.dart';

class AdditionState extends Equatable {
  final int number;

  AdditionState({required this.number});

  @override
  List<Object> get props => [this.number];
}
