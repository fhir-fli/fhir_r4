// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationRequest Status Reason Codes
@Entity()
class MedicationRequestStatusReasonCodes extends FhirCode {
  /// Factory constructor to create [MedicationRequestStatusReasonCodes] from JSON.
  factory MedicationRequestStatusReasonCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestStatusReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationRequestStatusReasonCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationRequestStatusReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// altchoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.altchoice([this.element])
      : dbValue = 'altchoice',
        super('altchoice', element);

  /// clarif
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.clarif([this.element])
      : dbValue = 'clarif',
        super('clarif', element);

  /// drughigh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.drughigh([this.element])
      : dbValue = 'drughigh',
        super('drughigh', element);

  /// hospadm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.hospadm([this.element])
      : dbValue = 'hospadm',
        super('hospadm', element);

  /// labint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.labint([this.element])
      : dbValue = 'labint',
        super('labint', element);

  /// non_avail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.non_avail([this.element])
      : dbValue = 'non-avail',
        super('non-avail', element);

  /// preg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.preg([this.element])
      : dbValue = 'preg',
        super('preg', element);

  /// salg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.salg([this.element])
      : dbValue = 'salg',
        super('salg', element);

  /// sddi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.sddi([this.element])
      : dbValue = 'sddi',
        super('sddi', element);

  /// sdupther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.sdupther([this.element])
      : dbValue = 'sdupther',
        super('sdupther', element);

  /// sintol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.sintol([this.element])
      : dbValue = 'sintol',
        super('sintol', element);

  /// surg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.surg([this.element])
      : dbValue = 'surg',
        super('surg', element);

  /// washout
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestStatusReasonCodes.washout([this.element])
      : dbValue = 'washout',
        super('washout', element);

  /// For instances where an Element is present but not value

  MedicationRequestStatusReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationRequestStatusReasonCodes._(super.input, [super.element])
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
    'altchoice',
    'clarif',
    'drughigh',
    'hospadm',
    'labint',
    'non-avail',
    'preg',
    'salg',
    'sddi',
    'sdupther',
    'sintol',
    'surg',
    'washout',
  ];

  /// Returns the enum value with an element attached
  MedicationRequestStatusReasonCodes withElement(Element? newElement) {
    return MedicationRequestStatusReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationRequestStatusReasonCodes.$value';
}
