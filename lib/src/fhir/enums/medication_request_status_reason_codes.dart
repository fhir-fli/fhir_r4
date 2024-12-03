// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Status Reason Codes
class MedicationRequestStatusReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationRequestStatusReasonCodes._(super.value, [super.element]);

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
    }
    return MedicationRequestStatusReasonCodes._(value, element);
  }

  /// altchoice
  static final MedicationRequestStatusReasonCodes altchoice =
      MedicationRequestStatusReasonCodes._(
    'altchoice',
  );

  /// clarif
  static final MedicationRequestStatusReasonCodes clarif =
      MedicationRequestStatusReasonCodes._(
    'clarif',
  );

  /// drughigh
  static final MedicationRequestStatusReasonCodes drughigh =
      MedicationRequestStatusReasonCodes._(
    'drughigh',
  );

  /// hospadm
  static final MedicationRequestStatusReasonCodes hospadm =
      MedicationRequestStatusReasonCodes._(
    'hospadm',
  );

  /// labint
  static final MedicationRequestStatusReasonCodes labint =
      MedicationRequestStatusReasonCodes._(
    'labint',
  );

  /// non_avail
  static final MedicationRequestStatusReasonCodes non_avail =
      MedicationRequestStatusReasonCodes._(
    'non-avail',
  );

  /// preg
  static final MedicationRequestStatusReasonCodes preg =
      MedicationRequestStatusReasonCodes._(
    'preg',
  );

  /// salg
  static final MedicationRequestStatusReasonCodes salg =
      MedicationRequestStatusReasonCodes._(
    'salg',
  );

  /// sddi
  static final MedicationRequestStatusReasonCodes sddi =
      MedicationRequestStatusReasonCodes._(
    'sddi',
  );

  /// sdupther
  static final MedicationRequestStatusReasonCodes sdupther =
      MedicationRequestStatusReasonCodes._(
    'sdupther',
  );

  /// sintol
  static final MedicationRequestStatusReasonCodes sintol =
      MedicationRequestStatusReasonCodes._(
    'sintol',
  );

  /// surg
  static final MedicationRequestStatusReasonCodes surg =
      MedicationRequestStatusReasonCodes._(
    'surg',
  );

  /// washout
  static final MedicationRequestStatusReasonCodes washout =
      MedicationRequestStatusReasonCodes._(
    'washout',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestStatusReasonCodes elementOnly =
      MedicationRequestStatusReasonCodes._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicationRequestStatusReasonCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicationRequestStatusReasonCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicationRequestStatusReasonCodes withElement(Element? newElement) {
    return MedicationRequestStatusReasonCodes._(value, newElement);
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
    return MedicationRequestStatusReasonCodes._(
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
