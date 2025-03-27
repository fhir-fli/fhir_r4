import 'package:fhir_r4/fhir_r4.dart';

/// Extension on [ElementDefinition] to provide additional functionality
extension ElementDefinitionExtension on ElementDefinition {
  /// Returns the single type of the element definition if there is only one
  ElementDefinitionType? get singleType =>
      type?.length == 1 ? type!.first : null;

  /// Returns the single type of the element definition if there is only one
  String? get singleTypeString => singleType?.code.toString();

  /// Returns the maximum cardinality of the element definition
  bool get isCollection =>
      max?.value == '*' ||
      (type?.any((t) => t.code.toString() == 'List') ?? false);

  /// Returns the minimum cardinality of the element definition
  bool get isPolymorphic => type != null && type!.length > 1;

  /// Returns the polymorphic types of the element definition
  List<String> getPolymorphicTypes() =>
      type?.map((t) => t.code.toString()).toList() ?? [];

  /// Returns the polymorphic type of the element definition
  String? getPolymorphicType(String type) {
    if (isPolymorphic) {
      final polyType = type.split('.').last;
      if (type.contains(polyType)) {
        return polyType;
      }
    }
    return null;
  }

  /// Returns the type of the element definition
  bool isType(String? searchType) =>
      searchType != null &&
      (type?.any((t) => t.code.toString() == searchType) ?? false);

  /// returns if the element definition has a type
  bool hasType() {
    if (type == null) return false;
    for (final item in type ?? <ElementDefinitionType>[]) {
      if (!item.isEmpty()) return true;
    }
    return false;
  }
}
