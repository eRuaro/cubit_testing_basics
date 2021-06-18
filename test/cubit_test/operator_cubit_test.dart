import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:cubit_testing_basics/cubits/operator_cubit.dart';

void main() {
  group(OperatorCubit, () {
    late OperatorCubit operatorCubit;

    //initialize the testing setup
    setUp(() {
      operatorCubit = OperatorCubit();
    });

    //dictates what will happen after the test finishes
    tearDown(() {
      operatorCubit.close();
    });

    //test the initial state, number: 1
    test("Initial state of OperatorCubit is OperatorState(number: 1.0)", () {
      expect(operatorCubit.state, OperatorState(number: 1.0));
    });

    //test the cubits
    blocTest(
      "The cubit should emit a state of OperatorState(number: 2.0) when add() is called",
      build: () => operatorCubit,
      act: (cubit) => operatorCubit.add(),
      expect: () => [OperatorState(number: 2.0)],
    );

    blocTest(
      "The cubit should emit a state of OperatorState(number: 0.0) when substract() is called",
      build: () => operatorCubit,
      act: (cubit) => operatorCubit.substract(),
      expect: () => [OperatorState(number: 0.0)],
    );

    blocTest(
      "The cubit should emit a state of OperatorState(number: 2.0) when multiply() is called",
      build: () => operatorCubit,
      act: (cubit) => operatorCubit.multiply(),
      expect: () => [OperatorState(number: 2.0)],
    );

    blocTest(
      "The cubit should emit a state of OperatorState(number: 0.5) when divide() is called",
      build: () => operatorCubit,
      act: (cubit) => operatorCubit.divide(),
      expect: () => [OperatorState(number: 0.5)],
    );
  });
}
