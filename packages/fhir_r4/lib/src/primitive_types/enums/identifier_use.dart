// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the purpose for this identifier, if known .
class IdentifierUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  IdentifierUse._({
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
  factory IdentifierUse(
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
    return IdentifierUse._(
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

  /// Create empty [IdentifierUse] with element only
  factory IdentifierUse.empty() => IdentifierUse._(valueString: '');

  /// Factory constructor to create [IdentifierUse]
  /// from JSON.
  factory IdentifierUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentifierUse cannot be constructed from JSON.',
      );
    }
    return IdentifierUse._(
      valueString: value,
      element: element,
    );
  }

  /// usual
  static final IdentifierUse usual = IdentifierUse._(
    valueString: 'usual',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Usual'.toFhirString,
  );

  /// official
  static final IdentifierUse official = IdentifierUse._(
    valueString: 'official',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Official'.toFhirString,
  );

  /// temp
  static final IdentifierUse temp = IdentifierUse._(
    valueString: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Temp'.toFhirString,
  );

  /// secondary
  static final IdentifierUse secondary = IdentifierUse._(
    valueString: 'secondary',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Secondary'.toFhirString,
  );

  /// old
  static final IdentifierUse old = IdentifierUse._(
    valueString: 'old',
    system: 'http://hl7.org/fhir/ValueSet/identifier-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Old'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final IdentifierUse elementOnly = IdentifierUse._(valueString: '');

  /// List of all enum-like values
  static final List<IdentifierUse> values = [
    usual,
    official,
    temp,
    secondary,
    old,
  ];

  /// Clones the current instance
  @override
  IdentifierUse clone() => IdentifierUse._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IdentifierUse withElement(Element? newElement) {
    return IdentifierUse._(
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
  IdentifierUse copyWith({
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
        'Invalid input for IdentifierUse: $newValue',
      );
    }
    return IdentifierUse._(
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
