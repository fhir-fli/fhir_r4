// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The use of an address.
class AddressUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AddressUse._({
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
  factory AddressUse(
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
    return AddressUse._(
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

  /// Create empty [AddressUse] with element only
  factory AddressUse.empty() => AddressUse._(valueString: '');

  /// Factory constructor to create [AddressUse]
  /// from JSON.
  factory AddressUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressUse cannot be constructed from JSON.',
      );
    }
    return AddressUse._(
      valueString: value,
      element: element,
    );
  }

  /// home
  static final AddressUse home = AddressUse._(
    valueString: 'home',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Home'.toFhirString,
  );

  /// work
  static final AddressUse work = AddressUse._(
    valueString: 'work',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Work'.toFhirString,
  );

  /// temp
  static final AddressUse temp = AddressUse._(
    valueString: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Temporary'.toFhirString,
  );

  /// old
  static final AddressUse old = AddressUse._(
    valueString: 'old',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Old / Incorrect'.toFhirString,
  );

  /// billing
  static final AddressUse billing = AddressUse._(
    valueString: 'billing',
    system: 'http://hl7.org/fhir/ValueSet/address-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Billing'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AddressUse elementOnly = AddressUse._(valueString: '');

  /// List of all enum-like values
  static final List<AddressUse> values = [
    home,
    work,
    temp,
    old,
    billing,
  ];

  /// Clones the current instance
  @override
  AddressUse clone() => AddressUse._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AddressUse withElement(Element? newElement) {
    return AddressUse._(
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
  AddressUse copyWith({
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
        'Invalid input for AddressUse: $newValue',
      );
    }
    return AddressUse._(
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
