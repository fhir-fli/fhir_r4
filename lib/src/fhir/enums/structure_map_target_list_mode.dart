// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// If field is a list, how to manage the production.
@Entity()
class StructureMapTargetListMode extends FhirCode {
  /// Factory constructor to create [StructureMapTargetListMode] from JSON.
  factory StructureMapTargetListMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTargetListMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureMapTargetListMode._(value, element);
    }
    throw ArgumentError(
      'StructureMapTargetListMode.fromJson: JSON value is not a valid value',
    );
  }

  /// first
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTargetListMode.first([this.element])
      : dbValue = 'first',
        super('first', element);

  /// share
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTargetListMode.share([this.element])
      : dbValue = 'share',
        super('share', element);

  /// last
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTargetListMode.last([this.element])
      : dbValue = 'last',
        super('last', element);

  /// collate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTargetListMode.collate([this.element])
      : dbValue = 'collate',
        super('collate', element);

  /// For instances where an Element is present but not value

  StructureMapTargetListMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureMapTargetListMode._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'first',
    'share',
    'last',
    'collate',
  ];

  /// Returns the enum value with an element attached
  StructureMapTargetListMode withElement(Element? newElement) {
    return StructureMapTargetListMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapTargetListMode.$value';
}
