// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The Digital Signature Purposes, an indication of the reason an entity signs a document. This is included in the signed information and can be used when determining accountability for various actions concerning the document. Examples include: author, transcriptionist/recorder, and witness.
class SignatureTypeCodes {
  // Private constructor for internal use (like enum)
  SignatureTypeCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [SignatureTypeCodes] from JSON.
  factory SignatureTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SignatureTypeCodes.elementOnly.withElement(element);
    }
    return SignatureTypeCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SignatureTypeCodes values
  /// value1_2_840_10065_1_12_1_1
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_1 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.1',
  );

  /// value1_2_840_10065_1_12_1_2
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_2 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.2',
  );

  /// value1_2_840_10065_1_12_1_3
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_3 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.3',
  );

  /// value1_2_840_10065_1_12_1_4
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_4 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.4',
  );

  /// value1_2_840_10065_1_12_1_5
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_5 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.5',
  );

  /// value1_2_840_10065_1_12_1_6
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_6 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.6',
  );

  /// value1_2_840_10065_1_12_1_7
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_7 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.7',
  );

  /// value1_2_840_10065_1_12_1_8
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_8 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.8',
  );

  /// value1_2_840_10065_1_12_1_9
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_9 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.9',
  );

  /// value1_2_840_10065_1_12_1_10
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_10 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.10',
  );

  /// value1_2_840_10065_1_12_1_11
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_11 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.11',
  );

  /// value1_2_840_10065_1_12_1_12
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_12 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.12',
  );

  /// value1_2_840_10065_1_12_1_13
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_13 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.13',
  );

  /// value1_2_840_10065_1_12_1_14
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_14 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.14',
  );

  /// value1_2_840_10065_1_12_1_15
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_15 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.15',
  );

  /// value1_2_840_10065_1_12_1_16
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_16 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.16',
  );

  /// value1_2_840_10065_1_12_1_17
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_17 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.17',
  );

  /// value1_2_840_10065_1_12_1_18
  static final SignatureTypeCodes value1_2_840_10065_1_12_1_18 =
      SignatureTypeCodes._(
    '1.2.840.10065.1.12.1.18',
  );

  /// For instances where an Element is present but not value

  static final SignatureTypeCodes elementOnly = SignatureTypeCodes._('');

  /// List of all enum-like values
  static final List<SignatureTypeCodes> values = [
    value1_2_840_10065_1_12_1_1,
    value1_2_840_10065_1_12_1_2,
    value1_2_840_10065_1_12_1_3,
    value1_2_840_10065_1_12_1_4,
    value1_2_840_10065_1_12_1_5,
    value1_2_840_10065_1_12_1_6,
    value1_2_840_10065_1_12_1_7,
    value1_2_840_10065_1_12_1_8,
    value1_2_840_10065_1_12_1_9,
    value1_2_840_10065_1_12_1_10,
    value1_2_840_10065_1_12_1_11,
    value1_2_840_10065_1_12_1_12,
    value1_2_840_10065_1_12_1_13,
    value1_2_840_10065_1_12_1_14,
    value1_2_840_10065_1_12_1_15,
    value1_2_840_10065_1_12_1_16,
    value1_2_840_10065_1_12_1_17,
    value1_2_840_10065_1_12_1_18,
  ];

  /// Returns the enum value with an element attached
  SignatureTypeCodes withElement(Element? newElement) {
    return SignatureTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
