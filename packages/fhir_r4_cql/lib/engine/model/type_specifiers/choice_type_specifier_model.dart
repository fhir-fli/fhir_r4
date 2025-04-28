import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Represents a choice type specifier, extending [TypeSpecifier].
///
/// The [ChoiceTypeSpecifier] type represents a choice type,
/// extending TypeInfo and including choice elements.
class ChoiceTypeSpecifierModel extends TypeSpecifierModel {
  /// Choice elements.
  List<TypeSpecifierModel>? choice;

  ChoiceTypeSpecifierModel({
    this.choice,
  });

  ChoiceTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : choice = map['choice'] != null
            ? (map['choice'] as List)
                .map((e) => TypeSpecifierModel.fromJson(e))
                .toList()
            : null,
        super(type: 'ChoiceTypeSpecifier');

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'ChoiceTypeSpecifier',
    };
    if (choice != null) {
      map['choice'] = choice!.map((e) => e.toJson()).toList();
    }
    return map;
  }
}
