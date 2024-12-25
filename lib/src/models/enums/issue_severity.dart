// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the issue affects the success of the action.
class IssueSeverity extends FhirCode {
  // Private constructor for internal use (like enum)
  IssueSeverity._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [IssueSeverity] from JSON.
  factory IssueSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IssueSeverity cannot be constructed from JSON.',
      );
    }
    return IssueSeverity._(
      value,
      element: element,
    );
  }

  /// fatal
  static final IssueSeverity fatal = IssueSeverity._(
    'fatal',
  );

  /// error
  static final IssueSeverity error = IssueSeverity._(
    'error',
  );

  /// warning
  static final IssueSeverity warning = IssueSeverity._(
    'warning',
  );

  /// information
  static final IssueSeverity information = IssueSeverity._(
    'information',
  );

  /// For instances where an Element is present but not value

  static final IssueSeverity elementOnly = IssueSeverity._('');

  /// List of all enum-like values
  static final List<IssueSeverity> values = [
    fatal,
    error,
    warning,
    information,
  ];

  /// Clones the current instance
  @override
  IssueSeverity clone() => IssueSeverity._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IssueSeverity withElement(Element? newElement) {
    return IssueSeverity._(
      value,
      element: newElement,
    );
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
  IssueSeverity copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return IssueSeverity._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
