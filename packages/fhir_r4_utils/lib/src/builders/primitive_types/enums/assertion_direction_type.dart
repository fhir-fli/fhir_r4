// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of direction to use for assertion.
class AssertionDirectionTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AssertionDirectionTypeBuilder._({
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
  factory AssertionDirectionTypeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return AssertionDirectionTypeBuilder._(
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

  /// Create empty [AssertionDirectionTypeBuilder] with element only
  factory AssertionDirectionTypeBuilder.empty() =>
      AssertionDirectionTypeBuilder._(valueString: '');

  /// Factory constructor to create [AssertionDirectionTypeBuilder]
  /// from JSON.
  factory AssertionDirectionTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionDirectionTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionDirectionTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AssertionDirectionTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// response
  static AssertionDirectionTypeBuilder response =
      AssertionDirectionTypeBuilder._(
    valueString: 'response',
    system:
        'http://hl7.org/fhir/ValueSet/assert-direction-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'response'.toFhirStringBuilder,
  );

  /// request
  static AssertionDirectionTypeBuilder request =
      AssertionDirectionTypeBuilder._(
    valueString: 'request',
    system:
        'http://hl7.org/fhir/ValueSet/assert-direction-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'request'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AssertionDirectionTypeBuilder elementOnly =
      AssertionDirectionTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<AssertionDirectionTypeBuilder> values = [
    response,
    request,
  ];

  /// Clones the current instance
  @override
  AssertionDirectionTypeBuilder clone() => AssertionDirectionTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AssertionDirectionTypeBuilder withElement(ElementBuilder? newElement) {
    return AssertionDirectionTypeBuilder._(
        valueString: valueString, element: newElement,);
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
  AssertionDirectionTypeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for AssertionDirectionType: $newValue',);
    }
    return AssertionDirectionTypeBuilder._(
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
