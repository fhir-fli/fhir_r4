// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The relationship between two substance types.
@Entity()
class SubstanceAmountType extends FhirCode {
  /// Factory constructor to create [SubstanceAmountType] from JSON.
  factory SubstanceAmountType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceAmountType.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubstanceAmountType._(value, element);
    }
    throw ArgumentError(
      'SubstanceAmountType.fromJson: JSON value is not a valid value',
    );
  }

  /// Average
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceAmountType.Average([this.element])
      : dbValue = 'Average',
        super('Average', element);

  /// Approximately
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceAmountType.Approximately([this.element])
      : dbValue = 'Approximately',
        super('Approximately', element);

  /// LessThan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceAmountType.LessThan([this.element])
      : dbValue = 'LessThan',
        super('LessThan', element);

  /// MoreThan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceAmountType.MoreThan([this.element])
      : dbValue = 'MoreThan',
        super('MoreThan', element);

  /// For instances where an Element is present but not value

  SubstanceAmountType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubstanceAmountType._(super.input, [super.element])
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
    'Average',
    'Approximately',
    'LessThan',
    'MoreThan',
  ];

  /// Returns the enum value with an element attached
  SubstanceAmountType withElement(Element? newElement) {
    return SubstanceAmountType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceAmountType.$value';
}
