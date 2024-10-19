// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines codes for resources not yet supported by (or which will never be supported by) FHIR. Many of the codes listed here will eventually be turned into official resources. However, there is no guarantee that any particular resource will be created nor that the scope will be exactly as defined by the codes presented here. Codes in this set will be deprecated if/when formal resources are defined that encompass these concepts.
class BasicResourceTypes {
  // Private constructor for internal use (like enum)
  BasicResourceTypes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BasicResourceTypes values
  /// consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes consent = BasicResourceTypes._(
    'consent',
  );

  /// referral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes referral = BasicResourceTypes._(
    'referral',
  );

  /// advevent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes advevent = BasicResourceTypes._(
    'advevent',
  );

  /// aptmtreq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes aptmtreq = BasicResourceTypes._(
    'aptmtreq',
  );

  /// transfer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes transfer = BasicResourceTypes._(
    'transfer',
  );

  /// diet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes diet = BasicResourceTypes._(
    'diet',
  );

  /// adminact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes adminact = BasicResourceTypes._(
    'adminact',
  );

  /// exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes exposure = BasicResourceTypes._(
    'exposure',
  );

  /// investigation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes investigation = BasicResourceTypes._(
    'investigation',
  );

  /// account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes account = BasicResourceTypes._(
    'account',
  );

  /// invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes invoice = BasicResourceTypes._(
    'invoice',
  );

  /// adjudicat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes adjudicat = BasicResourceTypes._(
    'adjudicat',
  );

  /// predetreq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes predetreq = BasicResourceTypes._(
    'predetreq',
  );

  /// predetermine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes predetermine = BasicResourceTypes._(
    'predetermine',
  );

  /// study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes study = BasicResourceTypes._(
    'study',
  );

  /// protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BasicResourceTypes protocol = BasicResourceTypes._(
    'protocol',
  );

  /// For instances where an Element is present but not value

  static final BasicResourceTypes elementOnly = BasicResourceTypes._('');

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
    return BasicResourceTypes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
