// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of a subscription.
class SubscriptionStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SubscriptionStatusCodes._({
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
  factory SubscriptionStatusCodes(
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
    return SubscriptionStatusCodes._(
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

  /// Create empty [SubscriptionStatusCodes] with element only
  factory SubscriptionStatusCodes.empty() =>
      SubscriptionStatusCodes._(validatedValue: '');

  /// Factory constructor to create [SubscriptionStatusCodes] from JSON.
  factory SubscriptionStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionStatusCodes cannot be constructed from JSON.',
      );
    }
    return SubscriptionStatusCodes._(
      validatedValue: value,
      element: element,
    );
  }

  /// requested
  static final SubscriptionStatusCodes requested = SubscriptionStatusCodes._(
    validatedValue: 'requested',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Requested'.toFhirString,
  );

  /// active
  static final SubscriptionStatusCodes active = SubscriptionStatusCodes._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// error
  static final SubscriptionStatusCodes error = SubscriptionStatusCodes._(
    validatedValue: 'error',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
  );

  /// off
  static final SubscriptionStatusCodes off = SubscriptionStatusCodes._(
    validatedValue: 'off',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Off'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SubscriptionStatusCodes elementOnly =
      SubscriptionStatusCodes._(validatedValue: '');

  /// List of all enum-like values
  static final List<SubscriptionStatusCodes> values = [
    requested,
    active,
    error,
    off,
  ];

  /// Clones the current instance
  @override
  SubscriptionStatusCodes clone() => SubscriptionStatusCodes._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubscriptionStatusCodes withElement(Element? newElement) {
    return SubscriptionStatusCodes._(
        validatedValue: value, element: newElement,);
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
  SubscriptionStatusCodes copyWith({
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
    return SubscriptionStatusCodes._(
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
