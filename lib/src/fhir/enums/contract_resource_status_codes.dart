// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourceStatusCodes {
  // Private constructor for internal use (like enum)
  ContractResourceStatusCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceStatusCodes values
  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes amended =
      ContractResourceStatusCodes._(
    'amended',
  );

  /// appended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes appended =
      ContractResourceStatusCodes._(
    'appended',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes cancelled =
      ContractResourceStatusCodes._(
    'cancelled',
  );

  /// disputed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes disputed =
      ContractResourceStatusCodes._(
    'disputed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes entered_in_error =
      ContractResourceStatusCodes._(
    'entered-in-error',
  );

  /// executable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes executable =
      ContractResourceStatusCodes._(
    'executable',
  );

  /// executed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes executed =
      ContractResourceStatusCodes._(
    'executed',
  );

  /// negotiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes negotiable =
      ContractResourceStatusCodes._(
    'negotiable',
  );

  /// offered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes offered =
      ContractResourceStatusCodes._(
    'offered',
  );

  /// policy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes policy =
      ContractResourceStatusCodes._(
    'policy',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes rejected =
      ContractResourceStatusCodes._(
    'rejected',
  );

  /// renewed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes renewed =
      ContractResourceStatusCodes._(
    'renewed',
  );

  /// revoked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes revoked =
      ContractResourceStatusCodes._(
    'revoked',
  );

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes resolved =
      ContractResourceStatusCodes._(
    'resolved',
  );

  /// terminated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes terminated =
      ContractResourceStatusCodes._(
    'terminated',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceStatusCodes elementOnly =
      ContractResourceStatusCodes._('');

  /// List of all enum-like values
  static final List<ContractResourceStatusCodes> values = [
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
  ContractResourceStatusCodes withElement(Element? newElement) {
    return ContractResourceStatusCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContractResourceStatusCodes] from JSON.
  static ContractResourceStatusCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourceStatusCodes.elementOnly.withElement(element);
    }
    return ContractResourceStatusCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
