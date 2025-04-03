// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The use of an address.
class AddressUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AddressUseBuilder._({
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
  factory AddressUseBuilder(
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
    return AddressUseBuilder._(
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

  /// Create empty [AddressUseBuilder] with element only
  factory AddressUseBuilder.empty() => AddressUseBuilder._(valueString: '');

  /// Factory constructor to create [AddressUseBuilder]
  /// from JSON.
  factory AddressUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressUseBuilder cannot be constructed from JSON.',
      );
    }
    return AddressUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// home
  static AddressUseBuilder home = AddressUseBuilder._(
    valueString: 'home',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Home'.toFhirStringBuilder,
  );

  /// work
  static AddressUseBuilder work = AddressUseBuilder._(
    valueString: 'work',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Work'.toFhirStringBuilder,
  );

  /// temp
  static AddressUseBuilder temp = AddressUseBuilder._(
    valueString: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Temporary'.toFhirStringBuilder,
  );

  /// old
  static AddressUseBuilder old = AddressUseBuilder._(
    valueString: 'old',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Old / Incorrect'.toFhirStringBuilder,
  );

  /// billing
  static AddressUseBuilder billing = AddressUseBuilder._(
    valueString: 'billing',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Billing'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AddressUseBuilder elementOnly = AddressUseBuilder._(valueString: '');

  /// List of all enum-like values
  static List<AddressUseBuilder> values = [
    home,
    work,
    temp,
    old,
    billing,
  ];

  /// Clones the current instance
  @override
  AddressUseBuilder clone() => AddressUseBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AddressUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AddressUseBuilder._(
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
  AddressUseBuilder copyWith({
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
        'Invalid input for AddressUse: $newValue',
      );
    }
    return AddressUseBuilder._(
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
