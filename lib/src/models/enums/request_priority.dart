// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the level of importance to be assigned to actioning the request.
class RequestPriority extends FhirCode {
  // Private constructor for internal use (like enum)
  RequestPriority._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [RequestPriority] from JSON.
  factory RequestPriority.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriority.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestPriority cannot be constructed from JSON.',
      );
    }
    return RequestPriority._(
      value,
      element: element,
    );
  }

  /// routine
  static final RequestPriority routine = RequestPriority._(
    'routine',
  );

  /// urgent
  static final RequestPriority urgent = RequestPriority._(
    'urgent',
  );

  /// asap
  static final RequestPriority asap = RequestPriority._(
    'asap',
  );

  /// stat
  static final RequestPriority stat = RequestPriority._(
    'stat',
  );

  /// For instances where an Element is present but not value

  static final RequestPriority elementOnly = RequestPriority._('');

  /// List of all enum-like values
  static final List<RequestPriority> values = [
    routine,
    urgent,
    asap,
    stat,
  ];

  /// Clones the current instance
  @override
  RequestPriority clone() => RequestPriority._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RequestPriority withElement(Element? newElement) {
    return RequestPriority._(
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
  RequestPriority copyWith({
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
    return RequestPriority._(
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
