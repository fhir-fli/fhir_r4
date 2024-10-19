// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines codes for resources not yet supported by (or which will never be supported by) FHIR. Many of the codes listed here will eventually be turned into official resources. However, there is no guarantee that any particular resource will be created nor that the scope will be exactly as defined by the codes presented here. Codes in this set will be deprecated if/when formal resources are defined that encompass these concepts.
@Entity()
class BasicResourceTypes extends FhirCode {
  /// Factory constructor to create [BasicResourceTypes] from JSON.
  factory BasicResourceTypes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BasicResourceTypes.elementOnly(element);
    }
    if (values.contains(value)) {
      return BasicResourceTypes._(value, element);
    }
    throw ArgumentError(
      'BasicResourceTypes.fromJson: JSON value is not a valid value',
    );
  }

  /// consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.consent([this.element])
      : dbValue = 'consent',
        super('consent', element);

  /// referral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.referral([this.element])
      : dbValue = 'referral',
        super('referral', element);

  /// advevent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.advevent([this.element])
      : dbValue = 'advevent',
        super('advevent', element);

  /// aptmtreq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.aptmtreq([this.element])
      : dbValue = 'aptmtreq',
        super('aptmtreq', element);

  /// transfer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.transfer([this.element])
      : dbValue = 'transfer',
        super('transfer', element);

  /// diet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.diet([this.element])
      : dbValue = 'diet',
        super('diet', element);

  /// adminact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.adminact([this.element])
      : dbValue = 'adminact',
        super('adminact', element);

  /// exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.exposure([this.element])
      : dbValue = 'exposure',
        super('exposure', element);

  /// investigation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.investigation([this.element])
      : dbValue = 'investigation',
        super('investigation', element);

  /// account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.account([this.element])
      : dbValue = 'account',
        super('account', element);

  /// invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.invoice([this.element])
      : dbValue = 'invoice',
        super('invoice', element);

  /// adjudicat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.adjudicat([this.element])
      : dbValue = 'adjudicat',
        super('adjudicat', element);

  /// predetreq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.predetreq([this.element])
      : dbValue = 'predetreq',
        super('predetreq', element);

  /// predetermine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.predetermine([this.element])
      : dbValue = 'predetermine',
        super('predetermine', element);

  /// study
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.study([this.element])
      : dbValue = 'study',
        super('study', element);

  /// protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BasicResourceTypes.protocol([this.element])
      : dbValue = 'protocol',
        super('protocol', element);

  /// For instances where an Element is present but not value

  BasicResourceTypes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BasicResourceTypes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'consent',
    'referral',
    'advevent',
    'aptmtreq',
    'transfer',
    'diet',
    'adminact',
    'exposure',
    'investigation',
    'account',
    'invoice',
    'adjudicat',
    'predetreq',
    'predetermine',
    'study',
    'protocol',
  ];

  /// Returns the enum value with an element attached
  BasicResourceTypes withElement(Element? newElement) {
    return BasicResourceTypes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BasicResourceTypes.$value';
}
