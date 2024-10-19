// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceLegalStateCodes {
  // Private constructor for internal use (like enum)
  ContractResourceLegalStateCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceLegalStateCodes values
  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes amended =
      ContractResourceLegalStateCodes._(
    'amended',
  );

  /// appended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes appended =
      ContractResourceLegalStateCodes._(
    'appended',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes cancelled =
      ContractResourceLegalStateCodes._(
    'cancelled',
  );

  /// disputed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes disputed =
      ContractResourceLegalStateCodes._(
    'disputed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes entered_in_error =
      ContractResourceLegalStateCodes._(
    'entered-in-error',
  );

  /// executable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes executable =
      ContractResourceLegalStateCodes._(
    'executable',
  );

  /// executed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes executed =
      ContractResourceLegalStateCodes._(
    'executed',
  );

  /// negotiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes negotiable =
      ContractResourceLegalStateCodes._(
    'negotiable',
  );

  /// offered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes offered =
      ContractResourceLegalStateCodes._(
    'offered',
  );

  /// policy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes policy =
      ContractResourceLegalStateCodes._(
    'policy',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes rejected =
      ContractResourceLegalStateCodes._(
    'rejected',
  );

  /// renewed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes renewed =
      ContractResourceLegalStateCodes._(
    'renewed',
  );

  /// revoked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes revoked =
      ContractResourceLegalStateCodes._(
    'revoked',
  );

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes resolved =
      ContractResourceLegalStateCodes._(
    'resolved',
  );

  /// terminated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceLegalStateCodes terminated =
      ContractResourceLegalStateCodes._(
    'terminated',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceLegalStateCodes elementOnly =
      ContractResourceLegalStateCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceLegalStateCodes> values = [
    amended,
    appended,
    cancelled,
    disputed,
    entered_in_error,
    executable,
    executed,
    negotiable,
    offered,
    policy,
    rejected,
    renewed,
    revoked,
    resolved,
    terminated,
  ];

  /// Returns the enum value with an element attached
  ContractResourceLegalStateCodes withElement(Element? newElement) {
    return ContractResourceLegalStateCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContractResourceLegalStateCodes] from JSON.
  static ContractResourceLegalStateCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceLegalStateCodes.elementOnly.withElement(element);
    }
    return ContractResourceLegalStateCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceLegalStateCodes.$fhirCode';
}
