// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationDispense Status Codes
@Entity()
class MedicationDispenseStatusReasonCodes extends FhirCode {
  /// Factory constructor to create [MedicationDispenseStatusReasonCodes] from JSON.
  factory MedicationDispenseStatusReasonCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationDispenseStatusReasonCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationDispenseStatusReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// frr01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.frr01([this.element])
      : dbValue = 'frr01',
        super('frr01', element);

  /// frr02
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.frr02([this.element])
      : dbValue = 'frr02',
        super('frr02', element);

  /// frr03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.frr03([this.element])
      : dbValue = 'frr03',
        super('frr03', element);

  /// frr04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.frr04([this.element])
      : dbValue = 'frr04',
        super('frr04', element);

  /// frr05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.frr05([this.element])
      : dbValue = 'frr05',
        super('frr05', element);

  /// frr06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.frr06([this.element])
      : dbValue = 'frr06',
        super('frr06', element);

  /// altchoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.altchoice([this.element])
      : dbValue = 'altchoice',
        super('altchoice', element);

  /// clarif
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.clarif([this.element])
      : dbValue = 'clarif',
        super('clarif', element);

  /// drughigh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.drughigh([this.element])
      : dbValue = 'drughigh',
        super('drughigh', element);

  /// hospadm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.hospadm([this.element])
      : dbValue = 'hospadm',
        super('hospadm', element);

  /// labint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.labint([this.element])
      : dbValue = 'labint',
        super('labint', element);

  /// non_avail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.non_avail([this.element])
      : dbValue = 'non-avail',
        super('non-avail', element);

  /// preg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.preg([this.element])
      : dbValue = 'preg',
        super('preg', element);

  /// saig
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.saig([this.element])
      : dbValue = 'saig',
        super('saig', element);

  /// sddi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.sddi([this.element])
      : dbValue = 'sddi',
        super('sddi', element);

  /// sdupther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.sdupther([this.element])
      : dbValue = 'sdupther',
        super('sdupther', element);

  /// sintol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.sintol([this.element])
      : dbValue = 'sintol',
        super('sintol', element);

  /// surg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.surg([this.element])
      : dbValue = 'surg',
        super('surg', element);

  /// washout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.washout([this.element])
      : dbValue = 'washout',
        super('washout', element);

  /// outofstock
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.outofstock([this.element])
      : dbValue = 'outofstock',
        super('outofstock', element);

  /// offmarket
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusReasonCodes.offmarket([this.element])
      : dbValue = 'offmarket',
        super('offmarket', element);

  /// For instances where an Element is present but not value

  MedicationDispenseStatusReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationDispenseStatusReasonCodes._(super.input, [super.element])
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
    'frr01',
    'frr02',
    'frr03',
    'frr04',
    'frr05',
    'frr06',
    'altchoice',
    'clarif',
    'drughigh',
    'hospadm',
    'labint',
    'non-avail',
    'preg',
    'saig',
    'sddi',
    'sdupther',
    'sintol',
    'surg',
    'washout',
    'outofstock',
    'offmarket',
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseStatusReasonCodes withElement(Element? newElement) {
    return MedicationDispenseStatusReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationDispenseStatusReasonCodes.$value';
}
