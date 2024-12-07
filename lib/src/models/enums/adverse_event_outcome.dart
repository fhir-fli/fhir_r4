// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TODO (and should this be required?).
class AdverseEventOutcome extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdverseEventOutcome._(super.value, [super.element]);

  /// Factory constructor to create [AdverseEventOutcome] from JSON.
  factory AdverseEventOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventOutcome.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventOutcome cannot be constructed from JSON.',
      );
    }
    return AdverseEventOutcome._(value, element);
  }

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

  /// Clones the current instance
  @override
  AdverseEventOutcome clone() => AdverseEventOutcome._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdverseEventOutcome withElement(Element? newElement) {
    return AdverseEventOutcome._(value, newElement);
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
  AdverseEventOutcome copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AdverseEventOutcome._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
