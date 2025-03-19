// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that indicates how the server supports conditional delete.
class ConditionalDeleteStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ConditionalDeleteStatus._({
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
  factory ConditionalDeleteStatus(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return ConditionalDeleteStatus._(
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

  /// Create empty [ConditionalDeleteStatus] with element only
  factory ConditionalDeleteStatus.empty() =>
      ConditionalDeleteStatus._(validatedValue: '');

  /// Factory constructor to create [ConditionalDeleteStatus] from JSON.
  factory ConditionalDeleteStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalDeleteStatus cannot be constructed from JSON.',
      );
    }
    return ConditionalDeleteStatus._(validatedValue: value, element: element);
  }

  /// not_supported
  static final ConditionalDeleteStatus not_supported =
      ConditionalDeleteStatus._(
    validatedValue: 'not-supported',
    system: 'http://hl7.org/fhir/ValueSet/conditional-delete-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Supported'.toFhirString,
  );

  /// single
  static final ConditionalDeleteStatus single = ConditionalDeleteStatus._(
    validatedValue: 'single',
    system: 'http://hl7.org/fhir/ValueSet/conditional-delete-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Single Deletes Supported'.toFhirString,
  );

  /// multiple
  static final ConditionalDeleteStatus multiple = ConditionalDeleteStatus._(
    validatedValue: 'multiple',
    system: 'http://hl7.org/fhir/ValueSet/conditional-delete-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Multiple Deletes Supported'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ConditionalDeleteStatus elementOnly =
      ConditionalDeleteStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<ConditionalDeleteStatus> values = [
    not_supported,
    single,
    multiple,
  ];

  /// Clones the current instance
  @override
  ConditionalDeleteStatus clone() => ConditionalDeleteStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConditionalDeleteStatus withElement(Element? newElement) {
    return ConditionalDeleteStatus._(
      validatedValue: value,
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
  ConditionalDeleteStatus copyWith({
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
    return ConditionalDeleteStatus._(
      validatedValue: newValue ?? value,
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
