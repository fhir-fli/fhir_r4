// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The Digital Signature Purposes, an indication of the reason an entity signs a document. This is included in the signed information and can be used when determining accountability for various actions concerning the document. Examples include: author, transcriptionist/recorder, and witness.
@Entity()
class SignatureTypeCodes extends FhirCode {
  /// Factory constructor to create [SignatureTypeCodes] from JSON.
  factory SignatureTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SignatureTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return SignatureTypeCodes._(value, element);
    }
    throw ArgumentError(
      'SignatureTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value1_2_840_10065_1_12_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_1([this.element])
      : dbValue = '1.2.840.10065.1.12.1.1',
        super('1.2.840.10065.1.12.1.1', element);

  /// value1_2_840_10065_1_12_1_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_2([this.element])
      : dbValue = '1.2.840.10065.1.12.1.2',
        super('1.2.840.10065.1.12.1.2', element);

  /// value1_2_840_10065_1_12_1_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_3([this.element])
      : dbValue = '1.2.840.10065.1.12.1.3',
        super('1.2.840.10065.1.12.1.3', element);

  /// value1_2_840_10065_1_12_1_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_4([this.element])
      : dbValue = '1.2.840.10065.1.12.1.4',
        super('1.2.840.10065.1.12.1.4', element);

  /// value1_2_840_10065_1_12_1_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_5([this.element])
      : dbValue = '1.2.840.10065.1.12.1.5',
        super('1.2.840.10065.1.12.1.5', element);

  /// value1_2_840_10065_1_12_1_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_6([this.element])
      : dbValue = '1.2.840.10065.1.12.1.6',
        super('1.2.840.10065.1.12.1.6', element);

  /// value1_2_840_10065_1_12_1_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_7([this.element])
      : dbValue = '1.2.840.10065.1.12.1.7',
        super('1.2.840.10065.1.12.1.7', element);

  /// value1_2_840_10065_1_12_1_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_8([this.element])
      : dbValue = '1.2.840.10065.1.12.1.8',
        super('1.2.840.10065.1.12.1.8', element);

  /// value1_2_840_10065_1_12_1_9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_9([this.element])
      : dbValue = '1.2.840.10065.1.12.1.9',
        super('1.2.840.10065.1.12.1.9', element);

  /// value1_2_840_10065_1_12_1_10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_10([this.element])
      : dbValue = '1.2.840.10065.1.12.1.10',
        super('1.2.840.10065.1.12.1.10', element);

  /// value1_2_840_10065_1_12_1_11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_11([this.element])
      : dbValue = '1.2.840.10065.1.12.1.11',
        super('1.2.840.10065.1.12.1.11', element);

  /// value1_2_840_10065_1_12_1_12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_12([this.element])
      : dbValue = '1.2.840.10065.1.12.1.12',
        super('1.2.840.10065.1.12.1.12', element);

  /// value1_2_840_10065_1_12_1_13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_13([this.element])
      : dbValue = '1.2.840.10065.1.12.1.13',
        super('1.2.840.10065.1.12.1.13', element);

  /// value1_2_840_10065_1_12_1_14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_14([this.element])
      : dbValue = '1.2.840.10065.1.12.1.14',
        super('1.2.840.10065.1.12.1.14', element);

  /// value1_2_840_10065_1_12_1_15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_15([this.element])
      : dbValue = '1.2.840.10065.1.12.1.15',
        super('1.2.840.10065.1.12.1.15', element);

  /// value1_2_840_10065_1_12_1_16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_16([this.element])
      : dbValue = '1.2.840.10065.1.12.1.16',
        super('1.2.840.10065.1.12.1.16', element);

  /// value1_2_840_10065_1_12_1_17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_17([this.element])
      : dbValue = '1.2.840.10065.1.12.1.17',
        super('1.2.840.10065.1.12.1.17', element);

  /// value1_2_840_10065_1_12_1_18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SignatureTypeCodes.value1_2_840_10065_1_12_1_18([this.element])
      : dbValue = '1.2.840.10065.1.12.1.18',
        super('1.2.840.10065.1.12.1.18', element);

  /// For instances where an Element is present but not value

  SignatureTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SignatureTypeCodes._(super.input, [super.element])
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
    '1.2.840.10065.1.12.1.1',
    '1.2.840.10065.1.12.1.2',
    '1.2.840.10065.1.12.1.3',
    '1.2.840.10065.1.12.1.4',
    '1.2.840.10065.1.12.1.5',
    '1.2.840.10065.1.12.1.6',
    '1.2.840.10065.1.12.1.7',
    '1.2.840.10065.1.12.1.8',
    '1.2.840.10065.1.12.1.9',
    '1.2.840.10065.1.12.1.10',
    '1.2.840.10065.1.12.1.11',
    '1.2.840.10065.1.12.1.12',
    '1.2.840.10065.1.12.1.13',
    '1.2.840.10065.1.12.1.14',
    '1.2.840.10065.1.12.1.15',
    '1.2.840.10065.1.12.1.16',
    '1.2.840.10065.1.12.1.17',
    '1.2.840.10065.1.12.1.18',
  ];

  /// Returns the enum value with an element attached
  SignatureTypeCodes withElement(Element? newElement) {
    return SignatureTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SignatureTypeCodes.$value';
}
