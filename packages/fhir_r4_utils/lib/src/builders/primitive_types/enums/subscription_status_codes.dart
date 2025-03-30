// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of a subscription.
class SubscriptionStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionStatusCodesBuilder._({
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
  factory SubscriptionStatusCodesBuilder(
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
    return SubscriptionStatusCodesBuilder._(
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

  /// Create empty [SubscriptionStatusCodesBuilder] with element only
  factory SubscriptionStatusCodesBuilder.empty() =>
      SubscriptionStatusCodesBuilder._(validatedValue: '');

  /// Factory constructor to create [SubscriptionStatusCodesBuilder]
  /// from JSON.
  factory SubscriptionStatusCodesBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodesBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return SubscriptionStatusCodesBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// requested
  static SubscriptionStatusCodesBuilder requested =
      SubscriptionStatusCodesBuilder._(
    validatedValue: 'requested',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Requested'.toFhirStringBuilder,
  );

  /// active
  static SubscriptionStatusCodesBuilder active =
      SubscriptionStatusCodesBuilder._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// error
  static SubscriptionStatusCodesBuilder error =
      SubscriptionStatusCodesBuilder._(
    validatedValue: 'error',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Error'.toFhirStringBuilder,
  );

  /// off
  static SubscriptionStatusCodesBuilder off = SubscriptionStatusCodesBuilder._(
    validatedValue: 'off',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Off'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SubscriptionStatusCodesBuilder elementOnly =
      SubscriptionStatusCodesBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SubscriptionStatusCodesBuilder> values = [
    requested,
    active,
    error,
    off,
  ];

  /// Clones the current instance
  @override
  SubscriptionStatusCodesBuilder clone() => SubscriptionStatusCodesBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SubscriptionStatusCodesBuilder withElement(ElementBuilder? newElement) {
    return SubscriptionStatusCodesBuilder._(
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
  SubscriptionStatusCodesBuilder copyWith({
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
    return SubscriptionStatusCodesBuilder._(
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
