// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceLegalStateCodes {
  // Private constructor for internal use (like enum)
  ContractResourceLegalStateCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContractResourceLegalStateCodes] from JSON.
  factory ContractResourceLegalStateCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceLegalStateCodes.elementOnly.withElement(element);
    }
    return ContractResourceLegalStateCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceLegalStateCodes values
  /// amended
  static final ContractResourceLegalStateCodes amended =
      ContractResourceLegalStateCodes._(
    'amended',
  );

  /// appended
  static final ContractResourceLegalStateCodes appended =
      ContractResourceLegalStateCodes._(
    'appended',
  );

  /// cancelled
  static final ContractResourceLegalStateCodes cancelled =
      ContractResourceLegalStateCodes._(
    'cancelled',
  );

  /// disputed
  static final ContractResourceLegalStateCodes disputed =
      ContractResourceLegalStateCodes._(
    'disputed',
  );

  /// entered_in_error
  static final ContractResourceLegalStateCodes entered_in_error =
      ContractResourceLegalStateCodes._(
    'entered-in-error',
  );

  /// executable
  static final ContractResourceLegalStateCodes executable =
      ContractResourceLegalStateCodes._(
    'executable',
  );

  /// executed
  static final ContractResourceLegalStateCodes executed =
      ContractResourceLegalStateCodes._(
    'executed',
  );

  /// negotiable
  static final ContractResourceLegalStateCodes negotiable =
      ContractResourceLegalStateCodes._(
    'negotiable',
  );

  /// offered
  static final ContractResourceLegalStateCodes offered =
      ContractResourceLegalStateCodes._(
    'offered',
  );

  /// policy
  static final ContractResourceLegalStateCodes policy =
      ContractResourceLegalStateCodes._(
    'policy',
  );

  /// rejected
  static final ContractResourceLegalStateCodes rejected =
      ContractResourceLegalStateCodes._(
    'rejected',
  );

  /// renewed
  static final ContractResourceLegalStateCodes renewed =
      ContractResourceLegalStateCodes._(
    'renewed',
  );

  /// revoked
  static final ContractResourceLegalStateCodes revoked =
      ContractResourceLegalStateCodes._(
    'revoked',
  );

  /// resolved
  static final ContractResourceLegalStateCodes resolved =
      ContractResourceLegalStateCodes._(
    'resolved',
  );

  /// terminated
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

  /// String representation
  @override
  String toString() => fhirCode;
}
