// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that indicates how the server supports conditional read.
class ConditionalReadStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ConditionalReadStatus._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ConditionalReadStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ConditionalReadStatus._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [ConditionalReadStatus] with element only
  factory ConditionalReadStatus.empty() =>
      ConditionalReadStatus._(valueString: '');

  /// Factory constructor to create [ConditionalReadStatus]
  /// from JSON.
  factory ConditionalReadStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalReadStatus cannot be constructed from JSON.',
      );
    }
    return ConditionalReadStatus._(
      valueString: value,
      element: element,
    );
  }

  /// not_supported
  static final ConditionalReadStatus not_supported = ConditionalReadStatus._(
    valueString: 'not-supported',
    system: 'http://hl7.org/fhir/ValueSet/conditional-read-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Supported'.toFhirString,
  );

  /// modified_since
  static final ConditionalReadStatus modified_since = ConditionalReadStatus._(
    valueString: 'modified-since',
    system: 'http://hl7.org/fhir/ValueSet/conditional-read-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'If-Modified-Since'.toFhirString,
  );

  /// not_match
  static final ConditionalReadStatus not_match = ConditionalReadStatus._(
    valueString: 'not-match',
    system: 'http://hl7.org/fhir/ValueSet/conditional-read-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'If-None-Match'.toFhirString,
  );

  /// full_support
  static final ConditionalReadStatus full_support = ConditionalReadStatus._(
    valueString: 'full-support',
    system: 'http://hl7.org/fhir/ValueSet/conditional-read-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Full Support'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ConditionalReadStatus elementOnly =
      ConditionalReadStatus._(valueString: '');

  /// List of all enum-like values
  static final List<ConditionalReadStatus> values = [
    not_supported,
    modified_since,
    not_match,
    full_support,
  ];

  /// Clones the current instance
  @override
  ConditionalReadStatus clone() => ConditionalReadStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConditionalReadStatus withElement(Element? newElement) {
    return ConditionalReadStatus._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ConditionalReadStatus copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for ConditionalReadStatus: $newValue',
      );
    }
    return ConditionalReadStatus._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
