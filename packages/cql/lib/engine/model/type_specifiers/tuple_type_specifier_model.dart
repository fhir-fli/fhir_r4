import '../../../cql.dart';

/// Represents a tuple type specifier.
///
/// The [TupleTypeSpecifier] type defines the possible elements of a tuple.
class TupleTypeSpecifierModel extends TypeSpecifierModel {
  /// Elements within TupleTypeSpecifier.
  List<TupleTypeSpecifierElement>? element;

  TupleTypeSpecifierModel({this.element});

  TupleTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : element = map['element'] != null
            ? (map['element'] as List)
                .map((e) => TupleTypeSpecifierElement.fromJson(e))
                .toList()
            : null,
        super(type: 'TupleTypeSpecifier');

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'TupleTypeSpecifier',
    };
    if (element != null) {
      map['element'] = element!.map((e) => e.toJson()).toList();
    }
    return map;
  }
}
