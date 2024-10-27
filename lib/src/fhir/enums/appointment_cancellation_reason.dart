// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of reasons for the cancellation of an appointment.
class AppointmentCancellationReason {
  // Private constructor for internal use (like enum)
  AppointmentCancellationReason._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AppointmentCancellationReason values
  /// pat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat =
      AppointmentCancellationReason._(
    'pat',
  );

  /// pat_crs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_crs =
      AppointmentCancellationReason._(
    'pat-crs',
  );

  /// pat_cpp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_cpp =
      AppointmentCancellationReason._(
    'pat-cpp',
  );

  /// pat_dec
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_dec =
      AppointmentCancellationReason._(
    'pat-dec',
  );

  /// pat_fb
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_fb =
      AppointmentCancellationReason._(
    'pat-fb',
  );

  /// pat_lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_lt =
      AppointmentCancellationReason._(
    'pat-lt',
  );

  /// pat_mt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_mt =
      AppointmentCancellationReason._(
    'pat-mt',
  );

  /// pat_mv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_mv =
      AppointmentCancellationReason._(
    'pat-mv',
  );

  /// pat_preg
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_preg =
      AppointmentCancellationReason._(
    'pat-preg',
  );

  /// pat_swl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_swl =
      AppointmentCancellationReason._(
    'pat-swl',
  );

  /// pat_ucp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason pat_ucp =
      AppointmentCancellationReason._(
    'pat-ucp',
  );

  /// prov
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason prov =
      AppointmentCancellationReason._(
    'prov',
  );

  /// prov_pers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason prov_pers =
      AppointmentCancellationReason._(
    'prov-pers',
  );

  /// prov_dch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason prov_dch =
      AppointmentCancellationReason._(
    'prov-dch',
  );

  /// prov_edu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason prov_edu =
      AppointmentCancellationReason._(
    'prov-edu',
  );

  /// prov_hosp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason prov_hosp =
      AppointmentCancellationReason._(
    'prov-hosp',
  );

  /// prov_labs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason prov_labs =
      AppointmentCancellationReason._(
    'prov-labs',
  );

  /// prov_mri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason prov_mri =
      AppointmentCancellationReason._(
    'prov-mri',
  );

  /// prov_onc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason prov_onc =
      AppointmentCancellationReason._(
    'prov-onc',
  );

  /// maint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason maint =
      AppointmentCancellationReason._(
    'maint',
  );

  /// meds_inc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason meds_inc =
      AppointmentCancellationReason._(
    'meds-inc',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason other =
      AppointmentCancellationReason._(
    'other',
  );

  /// oth_cms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_cms =
      AppointmentCancellationReason._(
    'oth-cms',
  );

  /// oth_err
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_err =
      AppointmentCancellationReason._(
    'oth-err',
  );

  /// oth_fin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_fin =
      AppointmentCancellationReason._(
    'oth-fin',
  );

  /// oth_iv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_iv =
      AppointmentCancellationReason._(
    'oth-iv',
  );

  /// oth_int
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_int =
      AppointmentCancellationReason._(
    'oth-int',
  );

  /// oth_mu
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_mu =
      AppointmentCancellationReason._(
    'oth-mu',
  );

  /// oth_room
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_room =
      AppointmentCancellationReason._(
    'oth-room',
  );

  /// oth_oerr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_oerr =
      AppointmentCancellationReason._(
    'oth-oerr',
  );

  /// oth_swie
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_swie =
      AppointmentCancellationReason._(
    'oth-swie',
  );

  /// oth_weath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AppointmentCancellationReason oth_weath =
      AppointmentCancellationReason._(
    'oth-weath',
  );

  /// For instances where an Element is present but not value

  static final AppointmentCancellationReason elementOnly =
      AppointmentCancellationReason._('');

  /// List of all enum-like values
  static final List<AppointmentCancellationReason> values = [
    pat,
    pat_crs,
    pat_cpp,
    pat_dec,
    pat_fb,
    pat_lt,
    pat_mt,
    pat_mv,
    pat_preg,
    pat_swl,
    pat_ucp,
    prov,
    prov_pers,
    prov_dch,
    prov_edu,
    prov_hosp,
    prov_labs,
    prov_mri,
    prov_onc,
    maint,
    meds_inc,
    other,
    oth_cms,
    oth_err,
    oth_fin,
    oth_iv,
    oth_int,
    oth_mu,
    oth_room,
    oth_oerr,
    oth_swie,
    oth_weath,
  ];

  /// Returns the enum value with an element attached
  AppointmentCancellationReason withElement(Element? newElement) {
    return AppointmentCancellationReason._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AppointmentCancellationReason] from JSON.
  static AppointmentCancellationReason fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentCancellationReason.elementOnly.withElement(element);
    }
    return AppointmentCancellationReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
