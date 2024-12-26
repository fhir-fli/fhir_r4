// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the degree of authority/intentionality associated with a request.
class RequestIntent extends FhirCode {
  // Private constructor for internal use (like enum)
  RequestIntent._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [RequestIntent] from JSON.
  factory RequestIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestIntent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestIntent cannot be constructed from JSON.',
      );
    }
    return RequestIntent._(
      value,
      element: element,
    );
  }

  /// proposal
  static final RequestIntent proposal = RequestIntent._(
    'proposal',
  );

  /// plan
  static final RequestIntent plan = RequestIntent._(
    'plan',
  );

  /// directive
  static final RequestIntent directive = RequestIntent._(
    'directive',
  );

  /// order
  static final RequestIntent order = RequestIntent._(
    'order',
  );

  /// original_order
  static final RequestIntent original_order = RequestIntent._(
    'original-order',
  );

  /// reflex_order
  static final RequestIntent reflex_order = RequestIntent._(
    'reflex-order',
  );

  /// filler_order
  static final RequestIntent filler_order = RequestIntent._(
    'filler-order',
  );

  /// instance_order
  static final RequestIntent instance_order = RequestIntent._(
    'instance-order',
  );

  /// option
  static final RequestIntent option = RequestIntent._(
    'option',
  );

  /// For instances where an Element is present but not value

  static final RequestIntent elementOnly = RequestIntent._('');

  /// List of all enum-like values
  static final List<RequestIntent> values = [
    proposal,
    plan,
    directive,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Clones the current instance
  @override
  RequestIntent clone() => RequestIntent._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RequestIntent withElement(Element? newElement) {
    return RequestIntent._(
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
  RequestIntent copyWith({
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
    return RequestIntent._(
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
