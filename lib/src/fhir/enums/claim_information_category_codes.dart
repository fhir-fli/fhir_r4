// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Information Category codes.
@Entity()
class ClaimInformationCategoryCodes extends FhirCode {
  /// Factory constructor to create [ClaimInformationCategoryCodes] from JSON.
  factory ClaimInformationCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimInformationCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ClaimInformationCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'ClaimInformationCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// info
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.info([this.element])
      : dbValue = 'info',
        super('info', element);

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.discharge([this.element])
      : dbValue = 'discharge',
        super('discharge', element);

  /// onset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.onset([this.element])
      : dbValue = 'onset',
        super('onset', element);

  /// related
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.related([this.element])
      : dbValue = 'related',
        super('related', element);

  /// exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.exception([this.element])
      : dbValue = 'exception',
        super('exception', element);

  /// material
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.material([this.element])
      : dbValue = 'material',
        super('material', element);

  /// attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.attachment([this.element])
      : dbValue = 'attachment',
        super('attachment', element);

  /// missingtooth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.missingtooth([this.element])
      : dbValue = 'missingtooth',
        super('missingtooth', element);

  /// prosthesis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.prosthesis([this.element])
      : dbValue = 'prosthesis',
        super('prosthesis', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// hospitalized
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.hospitalized([this.element])
      : dbValue = 'hospitalized',
        super('hospitalized', element);

  /// employmentimpacted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.employmentimpacted([this.element])
      : dbValue = 'employmentimpacted',
        super('employmentimpacted', element);

  /// externalcause
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.externalcause([this.element])
      : dbValue = 'externalcause',
        super('externalcause', element);

  /// patientreasonforvisit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimInformationCategoryCodes.patientreasonforvisit([this.element])
      : dbValue = 'patientreasonforvisit',
        super('patientreasonforvisit', element);

  /// For instances where an Element is present but not value

  ClaimInformationCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ClaimInformationCategoryCodes._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'info',
    'discharge',
    'onset',
    'related',
    'exception',
    'material',
    'attachment',
    'missingtooth',
    'prosthesis',
    'other',
    'hospitalized',
    'employmentimpacted',
    'externalcause',
    'patientreasonforvisit',
  ];

  /// Returns the enum value with an element attached
  ClaimInformationCategoryCodes withElement(Element? newElement) {
    return ClaimInformationCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClaimInformationCategoryCodes.$value';
}
