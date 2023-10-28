typedef _ApplyType = dynamic Function(
  List positionalArguments,
  Map<Symbol, dynamic> namedArguments,
);

class Variadic {
  final _ApplyType _apply;

  const Variadic(this._apply);

  call() => _apply([], {});

  @override
  dynamic noSuchMethod(Invocation invocation) {
    if (invocation.memberName == #call) {
      if (invocation.isMethod) {
        return _apply(
          invocation.positionalArguments,
          invocation.namedArguments,
        );
      }
      if (invocation.isGetter) return this;
    }

    return super.noSuchMethod(invocation);
  }
}
