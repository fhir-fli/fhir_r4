// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of reasons for the cancellation of an appointment.
class AppointmentCancellationReason extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AppointmentCancellationReason._(super.value, [super.element]);

  /// Factory constructor to create [AppointmentCancellationReason] from JSON.
  factory AppointmentCancellationReason.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AppointmentCancellationReason.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'AppointmentCancellationReason cannot be constructed from JSON.');
    }
    return AppointmentCancellationReason._(value, element);
  }

  /// pat
  static final AppointmentCancellationReason pat =
      AppointmentCancellationReason._(
    'pat',
  );

  /// pat_crs
  static final AppointmentCancellationReason pat_crs =
      AppointmentCancellationReason._(
    'pat-crs',
  );

  /// pat_cpp
  static final AppointmentCancellationReason pat_cpp =
      AppointmentCancellationReason._(
    'pat-cpp',
  );

  /// pat_dec
  static final AppointmentCancellationReason pat_dec =
      AppointmentCancellationReason._(
    'pat-dec',
  );

  /// pat_fb
  static final AppointmentCancellationReason pat_fb =
      AppointmentCancellationReason._(
    'pat-fb',
  );

  /// pat_lt
  static final AppointmentCancellationReason pat_lt =
      AppointmentCancellationReason._(
    'pat-lt',
  );

  /// pat_mt
  static final AppointmentCancellationReason pat_mt =
      AppointmentCancellationReason._(
    'pat-mt',
  );

  /// pat_mv
  static final AppointmentCancellationReason pat_mv =
      AppointmentCancellationReason._(
    'pat-mv',
  );

  /// pat_preg
  static final AppointmentCancellationReason pat_preg =
      AppointmentCancellationReason._(
    'pat-preg',
  );

  /// pat_swl
  static final AppointmentCancellationReason pat_swl =
      AppointmentCancellationReason._(
    'pat-swl',
  );

  /// pat_ucp
  static final AppointmentCancellationReason pat_ucp =
      AppointmentCancellationReason._(
    'pat-ucp',
  );

  /// prov
  static final AppointmentCancellationReason prov =
      AppointmentCancellationReason._(
    'prov',
  );

  /// prov_pers
  static final AppointmentCancellationReason prov_pers =
      AppointmentCancellationReason._(
    'prov-pers',
  );

  /// prov_dch
  static final AppointmentCancellationReason prov_dch =
      AppointmentCancellationReason._(
    'prov-dch',
  );

  /// prov_edu
  static final AppointmentCancellationReason prov_edu =
      AppointmentCancellationReason._(
    'prov-edu',
  );

  /// prov_hosp
  static final AppointmentCancellationReason prov_hosp =
      AppointmentCancellationReason._(
    'prov-hosp',
  );

  /// prov_labs
  static final AppointmentCancellationReason prov_labs =
      AppointmentCancellationReason._(
    'prov-labs',
  );

  /// prov_mri
  static final AppointmentCancellationReason prov_mri =
      AppointmentCancellationReason._(
    'prov-mri',
  );

  /// prov_onc
  static final AppointmentCancellationReason prov_onc =
      AppointmentCancellationReason._(
    'prov-onc',
  );

  /// maint
  static final AppointmentCancellationReason maint =
      AppointmentCancellationReason._(
    'maint',
  );

  /// meds_inc
  static final AppointmentCancellationReason meds_inc =
      AppointmentCancellationReason._(
    'meds-inc',
  );

  /// other
  static final AppointmentCancellationReason other =
      AppointmentCancellationReason._(
    'other',
  );

  /// oth_cms
  static final AppointmentCancellationReason oth_cms =
      AppointmentCancellationReason._(
    'oth-cms',
  );

  /// oth_err
  static final AppointmentCancellationReason oth_err =
      AppointmentCancellationReason._(
    'oth-err',
  );

  /// oth_fin
  static final AppointmentCancellationReason oth_fin =
      AppointmentCancellationReason._(
    'oth-fin',
  );

  /// oth_iv
  static final AppointmentCancellationReason oth_iv =
      AppointmentCancellationReason._(
    'oth-iv',
  );

  /// oth_int
  static final AppointmentCancellationReason oth_int =
      AppointmentCancellationReason._(
    'oth-int',
  );

  /// oth_mu
  static final AppointmentCancellationReason oth_mu =
      AppointmentCancellationReason._(
    'oth-mu',
  );

  /// oth_room
  static final AppointmentCancellationReason oth_room =
      AppointmentCancellationReason._(
    'oth-room',
  );

  /// oth_oerr
  static final AppointmentCancellationReason oth_oerr =
      AppointmentCancellationReason._(
    'oth-oerr',
  );

  /// oth_swie
  static final AppointmentCancellationReason oth_swie =
      AppointmentCancellationReason._(
    'oth-swie',
  );

  /// oth_weath
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

  /// Clones the current instance
  @override
  AppointmentCancellationReason clone() => AppointmentCancellationReason._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AppointmentCancellationReason setElement(
    String name,
    dynamic elementValue,
  ) {
    return AppointmentCancellationReason._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AppointmentCancellationReason withElement(Element? newElement) {
    return AppointmentCancellationReason._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AppointmentCancellationReason copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AppointmentCancellationReason._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
