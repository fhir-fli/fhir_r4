// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to where the patient left the hospital.
class DischargeDisposition extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DischargeDisposition._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [DischargeDisposition] from JSON.
  factory DischargeDisposition.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DischargeDisposition.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DischargeDisposition cannot be constructed from JSON.',
      );
    }
    return DischargeDisposition._(value, element: element);
  }

  /// home
  static final DischargeDisposition home = DischargeDisposition._(
    'home',
  );

  /// alt_home
  static final DischargeDisposition alt_home = DischargeDisposition._(
    'alt-home',
  );

  /// other_hcf
  static final DischargeDisposition other_hcf = DischargeDisposition._(
    'other-hcf',
  );

  /// hosp
  static final DischargeDisposition hosp = DischargeDisposition._(
    'hosp',
  );

  /// long
  static final DischargeDisposition long = DischargeDisposition._(
    'long',
  );

  /// aadvice
  static final DischargeDisposition aadvice = DischargeDisposition._(
    'aadvice',
  );

  /// exp
  static final DischargeDisposition exp = DischargeDisposition._(
    'exp',
  );

  /// psy
  static final DischargeDisposition psy = DischargeDisposition._(
    'psy',
  );

  /// rehab
  static final DischargeDisposition rehab = DischargeDisposition._(
    'rehab',
  );

  /// snf
  static final DischargeDisposition snf = DischargeDisposition._(
    'snf',
  );

  /// oth
  static final DischargeDisposition oth = DischargeDisposition._(
    'oth',
  );

  /// For instances where an Element is present but not value

  static final DischargeDisposition elementOnly = DischargeDisposition._('');

  /// List of all enum-like values
  static final List<DischargeDisposition> values = [
    home,
    alt_home,
    other_hcf,
    hosp,
    long,
    aadvice,
    exp,
    psy,
    rehab,
    snf,
    oth,
  ];

  /// Clones the current instance
  @override
  DischargeDisposition clone() => DischargeDisposition._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DischargeDisposition withElement(Element? newElement) {
    return DischargeDisposition._(value, element: newElement);
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
  DischargeDisposition copyWith({
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
    return DischargeDisposition._(
      newValue ?? value,
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
