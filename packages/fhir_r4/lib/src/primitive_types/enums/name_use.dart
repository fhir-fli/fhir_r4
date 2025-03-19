// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The use of a human name.
class NameUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  NameUse._({
    required super.validatedValue,
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
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return NameUse._(
      validatedValue: validated,
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
  factory NameUse.empty() => NameUse._(validatedValue: '');

  /// Factory constructor to create [NameUse] from JSON.
  factory NameUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('NameUse cannot be constructed from JSON.');
    }
    return NameUse._(validatedValue: value, element: element);
  }

  /// usual
  static final NameUse usual = NameUse._(
    validatedValue: 'usual',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Usual'.toFhirString,
  );

  /// official
  static final NameUse official = NameUse._(
    validatedValue: 'official',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Official'.toFhirString,
  );

  /// temp
  static final NameUse temp = NameUse._(
    validatedValue: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Temp'.toFhirString,
  );

  /// nickname
  static final NameUse nickname = NameUse._(
    validatedValue: 'nickname',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Nickname'.toFhirString,
  );

  /// anonymous
  static final NameUse anonymous = NameUse._(
    validatedValue: 'anonymous',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Anonymous'.toFhirString,
  );

  /// old
  static final NameUse old = NameUse._(
    validatedValue: 'old',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Old'.toFhirString,
  );

  /// maiden
  static final NameUse maiden = NameUse._(
    validatedValue: 'maiden',
    system: 'http://hl7.org/fhir/ValueSet/name-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Name changed for Marriage'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final NameUse elementOnly = NameUse._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NameUse withElement(Element? newElement) {
    return NameUse._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  NameUse copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return NameUse._(
      validatedValue: newValue ?? value,
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
