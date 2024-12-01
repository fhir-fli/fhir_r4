// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TODO (and should this be required?).
class AdverseEventOutcome {
  // Private constructor for internal use (like enum)
  AdverseEventOutcome._(this.fhirCode, {this.element});

  /// Factory constructor to create [AdverseEventOutcome] from JSON.
  factory AdverseEventOutcome.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventOutcome.elementOnly.withElement(element);
    }
    return AdverseEventOutcome._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdverseEventOutcome values
  /// resolved
  static final AdverseEventOutcome resolved = AdverseEventOutcome._(
    'resolved',
  );

  /// recovering
  static final AdverseEventOutcome recovering = AdverseEventOutcome._(
    'recovering',
  );

  /// ongoing
  static final AdverseEventOutcome ongoing = AdverseEventOutcome._(
    'ongoing',
  );

  /// resolvedWithSequelae
  static final AdverseEventOutcome resolvedWithSequelae = AdverseEventOutcome._(
    'resolvedWithSequelae',
  );

  /// fatal
  static final AdverseEventOutcome fatal = AdverseEventOutcome._(
    'fatal',
  );

  /// unknown
  static final AdverseEventOutcome unknown = AdverseEventOutcome._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventOutcome elementOnly = AdverseEventOutcome._('');

  /// List of all enum-like values
  static final List<AdverseEventOutcome> values = [
    resolved,
    recovering,
    ongoing,
    resolvedWithSequelae,
    fatal,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AdverseEventOutcome withElement(Element? newElement) {
    return AdverseEventOutcome._(fhirCode, element: newElement);
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
