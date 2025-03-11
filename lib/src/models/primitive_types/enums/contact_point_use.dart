// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Use of contact point.
class ContactPointUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ContactPointUse._({
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
  factory ContactPointUse(
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
    return ContactPointUse._(
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

  /// Create empty [ContactPointUse] with element only
  factory ContactPointUse.empty() => ContactPointUse._(validatedValue: '');

  /// Factory constructor to create [ContactPointUse] from JSON.
  factory ContactPointUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('ContactPointUse cannot be constructed from JSON.');
    }
    return ContactPointUse._(validatedValue: value, element: element);
  }

  /// home
  static final ContactPointUse home = ContactPointUse._(
    validatedValue: 'home',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Home'.toFhirString,
  );

  /// work
  static final ContactPointUse work = ContactPointUse._(
    validatedValue: 'work',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Work'.toFhirString,
  );

  /// temp
  static final ContactPointUse temp = ContactPointUse._(
    validatedValue: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Temp'.toFhirString,
  );

  /// old
  static final ContactPointUse old = ContactPointUse._(
    validatedValue: 'old',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Old'.toFhirString,
  );

  /// mobile
  static final ContactPointUse mobile = ContactPointUse._(
    validatedValue: 'mobile',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mobile'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ContactPointUse elementOnly =
      ContactPointUse._(validatedValue: '');

  /// List of all enum-like values
  static final List<ContactPointUse> values = [
    home,
    work,
    temp,
    old,
    mobile,
  ];

  /// Clones the current instance
  @override
  ContactPointUse clone() => ContactPointUse._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContactPointUse withElement(Element? newElement) {
    return ContactPointUse._(validatedValue: value, element: newElement);
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
  ContactPointUse copyWith({
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
    return ContactPointUse._(
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
