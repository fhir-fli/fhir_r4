// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contract specific codes for status.
class ContractResourcePublicationStatusCodes {
  // Private constructor for internal use (like enum)
  ContractResourcePublicationStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContractResourcePublicationStatusCodes] from JSON.
  factory ContractResourcePublicationStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContractResourcePublicationStatusCodes.elementOnly
          .withElement(element);
    }
    return ContractResourcePublicationStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourcePublicationStatusCodes values
  /// amended
  static final ContractResourcePublicationStatusCodes amended =
      ContractResourcePublicationStatusCodes._(
    'amended',
  );

  /// appended
  static final ContractResourcePublicationStatusCodes appended =
      ContractResourcePublicationStatusCodes._(
    'appended',
  );

  /// cancelled
  static final ContractResourcePublicationStatusCodes cancelled =
      ContractResourcePublicationStatusCodes._(
    'cancelled',
  );

  /// disputed
  static final ContractResourcePublicationStatusCodes disputed =
      ContractResourcePublicationStatusCodes._(
    'disputed',
  );

  /// entered_in_error
  static final ContractResourcePublicationStatusCodes entered_in_error =
      ContractResourcePublicationStatusCodes._(
    'entered-in-error',
  );

  /// executable
  static final ContractResourcePublicationStatusCodes executable =
      ContractResourcePublicationStatusCodes._(
    'executable',
  );

  /// executed
  static final ContractResourcePublicationStatusCodes executed =
      ContractResourcePublicationStatusCodes._(
    'executed',
  );

  /// negotiable
  static final ContractResourcePublicationStatusCodes negotiable =
      ContractResourcePublicationStatusCodes._(
    'negotiable',
  );

  /// offered
  static final ContractResourcePublicationStatusCodes offered =
      ContractResourcePublicationStatusCodes._(
    'offered',
  );

  /// policy
  static final ContractResourcePublicationStatusCodes policy =
      ContractResourcePublicationStatusCodes._(
    'policy',
  );

  /// rejected
  static final ContractResourcePublicationStatusCodes rejected =
      ContractResourcePublicationStatusCodes._(
    'rejected',
  );

  /// renewed
  static final ContractResourcePublicationStatusCodes renewed =
      ContractResourcePublicationStatusCodes._(
    'renewed',
  );

  /// revoked
  static final ContractResourcePublicationStatusCodes revoked =
      ContractResourcePublicationStatusCodes._(
    'revoked',
  );

  /// resolved
  static final ContractResourcePublicationStatusCodes resolved =
      ContractResourcePublicationStatusCodes._(
    'resolved',
  );

  /// terminated
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

  /// String representation
  @override
  String toString() => fhirCode;
}
