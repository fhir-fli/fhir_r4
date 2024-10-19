// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set contract specific codes for status.
@collection
class ContractResourcePublicationStatusCodes {
  /// Constructor for internal use (like enum)
  ContractResourcePublicationStatusCodes({this.fhirCode, this.element})
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

  /// ContractResourcePublicationStatusCodes values
  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes amended =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'amended',
  );

  /// appended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes appended =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'appended',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes cancelled =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'cancelled',
  );

  /// disputed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes disputed =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'disputed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes entered_in_error =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'entered-in-error',
  );

  /// executable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes executable =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'executable',
  );

  /// executed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes executed =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'executed',
  );

  /// negotiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes negotiable =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'negotiable',
  );

  /// offered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes offered =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'offered',
  );

  /// policy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes policy =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'policy',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes rejected =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'rejected',
  );

  /// renewed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes renewed =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'renewed',
  );

  /// revoked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes revoked =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'revoked',
  );

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes resolved =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'resolved',
  );

  /// terminated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContractResourcePublicationStatusCodes terminated =
      ContractResourcePublicationStatusCodes(
    fhirCode: 'terminated',
  );

  /// For instances where an Element is present but not value

  static final ContractResourcePublicationStatusCodes elementOnly =
      ContractResourcePublicationStatusCodes();

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
    return ContractResourcePublicationStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
