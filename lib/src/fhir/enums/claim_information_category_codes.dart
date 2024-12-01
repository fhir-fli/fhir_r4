// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Information Category codes.
class ClaimInformationCategoryCodes {
  // Private constructor for internal use (like enum)
  ClaimInformationCategoryCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ClaimInformationCategoryCodes] from JSON.
  factory ClaimInformationCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimInformationCategoryCodes.elementOnly.withElement(element);
    }
    return ClaimInformationCategoryCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ClaimInformationCategoryCodes values
  /// info
  static final ClaimInformationCategoryCodes info =
      ClaimInformationCategoryCodes._(
    'info',
  );

  /// discharge
  static final ClaimInformationCategoryCodes discharge =
      ClaimInformationCategoryCodes._(
    'discharge',
  );

  /// onset
  static final ClaimInformationCategoryCodes onset =
      ClaimInformationCategoryCodes._(
    'onset',
  );

  /// related
  static final ClaimInformationCategoryCodes related =
      ClaimInformationCategoryCodes._(
    'related',
  );

  /// exception
  static final ClaimInformationCategoryCodes exception =
      ClaimInformationCategoryCodes._(
    'exception',
  );

  /// material
  static final ClaimInformationCategoryCodes material =
      ClaimInformationCategoryCodes._(
    'material',
  );

  /// attachment
  static final ClaimInformationCategoryCodes attachment =
      ClaimInformationCategoryCodes._(
    'attachment',
  );

  /// missingtooth
  static final ClaimInformationCategoryCodes missingtooth =
      ClaimInformationCategoryCodes._(
    'missingtooth',
  );

  /// prosthesis
  static final ClaimInformationCategoryCodes prosthesis =
      ClaimInformationCategoryCodes._(
    'prosthesis',
  );

  /// other
  static final ClaimInformationCategoryCodes other =
      ClaimInformationCategoryCodes._(
    'other',
  );

  /// hospitalized
  static final ClaimInformationCategoryCodes hospitalized =
      ClaimInformationCategoryCodes._(
    'hospitalized',
  );

  /// employmentimpacted
  static final ClaimInformationCategoryCodes employmentimpacted =
      ClaimInformationCategoryCodes._(
    'employmentimpacted',
  );

  /// externalcause
  static final ClaimInformationCategoryCodes externalcause =
      ClaimInformationCategoryCodes._(
    'externalcause',
  );

  /// patientreasonforvisit
  static final ClaimInformationCategoryCodes patientreasonforvisit =
      ClaimInformationCategoryCodes._(
    'patientreasonforvisit',
  );

  /// For instances where an Element is present but not value

  static final ClaimInformationCategoryCodes elementOnly =
      ClaimInformationCategoryCodes._('');

  /// List of all enum-like values
  static final List<ClaimInformationCategoryCodes> values = [
    info,
    discharge,
    onset,
    related,
    exception,
    material,
    attachment,
    missingtooth,
    prosthesis,
    other,
    hospitalized,
    employmentimpacted,
    externalcause,
    patientreasonforvisit,
  ];

  /// Returns the enum value with an element attached
  ClaimInformationCategoryCodes withElement(Element? newElement) {
    return ClaimInformationCategoryCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
