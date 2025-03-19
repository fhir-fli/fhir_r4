// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a rule statement is applied, such as adding additional consent or
/// removing consent.
class ConsentProvisionType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ConsentProvisionType._({
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
  factory ConsentProvisionType(
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
    return ConsentProvisionType._(
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

  /// Create empty [ConsentProvisionType] with element only
  factory ConsentProvisionType.empty() =>
      ConsentProvisionType._(validatedValue: '');

  /// Factory constructor to create [ConsentProvisionType] from JSON.
  factory ConsentProvisionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentProvisionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentProvisionType cannot be constructed from JSON.',
      );
    }
    return ConsentProvisionType._(validatedValue: value, element: element);
  }

  /// deny
  static final ConsentProvisionType deny = ConsentProvisionType._(
    validatedValue: 'deny',
    system: 'http://hl7.org/fhir/ValueSet/consent-provision-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Opt Out'.toFhirString,
  );

  /// permit
  static final ConsentProvisionType permit = ConsentProvisionType._(
    validatedValue: 'permit',
    system: 'http://hl7.org/fhir/ValueSet/consent-provision-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Opt In'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ConsentProvisionType elementOnly =
      ConsentProvisionType._(validatedValue: '');

  /// List of all enum-like values
  static final List<ConsentProvisionType> values = [
    deny,
    permit,
  ];

  /// Clones the current instance
  @override
  ConsentProvisionType clone() => ConsentProvisionType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConsentProvisionType withElement(Element? newElement) {
    return ConsentProvisionType._(validatedValue: value, element: newElement);
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
  ConsentProvisionType copyWith({
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
    return ConsentProvisionType._(
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
