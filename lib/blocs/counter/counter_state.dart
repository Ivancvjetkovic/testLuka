class CounterState {
  int value;

  CounterState({
    required this.value,
  });

  // factory CounterState.initialState() {
  //   return CounterState(value: 0);
  // }

  CounterState copyWith({
    int? value,
  }) =>
      CounterState(
        value: value ?? this.value,
      );
}
