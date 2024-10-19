// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Information Category codes.
class ClaimInformationCategoryCodes {
  // Private constructor for internal use (like enum)
  ClaimInformationCategoryCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ClaimInformationCategoryCodes values
  /// info
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes info =
      ClaimInformationCategoryCodes._(
    'info',
  );

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes discharge =
      ClaimInformationCategoryCodes._(
    'discharge',
  );

  /// onset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes onset =
      ClaimInformationCategoryCodes._(
    'onset',
  );

  /// related
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes related =
      ClaimInformationCategoryCodes._(
    'related',
  );

  /// exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes exception =
      ClaimInformationCategoryCodes._(
    'exception',
  );

  /// material
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes material =
      ClaimInformationCategoryCodes._(
    'material',
  );

  /// attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes attachment =
      ClaimInformationCategoryCodes._(
    'attachment',
  );

  /// missingtooth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes missingtooth =
      ClaimInformationCategoryCodes._(
    'missingtooth',
  );

  /// prosthesis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes prosthesis =
      ClaimInformationCategoryCodes._(
    'prosthesis',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes other =
      ClaimInformationCategoryCodes._(
    'other',
  );

  /// hospitalized
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes hospitalized =
      ClaimInformationCategoryCodes._(
    'hospitalized',
  );

  /// employmentimpacted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes employmentimpacted =
      ClaimInformationCategoryCodes._(
    'employmentimpacted',
  );

  /// externalcause
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimInformationCategoryCodes externalcause =
      ClaimInformationCategoryCodes._(
    'externalcause',
  );

  /// patientreasonforvisit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Factory constructor to create [ClaimInformationCategoryCodes] from JSON.
  static ClaimInformationCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimInformationCategoryCodes.elementOnly.withElement(element);
    }
    return ClaimInformationCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClaimInformationCategoryCodes.$fhirCode';
}
