// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a capability statement is intended to be used.
class CapabilityStatementKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CapabilityStatementKind._({
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
  factory CapabilityStatementKind(
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
    return CapabilityStatementKind._(
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

  /// Create empty [CapabilityStatementKind] with element only
  factory CapabilityStatementKind.empty() =>
      CapabilityStatementKind._(valueString: '');

  /// Factory constructor to create [CapabilityStatementKind]
  /// from JSON.
  factory CapabilityStatementKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CapabilityStatementKind.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CapabilityStatementKind cannot be constructed from JSON.',
      );
    }
    return CapabilityStatementKind._(
      valueString: value,
      element: element,
    );
  }

  /// instance
  static final CapabilityStatementKind instance = CapabilityStatementKind._(
    valueString: 'instance',
    system: 'http://hl7.org/fhir/ValueSet/capability-statement-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Instance'.toFhirString,
  );

  /// capability
  static final CapabilityStatementKind capability = CapabilityStatementKind._(
    valueString: 'capability',
    system: 'http://hl7.org/fhir/ValueSet/capability-statement-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Capability'.toFhirString,
  );

  /// requirements
  static final CapabilityStatementKind requirements = CapabilityStatementKind._(
    valueString: 'requirements',
    system: 'http://hl7.org/fhir/ValueSet/capability-statement-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Requirements'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CapabilityStatementKind elementOnly =
      CapabilityStatementKind._(valueString: '');

  /// List of all enum-like values
  static final List<CapabilityStatementKind> values = [
    instance,
    capability,
    requirements,
  ];

  /// Clones the current instance
  @override
  CapabilityStatementKind clone() => CapabilityStatementKind._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CapabilityStatementKind withElement(Element? newElement) {
    return CapabilityStatementKind._(
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
  CapabilityStatementKind copyWith({
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
        'Invalid input for CapabilityStatementKind: $newValue',
      );
    }
    return CapabilityStatementKind._(
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
