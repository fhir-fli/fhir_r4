// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The gender of a person used for administrative purposes.
class AdministrativeGenderBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AdministrativeGenderBuilder._({
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
  factory AdministrativeGenderBuilder(
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
    return AdministrativeGenderBuilder._(
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

  /// Create empty [AdministrativeGenderBuilder] with element only
  factory AdministrativeGenderBuilder.empty() =>
      AdministrativeGenderBuilder._(valueString: '');

  /// Factory constructor to create [AdministrativeGenderBuilder]
  /// from JSON.
  factory AdministrativeGenderBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGenderBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdministrativeGenderBuilder cannot be constructed from JSON.',
      );
    }
    return AdministrativeGenderBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// male
  static AdministrativeGenderBuilder male = AdministrativeGenderBuilder._(
    valueString: 'male',
    system:
        'http://hl7.org/fhir/ValueSet/administrative-gender'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Male'.toFhirStringBuilder,
  );

  /// female
  static AdministrativeGenderBuilder female = AdministrativeGenderBuilder._(
    valueString: 'female',
    system:
        'http://hl7.org/fhir/ValueSet/administrative-gender'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Female'.toFhirStringBuilder,
  );

  /// other
  static AdministrativeGenderBuilder other = AdministrativeGenderBuilder._(
    valueString: 'other',
    system:
        'http://hl7.org/fhir/ValueSet/administrative-gender'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Other'.toFhirStringBuilder,
  );

  /// unknown
  static AdministrativeGenderBuilder unknown = AdministrativeGenderBuilder._(
    valueString: 'unknown',
    system:
        'http://hl7.org/fhir/ValueSet/administrative-gender'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AdministrativeGenderBuilder elementOnly =
      AdministrativeGenderBuilder._(valueString: '');

  /// List of all enum-like values
  static List<AdministrativeGenderBuilder> values = [
    male,
    female,
    other,
    unknown,
  ];

  /// Clones the current instance
  @override
  AdministrativeGenderBuilder clone() => AdministrativeGenderBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AdministrativeGenderBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AdministrativeGenderBuilder._(
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
  AdministrativeGenderBuilder copyWith({
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
        'Invalid input for AdministrativeGender: $newValue',
      );
    }
    return AdministrativeGenderBuilder._(
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
