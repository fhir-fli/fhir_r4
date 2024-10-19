// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of link between this patient resource and another patient resource.
@collection
class LinkType {
  /// Constructor for internal use (like enum)
  LinkType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// LinkType values
  /// replaced_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LinkType replaced_by = LinkType(
    fhirCode: 'replaced-by',
  );

  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LinkType replaces = LinkType(
    fhirCode: 'replaces',
  );

  /// refer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LinkType refer = LinkType(
    fhirCode: 'refer',
  );

  /// seealso
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LinkType seealso = LinkType(
    fhirCode: 'seealso',
  );

  /// For instances where an Element is present but not value

  static final LinkType elementOnly = LinkType();

  /// List of all enum-like values
  static final List<LinkType> values = [
    replaced_by,
    replaces,
    refer,
    seealso,
  ];

  /// Returns the enum value with an element attached
  LinkType withElement(Element? newElement) {
    return LinkType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [LinkType] from JSON.
  static LinkType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkType.elementOnly.withElement(element);
    }
    return LinkType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LinkType.$fhirCode';
}
