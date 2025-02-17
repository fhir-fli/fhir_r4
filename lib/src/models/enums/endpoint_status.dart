// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the endpoint.
class EndpointStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  EndpointStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [EndpointStatus] with element only
  factory EndpointStatus.empty() => EndpointStatus._('');

  /// Factory constructor to create [EndpointStatus] from JSON.
  factory EndpointStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EndpointStatus cannot be constructed from JSON.',
      );
    }
    return EndpointStatus._(
      value,
      element: element,
    );
  }

  /// active
  static final EndpointStatus active = EndpointStatus._(
    'active',
  );

  /// suspended
  static final EndpointStatus suspended = EndpointStatus._(
    'suspended',
  );

  /// error
  static final EndpointStatus error = EndpointStatus._(
    'error',
  );

  /// off
  static final EndpointStatus off = EndpointStatus._(
    'off',
  );

  /// entered_in_error
  static final EndpointStatus entered_in_error = EndpointStatus._(
    'entered-in-error',
  );

  /// test
  static final EndpointStatus test = EndpointStatus._(
    'test',
  );

  /// For instances where an Element is present but not value

  static final EndpointStatus elementOnly = EndpointStatus._('');

  /// List of all enum-like values
  static final List<EndpointStatus> values = [
    active,
    suspended,
    error,
    off,
    entered_in_error,
    test,
  ];

  /// Clones the current instance
  @override
  EndpointStatus clone() => EndpointStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EndpointStatus withElement(Element? newElement) {
    return EndpointStatus._(
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
  EndpointStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EndpointStatus._(
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
