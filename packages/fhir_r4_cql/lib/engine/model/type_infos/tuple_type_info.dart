import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Represents a tuple type information, extending [TypeInfo].
///
/// The [TupleTypeInfo] type extends TypeInfo and consists of elements
/// representing TupleTypeInfoElement.
class TupleTypeInfo extends TypeInfo {
  /// Elements within TupleTypeInfo.
  List<TupleTypeInfoElement>? element;

  TupleTypeInfo({
    this.element,
    super.baseType,
  });

  factory TupleTypeInfo.fromJson(Map<String, dynamic> json) {
    return TupleTypeInfo(
      element: json['element'] != null
          ? (json['element'] as List)
              .map((i) => TupleTypeInfoElement.fromJson(i))
              .toList()
          : null,
      baseType: json['baseType'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': type};
    if (baseType != null) {
      data['baseType'] = baseType;
    }
    if (element != null) {
      data['element'] = element!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  String get type => 'TupleTypeInfo';
}
