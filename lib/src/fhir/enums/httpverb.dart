// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.
class HTTPVerb extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  HTTPVerb._(super.value, [super.element]);

  /// Factory constructor to create [HTTPVerb] from JSON.
  factory HTTPVerb.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerb.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('HTTPVerb cannot be constructed from JSON.');
    }
    return HTTPVerb._(value, element);
  }

  /// GET
  static final HTTPVerb GET = HTTPVerb._(
    'GET',
  );

  /// HEAD
  static final HTTPVerb HEAD = HTTPVerb._(
    'HEAD',
  );

  /// POST
  static final HTTPVerb POST = HTTPVerb._(
    'POST',
  );

  /// PUT
  static final HTTPVerb PUT = HTTPVerb._(
    'PUT',
  );

  /// DELETE
  static final HTTPVerb DELETE = HTTPVerb._(
    'DELETE',
  );

  /// PATCH
  static final HTTPVerb PATCH = HTTPVerb._(
    'PATCH',
  );

  /// For instances where an Element is present but not value

  static final HTTPVerb elementOnly = HTTPVerb._('');

  /// List of all enum-like values
  static final List<HTTPVerb> values = [
    GET,
    HEAD,
    POST,
    PUT,
    DELETE,
    PATCH,
  ];

  /// Clones the current instance
  @override
  HTTPVerb clone() => HTTPVerb._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  HTTPVerb setElement(
    String name,
    dynamic elementValue,
  ) {
    return HTTPVerb._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  HTTPVerb withElement(Element? newElement) {
    return HTTPVerb._(value, newElement);
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
  HTTPVerb copyWith({
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
    return HTTPVerb._(
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
