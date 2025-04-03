// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The use of a human name.
class NameUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  NameUse._({
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
  factory NameUse(
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
    return NameUse._(
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

  /// Create empty [NameUse] with element only
  factory NameUse.empty() => NameUse._(valueString: '');

  /// Factory constructor to create [NameUse]
  /// from JSON.
  factory NameUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NameUse cannot be constructed from JSON.',
      );
    }
    return NameUse._(
      valueString: value,
      element: element,
    );
  }

  /// usual
  static final NameUse usual = NameUse._(
    valueString: 'usual',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Usual'.toFhirString,
  );

  /// official
  static final NameUse official = NameUse._(
    valueString: 'official',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Official'.toFhirString,
  );

  /// temp
  static final NameUse temp = NameUse._(
    valueString: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Temp'.toFhirString,
  );

  /// nickname
  static final NameUse nickname = NameUse._(
    valueString: 'nickname',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Nickname'.toFhirString,
  );

  /// anonymous
  static final NameUse anonymous = NameUse._(
    valueString: 'anonymous',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Anonymous'.toFhirString,
  );

  /// old
  static final NameUse old = NameUse._(
    valueString: 'old',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Old'.toFhirString,
  );

  /// maiden
  static final NameUse maiden = NameUse._(
    valueString: 'maiden',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Name changed for Marriage'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final NameUse elementOnly = NameUse._(valueString: '');

  /// List of all enum-like values
  static final List<NameUse> values = [
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
  NameUse clone() => NameUse._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NameUse withElement(Element? newElement) {
    return NameUse._(
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
  NameUse copyWith({
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
        'Invalid input for NameUse: $newValue',
      );
    }
    return NameUse._(
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
