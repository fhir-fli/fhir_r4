// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourcePublicationStatusCodes {
  // Private constructor for internal use (like enum)
  ContractResourcePublicationStatusCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourcePublicationStatusCodes values
  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes amended =
      ContractResourcePublicationStatusCodes._(
    'amended',
  );

  /// appended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes appended =
      ContractResourcePublicationStatusCodes._(
    'appended',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes cancelled =
      ContractResourcePublicationStatusCodes._(
    'cancelled',
  );

  /// disputed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes disputed =
      ContractResourcePublicationStatusCodes._(
    'disputed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes entered_in_error =
      ContractResourcePublicationStatusCodes._(
    'entered-in-error',
  );

  /// executable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes executable =
      ContractResourcePublicationStatusCodes._(
    'executable',
  );

  /// executed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes executed =
      ContractResourcePublicationStatusCodes._(
    'executed',
  );

  /// negotiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes negotiable =
      ContractResourcePublicationStatusCodes._(
    'negotiable',
  );

  /// offered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes offered =
      ContractResourcePublicationStatusCodes._(
    'offered',
  );

  /// policy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes policy =
      ContractResourcePublicationStatusCodes._(
    'policy',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes rejected =
      ContractResourcePublicationStatusCodes._(
    'rejected',
  );

  /// renewed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes renewed =
      ContractResourcePublicationStatusCodes._(
    'renewed',
  );

  /// revoked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes revoked =
      ContractResourcePublicationStatusCodes._(
    'revoked',
  );

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes resolved =
      ContractResourcePublicationStatusCodes._(
    'resolved',
  );

  /// terminated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes terminated =
      ContractResourcePublicationStatusCodes._(
    'terminated',
  );

  /// For instances where an Element is present but not value

  static final ContractResourcePublicationStatusCodes elementOnly =
      ContractResourcePublicationStatusCodes._('');

  /// List of all enum-like values
  static final List<ContractResourcePublicationStatusCodes> values = [
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
  ContractResourcePublicationStatusCodes withElement(Element? newElement) {
    return ContractResourcePublicationStatusCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContractResourcePublicationStatusCodes] from JSON.
  static ContractResourcePublicationStatusCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePublicationStatusCodes.elementOnly
          .withElement(element);
    }
    return ContractResourcePublicationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourcePublicationStatusCodes.$fhirCode';
}
