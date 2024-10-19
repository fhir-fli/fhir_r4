// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines codes for resources not yet supported by (or which will never be supported by) FHIR. Many of the codes listed here will eventually be turned into official resources. However, there is no guarantee that any particular resource will be created nor that the scope will be exactly as defined by the codes presented here. Codes in this set will be deprecated if/when formal resources are defined that encompass these concepts.
@collection
class BasicResourceTypes {
  /// Constructor for internal use (like enum)
  BasicResourceTypes({this.fhirCode, this.element})
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

  /// BasicResourceTypes values
  /// consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes consent = BasicResourceTypes(
    fhirCode: 'consent',
  );

  /// referral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes referral = BasicResourceTypes(
    fhirCode: 'referral',
  );

  /// advevent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes advevent = BasicResourceTypes(
    fhirCode: 'advevent',
  );

  /// aptmtreq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes aptmtreq = BasicResourceTypes(
    fhirCode: 'aptmtreq',
  );

  /// transfer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes transfer = BasicResourceTypes(
    fhirCode: 'transfer',
  );

  /// diet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes diet = BasicResourceTypes(
    fhirCode: 'diet',
  );

  /// adminact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes adminact = BasicResourceTypes(
    fhirCode: 'adminact',
  );

  /// exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes exposure = BasicResourceTypes(
    fhirCode: 'exposure',
  );

  /// investigation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes investigation = BasicResourceTypes(
    fhirCode: 'investigation',
  );

  /// account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes account = BasicResourceTypes(
    fhirCode: 'account',
  );

  /// invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes invoice = BasicResourceTypes(
    fhirCode: 'invoice',
  );

  /// adjudicat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes adjudicat = BasicResourceTypes(
    fhirCode: 'adjudicat',
  );

  /// predetreq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes predetreq = BasicResourceTypes(
    fhirCode: 'predetreq',
  );

  /// predetermine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes predetermine = BasicResourceTypes(
    fhirCode: 'predetermine',
  );

  /// study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes study = BasicResourceTypes(
    fhirCode: 'study',
  );

  /// protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes protocol = BasicResourceTypes(
    fhirCode: 'protocol',
  );

  /// For instances where an Element is present but not value

  static final BasicResourceTypes elementOnly = BasicResourceTypes();

  /// List of all enum-like values
  static final List<BasicResourceTypes> values = [
    consent,
    referral,
    advevent,
    aptmtreq,
    transfer,
    diet,
    adminact,
    exposure,
    investigation,
    account,
    invoice,
    adjudicat,
    predetreq,
    predetermine,
    study,
    protocol,
  ];

  /// Returns the enum value with an element attached
  BasicResourceTypes withElement(Element? newElement) {
    return BasicResourceTypes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BasicResourceTypes] from JSON.
  static BasicResourceTypes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BasicResourceTypes.elementOnly.withElement(element);
    }
    return BasicResourceTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BasicResourceTypes.$fhirCode';
}
