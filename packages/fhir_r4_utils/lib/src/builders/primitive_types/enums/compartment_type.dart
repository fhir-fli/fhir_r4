// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Which type a compartment definition describes.
class CompartmentTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CompartmentTypeBuilder._({
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
  factory CompartmentTypeBuilder(
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
    return CompartmentTypeBuilder._(
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

  /// Create empty [CompartmentTypeBuilder] with element only
  factory CompartmentTypeBuilder.empty() =>
      CompartmentTypeBuilder._(valueString: '');

  /// Factory constructor to create [CompartmentTypeBuilder]
  /// from JSON.
  factory CompartmentTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompartmentTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompartmentTypeBuilder cannot be constructed from JSON.',
      );
    }
    return CompartmentTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// Patient
  static CompartmentTypeBuilder Patient = CompartmentTypeBuilder._(
    valueString: 'Patient',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Patient'.toFhirStringBuilder,
  );

  /// Encounter
  static CompartmentTypeBuilder Encounter = CompartmentTypeBuilder._(
    valueString: 'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Encounter'.toFhirStringBuilder,
  );

  /// RelatedPerson
  static CompartmentTypeBuilder RelatedPerson = CompartmentTypeBuilder._(
    valueString: 'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RelatedPerson'.toFhirStringBuilder,
  );

  /// Practitioner
  static CompartmentTypeBuilder Practitioner = CompartmentTypeBuilder._(
    valueString: 'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Practitioner'.toFhirStringBuilder,
  );

  /// Device
  static CompartmentTypeBuilder Device = CompartmentTypeBuilder._(
    valueString: 'Device',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Device'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CompartmentTypeBuilder elementOnly =
      CompartmentTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<CompartmentTypeBuilder> values = [
    Patient,
    Encounter,
    RelatedPerson,
    Practitioner,
    Device,
  ];

  /// Clones the current instance
  @override
  CompartmentTypeBuilder clone() => CompartmentTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CompartmentTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CompartmentTypeBuilder._(
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
  CompartmentTypeBuilder copyWith({
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
        'Invalid input for CompartmentType: $newValue',
      );
    }
    return CompartmentTypeBuilder._(
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
