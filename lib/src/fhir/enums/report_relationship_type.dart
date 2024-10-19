// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of relationship between reports.
@Entity()
class ReportRelationshipType extends FhirCode {
  /// Factory constructor to create [ReportRelationshipType] from JSON.
  factory ReportRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportRelationshipType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ReportRelationshipType._(value, element);
    }
    throw ArgumentError(
      'ReportRelationshipType.fromJson: JSON value is not a valid value',
    );
  }

  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportRelationshipType.replaces([this.element])
      : dbValue = 'replaces',
        super('replaces', element);

  /// amends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportRelationshipType.amends([this.element])
      : dbValue = 'amends',
        super('amends', element);

  /// appends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportRelationshipType.appends([this.element])
      : dbValue = 'appends',
        super('appends', element);

  /// transforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportRelationshipType.transforms([this.element])
      : dbValue = 'transforms',
        super('transforms', element);

  /// replacedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportRelationshipType.replacedWith([this.element])
      : dbValue = 'replacedWith',
        super('replacedWith', element);

  /// amendedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportRelationshipType.amendedWith([this.element])
      : dbValue = 'amendedWith',
        super('amendedWith', element);

  /// appendedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportRelationshipType.appendedWith([this.element])
      : dbValue = 'appendedWith',
        super('appendedWith', element);

  /// transformedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportRelationshipType.transformedWith([this.element])
      : dbValue = 'transformedWith',
        super('transformedWith', element);

  /// For instances where an Element is present but not value

  ReportRelationshipType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ReportRelationshipType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'replaces',
    'amends',
    'appends',
    'transforms',
    'replacedWith',
    'amendedWith',
    'appendedWith',
    'transformedWith',
  ];

  /// Returns the enum value with an element attached
  ReportRelationshipType withElement(Element? newElement) {
    return ReportRelationshipType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReportRelationshipType.$value';
}
