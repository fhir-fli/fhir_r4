// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Status Codes
class MedicationDispenseStatusReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationDispenseStatusReasonCodes._(super.value, [super.element]);

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
    return MedicationDispenseStatusReasonCodes._(value, element);
  }

  /// frr01
  static final MedicationDispenseStatusReasonCodes frr01 =
      MedicationDispenseStatusReasonCodes._(
    'frr01',
  );

  /// frr02
  static final MedicationDispenseStatusReasonCodes frr02 =
      MedicationDispenseStatusReasonCodes._(
    'frr02',
  );

  /// frr03
  static final MedicationDispenseStatusReasonCodes frr03 =
      MedicationDispenseStatusReasonCodes._(
    'frr03',
  );

  /// frr04
  static final MedicationDispenseStatusReasonCodes frr04 =
      MedicationDispenseStatusReasonCodes._(
    'frr04',
  );

  /// frr05
  static final MedicationDispenseStatusReasonCodes frr05 =
      MedicationDispenseStatusReasonCodes._(
    'frr05',
  );

  /// frr06
  static final MedicationDispenseStatusReasonCodes frr06 =
      MedicationDispenseStatusReasonCodes._(
    'frr06',
  );

  /// altchoice
  static final MedicationDispenseStatusReasonCodes altchoice =
      MedicationDispenseStatusReasonCodes._(
    'altchoice',
  );

  /// clarif
  static final MedicationDispenseStatusReasonCodes clarif =
      MedicationDispenseStatusReasonCodes._(
    'clarif',
  );

  /// drughigh
  static final MedicationDispenseStatusReasonCodes drughigh =
      MedicationDispenseStatusReasonCodes._(
    'drughigh',
  );

  /// hospadm
  static final MedicationDispenseStatusReasonCodes hospadm =
      MedicationDispenseStatusReasonCodes._(
    'hospadm',
  );

  /// labint
  static final MedicationDispenseStatusReasonCodes labint =
      MedicationDispenseStatusReasonCodes._(
    'labint',
  );

  /// non_avail
  static final MedicationDispenseStatusReasonCodes non_avail =
      MedicationDispenseStatusReasonCodes._(
    'non-avail',
  );

  /// preg
  static final MedicationDispenseStatusReasonCodes preg =
      MedicationDispenseStatusReasonCodes._(
    'preg',
  );

  /// saig
  static final MedicationDispenseStatusReasonCodes saig =
      MedicationDispenseStatusReasonCodes._(
    'saig',
  );

  /// sddi
  static final MedicationDispenseStatusReasonCodes sddi =
      MedicationDispenseStatusReasonCodes._(
    'sddi',
  );

  /// sdupther
  static final MedicationDispenseStatusReasonCodes sdupther =
      MedicationDispenseStatusReasonCodes._(
    'sdupther',
  );

  /// sintol
  static final MedicationDispenseStatusReasonCodes sintol =
      MedicationDispenseStatusReasonCodes._(
    'sintol',
  );

  /// surg
  static final MedicationDispenseStatusReasonCodes surg =
      MedicationDispenseStatusReasonCodes._(
    'surg',
  );

  /// washout
  static final MedicationDispenseStatusReasonCodes washout =
      MedicationDispenseStatusReasonCodes._(
    'washout',
  );

  /// outofstock
  static final MedicationDispenseStatusReasonCodes outofstock =
      MedicationDispenseStatusReasonCodes._(
    'outofstock',
  );

  /// offmarket
  static final MedicationDispenseStatusReasonCodes offmarket =
      MedicationDispenseStatusReasonCodes._(
    'offmarket',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseStatusReasonCodes elementOnly =
      MedicationDispenseStatusReasonCodes._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicationDispenseStatusReasonCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicationDispenseStatusReasonCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicationDispenseStatusReasonCodes withElement(Element? newElement) {
    return MedicationDispenseStatusReasonCodes._(value, newElement);
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
    return MedicationDispenseStatusReasonCodes._(
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
