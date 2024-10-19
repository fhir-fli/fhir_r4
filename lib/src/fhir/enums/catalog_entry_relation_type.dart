// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of relations between entries.
@Entity()
class CatalogEntryRelationType extends FhirCode {
  /// Factory constructor to create [CatalogEntryRelationType] from JSON.
  factory CatalogEntryRelationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return CatalogEntryRelationType._(value, element);
    }
    throw ArgumentError(
      'CatalogEntryRelationType.fromJson: JSON value is not a valid value',
    );
  }

  /// triggers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CatalogEntryRelationType.triggers([this.element])
      : dbValue = 'triggers',
        super('triggers', element);

  /// is_replaced_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CatalogEntryRelationType.is_replaced_by([this.element])
      : dbValue = 'is-replaced-by',
        super('is-replaced-by', element);

  /// For instances where an Element is present but not value

  CatalogEntryRelationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CatalogEntryRelationType._(super.input, [super.element])
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
    'triggers',
    'is-replaced-by',
  ];

  /// Returns the enum value with an element attached
  CatalogEntryRelationType withElement(Element? newElement) {
    return CatalogEntryRelationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CatalogEntryRelationType.$value';
}
