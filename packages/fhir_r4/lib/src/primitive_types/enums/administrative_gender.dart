// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The gender of a person used for administrative purposes.
class AdministrativeGender extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AdministrativeGender._({
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
  factory AdministrativeGender(
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
    return AdministrativeGender._(
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

  /// Create empty [AdministrativeGender] with element only
  factory AdministrativeGender.empty() =>
      AdministrativeGender._(valueString: '');

  /// Factory constructor to create [AdministrativeGender]
  /// from JSON.
  factory AdministrativeGender.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGender.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdministrativeGender cannot be constructed from JSON.',
      );
    }
    return AdministrativeGender._(
      valueString: value,
      element: element,
    );
  }

  /// male
  static final AdministrativeGender male = AdministrativeGender._(
    valueString: 'male',
    system: 'http://hl7.org/fhir/ValueSet/administrative-gender'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Male'.toFhirString,
  );

  /// female
  static final AdministrativeGender female = AdministrativeGender._(
    valueString: 'female',
    system: 'http://hl7.org/fhir/ValueSet/administrative-gender'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Female'.toFhirString,
  );

  /// other
  static final AdministrativeGender other = AdministrativeGender._(
    valueString: 'other',
    system: 'http://hl7.org/fhir/ValueSet/administrative-gender'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Other'.toFhirString,
  );

  /// unknown
  static final AdministrativeGender unknown = AdministrativeGender._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/administrative-gender'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AdministrativeGender elementOnly =
      AdministrativeGender._(valueString: '');

  /// List of all enum-like values
  static final List<AdministrativeGender> values = [
    male,
    female,
    other,
    unknown,
  ];

  /// Clones the current instance
  @override
  AdministrativeGender clone() => AdministrativeGender._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdministrativeGender withElement(Element? newElement) {
    return AdministrativeGender._(
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
  AdministrativeGender copyWith({
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
        'Invalid input for AdministrativeGender: $newValue',
      );
    }
    return AdministrativeGender._(
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
