// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Status Codes
class MedicationDispenseStatusReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationDispenseStatusReasonCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationDispenseStatusReasonCodes] from JSON.
  factory MedicationDispenseStatusReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusReasonCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationDispenseStatusReasonCodes cannot be constructed from JSON.',
      );
    }
    return MedicationDispenseStatusReasonCodes._(
        value: value, element: element);
  }

  /// frr01
  static final MedicationDispenseStatusReasonCodes frr01 =
      MedicationDispenseStatusReasonCodes._(
    value: 'frr01',
  );

  /// frr02
  static final MedicationDispenseStatusReasonCodes frr02 =
      MedicationDispenseStatusReasonCodes._(
    value: 'frr02',
  );

  /// frr03
  static final MedicationDispenseStatusReasonCodes frr03 =
      MedicationDispenseStatusReasonCodes._(
    value: 'frr03',
  );

  /// frr04
  static final MedicationDispenseStatusReasonCodes frr04 =
      MedicationDispenseStatusReasonCodes._(
    value: 'frr04',
  );

  /// frr05
  static final MedicationDispenseStatusReasonCodes frr05 =
      MedicationDispenseStatusReasonCodes._(
    value: 'frr05',
  );

  /// frr06
  static final MedicationDispenseStatusReasonCodes frr06 =
      MedicationDispenseStatusReasonCodes._(
    value: 'frr06',
  );

  /// altchoice
  static final MedicationDispenseStatusReasonCodes altchoice =
      MedicationDispenseStatusReasonCodes._(
    value: 'altchoice',
  );

  /// clarif
  static final MedicationDispenseStatusReasonCodes clarif =
      MedicationDispenseStatusReasonCodes._(
    value: 'clarif',
  );

  /// drughigh
  static final MedicationDispenseStatusReasonCodes drughigh =
      MedicationDispenseStatusReasonCodes._(
    value: 'drughigh',
  );

  /// hospadm
  static final MedicationDispenseStatusReasonCodes hospadm =
      MedicationDispenseStatusReasonCodes._(
    value: 'hospadm',
  );

  /// labint
  static final MedicationDispenseStatusReasonCodes labint =
      MedicationDispenseStatusReasonCodes._(
    value: 'labint',
  );

  /// non_avail
  static final MedicationDispenseStatusReasonCodes non_avail =
      MedicationDispenseStatusReasonCodes._(
    value: 'non-avail',
  );

  /// preg
  static final MedicationDispenseStatusReasonCodes preg =
      MedicationDispenseStatusReasonCodes._(
    value: 'preg',
  );

  /// saig
  static final MedicationDispenseStatusReasonCodes saig =
      MedicationDispenseStatusReasonCodes._(
    value: 'saig',
  );

  /// sddi
  static final MedicationDispenseStatusReasonCodes sddi =
      MedicationDispenseStatusReasonCodes._(
    value: 'sddi',
  );

  /// sdupther
  static final MedicationDispenseStatusReasonCodes sdupther =
      MedicationDispenseStatusReasonCodes._(
    value: 'sdupther',
  );

  /// sintol
  static final MedicationDispenseStatusReasonCodes sintol =
      MedicationDispenseStatusReasonCodes._(
    value: 'sintol',
  );

  /// surg
  static final MedicationDispenseStatusReasonCodes surg =
      MedicationDispenseStatusReasonCodes._(
    value: 'surg',
  );

  /// washout
  static final MedicationDispenseStatusReasonCodes washout =
      MedicationDispenseStatusReasonCodes._(
    value: 'washout',
  );

  /// outofstock
  static final MedicationDispenseStatusReasonCodes outofstock =
      MedicationDispenseStatusReasonCodes._(
    value: 'outofstock',
  );

  /// offmarket
  static final MedicationDispenseStatusReasonCodes offmarket =
      MedicationDispenseStatusReasonCodes._(
    value: 'offmarket',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseStatusReasonCodes elementOnly =
      MedicationDispenseStatusReasonCodes._(value: '');

  /// List of all enum-like values
  static final List<MedicationDispenseStatusReasonCodes> values = [
    frr01,
    frr02,
    frr03,
    frr04,
    frr05,
    frr06,
    altchoice,
    clarif,
    drughigh,
    hospadm,
    labint,
    non_avail,
    preg,
    saig,
    sddi,
    sdupther,
    sintol,
    surg,
    washout,
    outofstock,
    offmarket,
  ];

  /// Clones the current instance
  @override
  MedicationDispenseStatusReasonCodes clone() =>
      MedicationDispenseStatusReasonCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationDispenseStatusReasonCodes withElement(Element? newElement) {
    return MedicationDispenseStatusReasonCodes._(
        value: value, element: newElement);
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
  MedicationDispenseStatusReasonCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MedicationDispenseStatusReasonCodes._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
