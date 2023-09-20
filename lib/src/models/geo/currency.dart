class Currency {
  String? code;
  String? name;
  String? symbol;

  Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  factory Currency.fromJson(
    Map<String, Object?> json,
  ) =>
      Currency(
        code: json["code"] as String?,
        name: json["name"] as String?,
        symbol: json["symbol"] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Currency &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          name == other.name &&
          symbol == other.symbol;

  @override
  int get hashCode => code.hashCode ^ name.hashCode ^ symbol.hashCode;

  @override
  String toString() {
    return 'Currency(code: $code, name: $name, symbol: $symbol)';
  }
}
