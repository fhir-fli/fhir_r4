// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Information Category codes.
class ClaimInformationCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ClaimInformationCategoryCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ClaimInformationCategoryCodes] from JSON.
  factory ClaimInformationCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimInformationCategoryCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClaimInformationCategoryCodes cannot be constructed from JSON.',
      );
    }
    return ClaimInformationCategoryCodes._(value: value, element: element);
  }

  /// info
  static final ClaimInformationCategoryCodes info =
      ClaimInformationCategoryCodes._(
    value: 'info',
  );

  /// discharge
  static final ClaimInformationCategoryCodes discharge =
      ClaimInformationCategoryCodes._(
    value: 'discharge',
  );

  /// onset
  static final ClaimInformationCategoryCodes onset =
      ClaimInformationCategoryCodes._(
    value: 'onset',
  );

  /// related
  static final ClaimInformationCategoryCodes related =
      ClaimInformationCategoryCodes._(
    value: 'related',
  );

  /// exception
  static final ClaimInformationCategoryCodes exception =
      ClaimInformationCategoryCodes._(
    value: 'exception',
  );

  /// material
  static final ClaimInformationCategoryCodes material =
      ClaimInformationCategoryCodes._(
    value: 'material',
  );

  /// attachment
  static final ClaimInformationCategoryCodes attachment =
      ClaimInformationCategoryCodes._(
    value: 'attachment',
  );

  /// missingtooth
  static final ClaimInformationCategoryCodes missingtooth =
      ClaimInformationCategoryCodes._(
    value: 'missingtooth',
  );

  /// prosthesis
  static final ClaimInformationCategoryCodes prosthesis =
      ClaimInformationCategoryCodes._(
    value: 'prosthesis',
  );

  /// other
  static final ClaimInformationCategoryCodes other =
      ClaimInformationCategoryCodes._(
    value: 'other',
  );

  /// hospitalized
  static final ClaimInformationCategoryCodes hospitalized =
      ClaimInformationCategoryCodes._(
    value: 'hospitalized',
  );

  /// employmentimpacted
  static final ClaimInformationCategoryCodes employmentimpacted =
      ClaimInformationCategoryCodes._(
    value: 'employmentimpacted',
  );

  /// externalcause
  static final ClaimInformationCategoryCodes externalcause =
      ClaimInformationCategoryCodes._(
    value: 'externalcause',
  );

  /// patientreasonforvisit
  static final ClaimInformationCategoryCodes patientreasonforvisit =
      ClaimInformationCategoryCodes._(
    value: 'patientreasonforvisit',
  );

  /// For instances where an Element is present but not value

  static final ClaimInformationCategoryCodes elementOnly =
      ClaimInformationCategoryCodes._(value: '');

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

  /// Clones the current instance
  @override
  ClaimInformationCategoryCodes clone() => ClaimInformationCategoryCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ClaimInformationCategoryCodes withElement(Element? newElement) {
    return ClaimInformationCategoryCodes._(value: value, element: newElement);
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
  ClaimInformationCategoryCodes copyWith({
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
    return ClaimInformationCategoryCodes._(
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
