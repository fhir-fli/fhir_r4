// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that indicates how the server supports conditional delete.
class ConditionalDeleteStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConditionalDeleteStatusBuilder._({
    required super.validatedValue,
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
  factory ConditionalDeleteStatusBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return ConditionalDeleteStatusBuilder._(
      validatedValue: validated,
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

  /// Create empty [ConditionalDeleteStatusBuilder] with element only
  factory ConditionalDeleteStatusBuilder.empty() =>
      ConditionalDeleteStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [ConditionalDeleteStatusBuilder] from JSON.
  factory ConditionalDeleteStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalDeleteStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ConditionalDeleteStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// not_supported
  static ConditionalDeleteStatusBuilder not_supported =
      ConditionalDeleteStatusBuilder._(
    validatedValue: 'not-supported',
    system: 'http://hl7.org/fhir/ValueSet/conditional-delete-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Supported'.toFhirStringBuilder,
  );

  /// single
  static ConditionalDeleteStatusBuilder single =
      ConditionalDeleteStatusBuilder._(
    validatedValue: 'single',
    system: 'http://hl7.org/fhir/ValueSet/conditional-delete-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Single Deletes Supported'.toFhirStringBuilder,
  );

  /// multiple
  static ConditionalDeleteStatusBuilder multiple =
      ConditionalDeleteStatusBuilder._(
    validatedValue: 'multiple',
    system: 'http://hl7.org/fhir/ValueSet/conditional-delete-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Multiple Deletes Supported'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ConditionalDeleteStatusBuilder elementOnly =
      ConditionalDeleteStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ConditionalDeleteStatusBuilder> values = [
    not_supported,
    single,
    multiple,
  ];

  /// Clones the current instance
  @override
  ConditionalDeleteStatusBuilder clone() => ConditionalDeleteStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ConditionalDeleteStatusBuilder withElement(ElementBuilder? newElement) {
    return ConditionalDeleteStatusBuilder._(
        validatedValue: value, element: newElement);
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
  ConditionalDeleteStatusBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ConditionalDeleteStatusBuilder._(
      validatedValue: newValue ?? value,
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
