// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The use of a human name.
class NameUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NameUseBuilder._({
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
  factory NameUseBuilder(
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
    return NameUseBuilder._(
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

  /// Create empty [NameUseBuilder] with element only
  factory NameUseBuilder.empty() => NameUseBuilder._(valueString: '');

  /// Factory constructor to create [NameUseBuilder]
  /// from JSON.
  factory NameUseBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NameUseBuilder cannot be constructed from JSON.',
      );
    }
    return NameUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// usual
  static NameUseBuilder usual = NameUseBuilder._(
    valueString: 'usual',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Usual'.toFhirStringBuilder,
  );

  /// official
  static NameUseBuilder official = NameUseBuilder._(
    valueString: 'official',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Official'.toFhirStringBuilder,
  );

  /// temp
  static NameUseBuilder temp = NameUseBuilder._(
    valueString: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Temp'.toFhirStringBuilder,
  );

  /// nickname
  static NameUseBuilder nickname = NameUseBuilder._(
    valueString: 'nickname',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Nickname'.toFhirStringBuilder,
  );

  /// anonymous
  static NameUseBuilder anonymous = NameUseBuilder._(
    valueString: 'anonymous',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Anonymous'.toFhirStringBuilder,
  );

  /// old
  static NameUseBuilder old = NameUseBuilder._(
    valueString: 'old',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Old'.toFhirStringBuilder,
  );

  /// maiden
  static NameUseBuilder maiden = NameUseBuilder._(
    valueString: 'maiden',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Name changed for Marriage'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static NameUseBuilder elementOnly = NameUseBuilder._(valueString: '');

  /// List of all enum-like values
  static List<NameUseBuilder> values = [
    usual,
    official,
    temp,
    nickname,
    anonymous,
    old,
    maiden,
  ];

  /// Clones the current instance
  @override
  NameUseBuilder clone() => NameUseBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  NameUseBuilder withElement(ElementBuilder? newElement) {
    return NameUseBuilder._(valueString: valueString, element: newElement);
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
  NameUseBuilder copyWith({
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
      throw ArgumentError('Invalid input for NameUse: $newValue');
    }
    return NameUseBuilder._(
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
