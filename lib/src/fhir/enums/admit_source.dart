// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to indicate from where the patient came in.
@Entity()
class AdmitSource extends FhirCode {
  /// Factory constructor to create [AdmitSource] from JSON.
  factory AdmitSource.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdmitSource.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdmitSource._(value, element);
    }
    throw ArgumentError(
      'AdmitSource.fromJson: JSON value is not a valid value',
    );
  }

  /// hosp_trans
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.hosp_trans([this.element])
      : dbValue = 'hosp-trans',
        super('hosp-trans', element);

  /// emd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.emd([this.element])
      : dbValue = 'emd',
        super('emd', element);

  /// outp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.outp([this.element])
      : dbValue = 'outp',
        super('outp', element);

  /// born
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.born([this.element])
      : dbValue = 'born',
        super('born', element);

  /// gp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.gp([this.element])
      : dbValue = 'gp',
        super('gp', element);

  /// mp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.mp([this.element])
      : dbValue = 'mp',
        super('mp', element);

  /// nursing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.nursing([this.element])
      : dbValue = 'nursing',
        super('nursing', element);

  /// psych
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.psych([this.element])
      : dbValue = 'psych',
        super('psych', element);

  /// rehab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.rehab([this.element])
      : dbValue = 'rehab',
        super('rehab', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdmitSource.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  AdmitSource.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdmitSource._(super.input, [super.element])
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
    'hosp-trans',
    'emd',
    'outp',
    'born',
    'gp',
    'mp',
    'nursing',
    'psych',
    'rehab',
    'other',
  ];

  /// Returns the enum value with an element attached
  AdmitSource withElement(Element? newElement) {
    return AdmitSource._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdmitSource.$value';
}
