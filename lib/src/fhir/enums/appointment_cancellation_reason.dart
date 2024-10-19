// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example value set defines a set of reasons for the cancellation of an appointment.
@Entity()
class AppointmentCancellationReason extends FhirCode {
  /// Factory constructor to create [AppointmentCancellationReason] from JSON.
  factory AppointmentCancellationReason.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentCancellationReason.elementOnly(element);
    }
    if (values.contains(value)) {
      return AppointmentCancellationReason._(value, element);
    }
    throw ArgumentError(
      'AppointmentCancellationReason.fromJson: JSON value is not a valid value',
    );
  }

  /// pat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat([this.element])
      : dbValue = 'pat',
        super('pat', element);

  /// pat_crs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_crs([this.element])
      : dbValue = 'pat-crs',
        super('pat-crs', element);

  /// pat_cpp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_cpp([this.element])
      : dbValue = 'pat-cpp',
        super('pat-cpp', element);

  /// pat_dec
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_dec([this.element])
      : dbValue = 'pat-dec',
        super('pat-dec', element);

  /// pat_fb
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_fb([this.element])
      : dbValue = 'pat-fb',
        super('pat-fb', element);

  /// pat_lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_lt([this.element])
      : dbValue = 'pat-lt',
        super('pat-lt', element);

  /// pat_mt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_mt([this.element])
      : dbValue = 'pat-mt',
        super('pat-mt', element);

  /// pat_mv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_mv([this.element])
      : dbValue = 'pat-mv',
        super('pat-mv', element);

  /// pat_preg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_preg([this.element])
      : dbValue = 'pat-preg',
        super('pat-preg', element);

  /// pat_swl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_swl([this.element])
      : dbValue = 'pat-swl',
        super('pat-swl', element);

  /// pat_ucp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.pat_ucp([this.element])
      : dbValue = 'pat-ucp',
        super('pat-ucp', element);

  /// prov
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.prov([this.element])
      : dbValue = 'prov',
        super('prov', element);

  /// prov_pers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.prov_pers([this.element])
      : dbValue = 'prov-pers',
        super('prov-pers', element);

  /// prov_dch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.prov_dch([this.element])
      : dbValue = 'prov-dch',
        super('prov-dch', element);

  /// prov_edu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.prov_edu([this.element])
      : dbValue = 'prov-edu',
        super('prov-edu', element);

  /// prov_hosp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.prov_hosp([this.element])
      : dbValue = 'prov-hosp',
        super('prov-hosp', element);

  /// prov_labs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.prov_labs([this.element])
      : dbValue = 'prov-labs',
        super('prov-labs', element);

  /// prov_mri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.prov_mri([this.element])
      : dbValue = 'prov-mri',
        super('prov-mri', element);

  /// prov_onc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.prov_onc([this.element])
      : dbValue = 'prov-onc',
        super('prov-onc', element);

  /// maint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.maint([this.element])
      : dbValue = 'maint',
        super('maint', element);

  /// meds_inc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.meds_inc([this.element])
      : dbValue = 'meds-inc',
        super('meds-inc', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// oth_cms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_cms([this.element])
      : dbValue = 'oth-cms',
        super('oth-cms', element);

  /// oth_err
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_err([this.element])
      : dbValue = 'oth-err',
        super('oth-err', element);

  /// oth_fin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_fin([this.element])
      : dbValue = 'oth-fin',
        super('oth-fin', element);

  /// oth_iv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_iv([this.element])
      : dbValue = 'oth-iv',
        super('oth-iv', element);

  /// oth_int
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_int([this.element])
      : dbValue = 'oth-int',
        super('oth-int', element);

  /// oth_mu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_mu([this.element])
      : dbValue = 'oth-mu',
        super('oth-mu', element);

  /// oth_room
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_room([this.element])
      : dbValue = 'oth-room',
        super('oth-room', element);

  /// oth_oerr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_oerr([this.element])
      : dbValue = 'oth-oerr',
        super('oth-oerr', element);

  /// oth_swie
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_swie([this.element])
      : dbValue = 'oth-swie',
        super('oth-swie', element);

  /// oth_weath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AppointmentCancellationReason.oth_weath([this.element])
      : dbValue = 'oth-weath',
        super('oth-weath', element);

  /// For instances where an Element is present but not value

  AppointmentCancellationReason.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AppointmentCancellationReason._(super.input, [super.element])
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
    'pat',
    'pat-crs',
    'pat-cpp',
    'pat-dec',
    'pat-fb',
    'pat-lt',
    'pat-mt',
    'pat-mv',
    'pat-preg',
    'pat-swl',
    'pat-ucp',
    'prov',
    'prov-pers',
    'prov-dch',
    'prov-edu',
    'prov-hosp',
    'prov-labs',
    'prov-mri',
    'prov-onc',
    'maint',
    'meds-inc',
    'other',
    'oth-cms',
    'oth-err',
    'oth-fin',
    'oth-iv',
    'oth-int',
    'oth-mu',
    'oth-room',
    'oth-oerr',
    'oth-swie',
    'oth-weath',
  ];

  /// Returns the enum value with an element attached
  AppointmentCancellationReason withElement(Element? newElement) {
    return AppointmentCancellationReason._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AppointmentCancellationReason.$value';
}
