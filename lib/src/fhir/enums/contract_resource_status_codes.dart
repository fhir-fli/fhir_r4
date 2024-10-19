// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set contract specific codes for status.
@collection
class ContractResourceStatusCodes {
  /// Constructor for internal use (like enum)
  ContractResourceStatusCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContractResourceStatusCodes values
  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes amended =
      ContractResourceStatusCodes(
    fhirCode: 'amended',
  );

  /// appended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes appended =
      ContractResourceStatusCodes(
    fhirCode: 'appended',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes cancelled =
      ContractResourceStatusCodes(
    fhirCode: 'cancelled',
  );

  /// disputed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes disputed =
      ContractResourceStatusCodes(
    fhirCode: 'disputed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes entered_in_error =
      ContractResourceStatusCodes(
    fhirCode: 'entered-in-error',
  );

  /// executable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes executable =
      ContractResourceStatusCodes(
    fhirCode: 'executable',
  );

  /// executed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes executed =
      ContractResourceStatusCodes(
    fhirCode: 'executed',
  );

  /// negotiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes negotiable =
      ContractResourceStatusCodes(
    fhirCode: 'negotiable',
  );

  /// offered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes offered =
      ContractResourceStatusCodes(
    fhirCode: 'offered',
  );

  /// policy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes policy = ContractResourceStatusCodes(
    fhirCode: 'policy',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes rejected =
      ContractResourceStatusCodes(
    fhirCode: 'rejected',
  );

  /// renewed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes renewed =
      ContractResourceStatusCodes(
    fhirCode: 'renewed',
  );

  /// revoked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes revoked =
      ContractResourceStatusCodes(
    fhirCode: 'revoked',
  );

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes resolved =
      ContractResourceStatusCodes(
    fhirCode: 'resolved',
  );

  /// terminated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourceStatusCodes terminated =
      ContractResourceStatusCodes(
    fhirCode: 'terminated',
  );

  /// For instances where an Element is present but not value

  static final ContractResourceStatusCodes elementOnly =
      ContractResourceStatusCodes();

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
    return ContractResourceStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ContractResourceStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContractResourceStatusCodes.$fhirCode';
}
