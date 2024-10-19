// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes smattering of Adjudication Reason codes.
@Entity()
class AdjudicationReasonCodes extends FhirCode {
  /// Factory constructor to create [AdjudicationReasonCodes] from JSON.
  factory AdjudicationReasonCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdjudicationReasonCodes._(value, element);
    }
    throw ArgumentError(
      'AdjudicationReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// ar001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationReasonCodes.ar001([this.element])
      : dbValue = 'ar001',
        super('ar001', element);

  /// ar002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationReasonCodes.ar002([this.element])
      : dbValue = 'ar002',
        super('ar002', element);

  /// For instances where an Element is present but not value

  AdjudicationReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdjudicationReasonCodes._(super.input, [super.element])
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
    'ar001',
    'ar002',
  ];

  /// Returns the enum value with an element attached
  AdjudicationReasonCodes withElement(Element? newElement) {
    return AdjudicationReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdjudicationReasonCodes.$value';
}
