// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Status Reason Codes
class MedicationRequestStatusReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationRequestStatusReasonCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationRequestStatusReasonCodes] from JSON.
  factory MedicationRequestStatusReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestStatusReasonCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestStatusReasonCodes cannot be constructed from JSON.',
      );
    }
    return MedicationRequestStatusReasonCodes._(value: value, element: element);
  }

  /// altchoice
  static final MedicationRequestStatusReasonCodes altchoice =
      MedicationRequestStatusReasonCodes._(
    value: 'altchoice',
  );

  /// clarif
  static final MedicationRequestStatusReasonCodes clarif =
      MedicationRequestStatusReasonCodes._(
    value: 'clarif',
  );

  /// drughigh
  static final MedicationRequestStatusReasonCodes drughigh =
      MedicationRequestStatusReasonCodes._(
    value: 'drughigh',
  );

  /// hospadm
  static final MedicationRequestStatusReasonCodes hospadm =
      MedicationRequestStatusReasonCodes._(
    value: 'hospadm',
  );

  /// labint
  static final MedicationRequestStatusReasonCodes labint =
      MedicationRequestStatusReasonCodes._(
    value: 'labint',
  );

  /// non_avail
  static final MedicationRequestStatusReasonCodes non_avail =
      MedicationRequestStatusReasonCodes._(
    value: 'non-avail',
  );

  /// preg
  static final MedicationRequestStatusReasonCodes preg =
      MedicationRequestStatusReasonCodes._(
    value: 'preg',
  );

  /// salg
  static final MedicationRequestStatusReasonCodes salg =
      MedicationRequestStatusReasonCodes._(
    value: 'salg',
  );

  /// sddi
  static final MedicationRequestStatusReasonCodes sddi =
      MedicationRequestStatusReasonCodes._(
    value: 'sddi',
  );

  /// sdupther
  static final MedicationRequestStatusReasonCodes sdupther =
      MedicationRequestStatusReasonCodes._(
    value: 'sdupther',
  );

  /// sintol
  static final MedicationRequestStatusReasonCodes sintol =
      MedicationRequestStatusReasonCodes._(
    value: 'sintol',
  );

  /// surg
  static final MedicationRequestStatusReasonCodes surg =
      MedicationRequestStatusReasonCodes._(
    value: 'surg',
  );

  /// washout
  static final MedicationRequestStatusReasonCodes washout =
      MedicationRequestStatusReasonCodes._(
    value: 'washout',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestStatusReasonCodes elementOnly =
      MedicationRequestStatusReasonCodes._(value: '');

  /// List of all enum-like values
  static final List<MedicationRequestStatusReasonCodes> values = [
    altchoice,
    clarif,
    drughigh,
    hospadm,
    labint,
    non_avail,
    preg,
    salg,
    sddi,
    sdupther,
    sintol,
    surg,
    washout,
  ];

  /// Clones the current instance
  @override
  MedicationRequestStatusReasonCodes clone() =>
      MedicationRequestStatusReasonCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationRequestStatusReasonCodes withElement(Element? newElement) {
    return MedicationRequestStatusReasonCodes._(
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
  MedicationRequestStatusReasonCodes copyWith({
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
    return MedicationRequestStatusReasonCodes._(
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
