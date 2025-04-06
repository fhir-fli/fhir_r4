// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the purpose for this identifier, if known .
class IdentifierUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IdentifierUseBuilder._({
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
  factory IdentifierUseBuilder(
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
    return IdentifierUseBuilder._(
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

  /// Create empty [IdentifierUseBuilder] with element only
  factory IdentifierUseBuilder.empty() =>
      IdentifierUseBuilder._(valueString: '');

  /// Factory constructor to create [IdentifierUseBuilder]
  /// from JSON.
  factory IdentifierUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentifierUseBuilder cannot be constructed from JSON.',
      );
    }
    return IdentifierUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// usual
  static IdentifierUseBuilder usual = IdentifierUseBuilder._(
    valueString: 'usual',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Usual'.toFhirStringBuilder,
  );

  /// official
  static IdentifierUseBuilder official = IdentifierUseBuilder._(
    valueString: 'official',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Official'.toFhirStringBuilder,
  );

  /// temp
  static IdentifierUseBuilder temp = IdentifierUseBuilder._(
    valueString: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Temp'.toFhirStringBuilder,
  );

  /// secondary
  static IdentifierUseBuilder secondary = IdentifierUseBuilder._(
    valueString: 'secondary',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Secondary'.toFhirStringBuilder,
  );

  /// old
  static IdentifierUseBuilder old = IdentifierUseBuilder._(
    valueString: 'old',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Old'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static IdentifierUseBuilder elementOnly =
      IdentifierUseBuilder._(valueString: '');

  /// List of all enum-like values
  static List<IdentifierUseBuilder> values = [
    usual,
    official,
    temp,
    secondary,
    old,
  ];

  /// Clones the current instance
  @override
  IdentifierUseBuilder clone() => IdentifierUseBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  IdentifierUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return IdentifierUseBuilder._(
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
  IdentifierUseBuilder copyWith({
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
        'Invalid input for IdentifierUse: $newValue',
      );
    }
    return IdentifierUseBuilder._(
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
