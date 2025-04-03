// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of an address (physical / postal).
class AddressType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AddressType._({
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
  factory AddressType(
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
    return AddressType._(
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

  /// Create empty [AddressType] with element only
  factory AddressType.empty() => AddressType._(valueString: '');

  /// Factory constructor to create [AddressType] from JSON.
  factory AddressType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressType cannot be constructed from JSON.',
      );
    }
    return AddressType._(
      valueString: value,
      element: element,
    );
  }

  /// postal
  static final AddressType postal = AddressType._(
    valueString: 'postal',
    system: 'http://hl7.org/fhir/ValueSet/address-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Postal'.toFhirString,
  );

  /// physical
  static final AddressType physical = AddressType._(
    valueString: 'physical',
    system: 'http://hl7.org/fhir/ValueSet/address-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Physical'.toFhirString,
  );

  /// both
  static final AddressType both = AddressType._(
    valueString: 'both',
    system: 'http://hl7.org/fhir/ValueSet/address-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Postal & Physical'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AddressType elementOnly = AddressType._(valueString: '');

  /// List of all enum-like values
  static final List<AddressType> values = [
    postal,
    physical,
    both,
  ];

  /// Clones the current instance
  @override
  AddressType clone() => AddressType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AddressType withElement(Element? newElement) {
    return AddressType._(
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
  AddressType copyWith({
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
      throw ArgumentError('Invalid input for AddressType: $newValue');
    }
    return AddressType._(
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
