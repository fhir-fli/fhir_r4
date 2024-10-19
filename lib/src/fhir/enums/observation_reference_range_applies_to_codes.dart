// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to indicate the particular target population the reference range applies to.
@Entity()
class ObservationReferenceRangeAppliesToCodes extends FhirCode {
  /// Factory constructor to create [ObservationReferenceRangeAppliesToCodes] from JSON.
  factory ObservationReferenceRangeAppliesToCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationReferenceRangeAppliesToCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ObservationReferenceRangeAppliesToCodes._(value, element);
    }
    throw ArgumentError(
      'ObservationReferenceRangeAppliesToCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value248153007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeAppliesToCodes.value248153007([this.element])
      : dbValue = '248153007',
        super('248153007', element);

  /// value248152002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeAppliesToCodes.value248152002([this.element])
      : dbValue = '248152002',
        super('248152002', element);

  /// value77386006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationReferenceRangeAppliesToCodes.value77386006([this.element])
      : dbValue = '77386006',
        super('77386006', element);

  /// For instances where an Element is present but not value

  ObservationReferenceRangeAppliesToCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ObservationReferenceRangeAppliesToCodes._(super.input, [super.element])
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
    '248153007',
    '248152002',
    '77386006',
  ];

  /// Returns the enum value with an element attached
  ObservationReferenceRangeAppliesToCodes withElement(Element? newElement) {
    return ObservationReferenceRangeAppliesToCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationReferenceRangeAppliesToCodes.$value';
}
