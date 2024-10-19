// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The prescription supply types appropriate to a medicinal product
@Entity()
class LegalStatusOfSupply extends FhirCode {
  /// Factory constructor to create [LegalStatusOfSupply] from JSON.
  factory LegalStatusOfSupply.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LegalStatusOfSupply.elementOnly(element);
    }
    if (values.contains(value)) {
      return LegalStatusOfSupply._(value, element);
    }
    throw ArgumentError(
      'LegalStatusOfSupply.fromJson: JSON value is not a valid value',
    );
  }

  /// value100000072076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LegalStatusOfSupply.value100000072076([this.element])
      : dbValue = '100000072076',
        super('100000072076', element);

  /// value100000072077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LegalStatusOfSupply.value100000072077([this.element])
      : dbValue = '100000072077',
        super('100000072077', element);

  /// value100000072078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LegalStatusOfSupply.value100000072078([this.element])
      : dbValue = '100000072078',
        super('100000072078', element);

  /// value100000072079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LegalStatusOfSupply.value100000072079([this.element])
      : dbValue = '100000072079',
        super('100000072079', element);

  /// value100000072084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LegalStatusOfSupply.value100000072084([this.element])
      : dbValue = '100000072084',
        super('100000072084', element);

  /// value100000072085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LegalStatusOfSupply.value100000072085([this.element])
      : dbValue = '100000072085',
        super('100000072085', element);

  /// value100000072086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LegalStatusOfSupply.value100000072086([this.element])
      : dbValue = '100000072086',
        super('100000072086', element);

  /// value100000157313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LegalStatusOfSupply.value100000157313([this.element])
      : dbValue = '100000157313',
        super('100000157313', element);

  /// For instances where an Element is present but not value

  LegalStatusOfSupply.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  LegalStatusOfSupply._(super.input, [super.element])
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
    '100000072076',
    '100000072077',
    '100000072078',
    '100000072079',
    '100000072084',
    '100000072085',
    '100000072086',
    '100000157313',
  ];

  /// Returns the enum value with an element attached
  LegalStatusOfSupply withElement(Element? newElement) {
    return LegalStatusOfSupply._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LegalStatusOfSupply.$value';
}
