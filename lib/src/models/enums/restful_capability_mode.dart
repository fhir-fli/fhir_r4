// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The mode of a RESTful capability statement.
class RestfulCapabilityMode extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  RestfulCapabilityMode._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [RestfulCapabilityMode] with element only
  factory RestfulCapabilityMode.empty() => RestfulCapabilityMode._('');

  /// Factory constructor to create [RestfulCapabilityMode] from JSON.
  factory RestfulCapabilityMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulCapabilityMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RestfulCapabilityMode cannot be constructed from JSON.',
      );
    }
    return RestfulCapabilityMode._(
      value,
      element: element,
    );
  }

  /// client
  static final RestfulCapabilityMode client = RestfulCapabilityMode._(
    'client',
    system: 'http://hl7.org/fhir/ValueSet/restful-capability-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Client'.toFhirString,
  );

  /// server
  static final RestfulCapabilityMode server = RestfulCapabilityMode._(
    'server',
    system: 'http://hl7.org/fhir/ValueSet/restful-capability-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Server'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final RestfulCapabilityMode elementOnly = RestfulCapabilityMode._('');

  /// List of all enum-like values
  static final List<RestfulCapabilityMode> values = [
    client,
    server,
  ];

  /// Clones the current instance
  @override
  RestfulCapabilityMode clone() => RestfulCapabilityMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RestfulCapabilityMode withElement(Element? newElement) {
    return RestfulCapabilityMode._(
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
  RestfulCapabilityMode copyWith({
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
    return RestfulCapabilityMode._(
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
