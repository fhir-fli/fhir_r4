// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Consent Directive Type codes, including several consent directive related LOINC codes; HL7 VALUE SET: ActConsentType(2.16.840.1.113883.1.11.19897); examples of US realm consent directive legal descriptions and references to online and/or downloadable forms such as the SSA-827 Authorization to Disclose Information to the Social Security Administration; and other anticipated consent directives related to participation in a clinical trial, medical procedures, reproductive procedures; health care directive (Living Will); advance directive, do not resuscitate (DNR); Physician Orders for Life-Sustaining Treatment (POLST)
class ConsentCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConsentCategoryCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ConsentCategoryCodes] from JSON.
  factory ConsentCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentCategoryCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentCategoryCodes cannot be constructed from JSON.',
      );
    }
    return ConsentCategoryCodes._(value: value, element: element);
  }

  /// acd
  static final ConsentCategoryCodes acd = ConsentCategoryCodes._(
    value: 'acd',
  );

  /// dnr
  static final ConsentCategoryCodes dnr = ConsentCategoryCodes._(
    value: 'dnr',
  );

  /// emrgonly
  static final ConsentCategoryCodes emrgonly = ConsentCategoryCodes._(
    value: 'emrgonly',
  );

  /// hcd
  static final ConsentCategoryCodes hcd = ConsentCategoryCodes._(
    value: 'hcd',
  );

  /// npp
  static final ConsentCategoryCodes npp = ConsentCategoryCodes._(
    value: 'npp',
  );

  /// polst
  static final ConsentCategoryCodes polst = ConsentCategoryCodes._(
    value: 'polst',
  );

  /// research
  static final ConsentCategoryCodes research = ConsentCategoryCodes._(
    value: 'research',
  );

  /// rsdid
  static final ConsentCategoryCodes rsdid = ConsentCategoryCodes._(
    value: 'rsdid',
  );

  /// rsreid
  static final ConsentCategoryCodes rsreid = ConsentCategoryCodes._(
    value: 'rsreid',
  );

  /// value59284_0
  static final ConsentCategoryCodes value59284_0 = ConsentCategoryCodes._(
    value: '59284-0',
  );

  /// value57016_8
  static final ConsentCategoryCodes value57016_8 = ConsentCategoryCodes._(
    value: '57016-8',
  );

  /// value57017_6
  static final ConsentCategoryCodes value57017_6 = ConsentCategoryCodes._(
    value: '57017-6',
  );

  /// value64292_6
  static final ConsentCategoryCodes value64292_6 = ConsentCategoryCodes._(
    value: '64292-6',
  );

  /// For instances where an Element is present but not value

  static final ConsentCategoryCodes elementOnly =
      ConsentCategoryCodes._(value: '');

  /// List of all enum-like values
  static final List<ConsentCategoryCodes> values = [
    acd,
    dnr,
    emrgonly,
    hcd,
    npp,
    polst,
    research,
    rsdid,
    rsreid,
    value59284_0,
    value57016_8,
    value57017_6,
    value64292_6,
  ];

  /// Clones the current instance
  @override
  ConsentCategoryCodes clone() => ConsentCategoryCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConsentCategoryCodes withElement(Element? newElement) {
    return ConsentCategoryCodes._(value: value, element: newElement);
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
  ConsentCategoryCodes copyWith({
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
    return ConsentCategoryCodes._(
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
