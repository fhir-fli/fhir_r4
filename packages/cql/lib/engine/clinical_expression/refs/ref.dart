import '../../../cql.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
abstract class Ref extends CqlExpression {
  /// The name of the code.
  String name;

  /// The library name.
  String? libraryName;

  Ref({
    required this.name,
    this.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Ref.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'CodeRef':
        return CodeRef.fromJson(json);
      case 'ConceptRef':
        return ConceptRef.fromJson(json);
      case 'CodeSystemRef':
        return CodeSystemRef.fromJson(json);
      case 'ValueSetRef':
        return ValueSetRef.fromJson(json);
      case 'ParameterRef':
        return ParameterRef.fromJson(json);
      case 'ExpressionRef':
        return ExpressionRef.fromJson(json);
      case 'FunctionRef':
        return FunctionRef.fromJson(json);
      case 'IdentifierRef':
        return IdentifierRef.fromJson(json);
      default:
        throw ArgumentError('Invalid type: ${json['type']}');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'name': name,
      'type': type,
      if (resultTypeSpecifier != null)
        'resultTypeSpecifier': resultTypeSpecifier!.toJson(),
      if (localId != null) 'localId': localId,
      if (locator != null) 'locator': locator,
      if (libraryName != null) 'libraryName': libraryName,
      if (annotation != null)
        'annotation': annotation!.map((x) => x.toJson()).toList(),
      if (resultTypeName != null) 'resultTypeName': resultTypeName,
    };

    return json;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type;
}
