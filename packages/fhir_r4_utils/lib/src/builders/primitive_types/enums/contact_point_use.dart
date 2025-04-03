// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Use of contact point.
class ContactPointUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContactPointUseBuilder._({
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
  factory ContactPointUseBuilder(
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
    return ContactPointUseBuilder._(
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

  /// Create empty [ContactPointUseBuilder] with element only
  factory ContactPointUseBuilder.empty() =>
      ContactPointUseBuilder._(valueString: '');

  /// Factory constructor to create [ContactPointUseBuilder]
  /// from JSON.
  factory ContactPointUseBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointUseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContactPointUseBuilder cannot be constructed from JSON.',
      );
    }
    return ContactPointUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// home
  static ContactPointUseBuilder home = ContactPointUseBuilder._(
    valueString: 'home',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Home'.toFhirStringBuilder,
  );

  /// work
  static ContactPointUseBuilder work = ContactPointUseBuilder._(
    valueString: 'work',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Work'.toFhirStringBuilder,
  );

  /// temp
  static ContactPointUseBuilder temp = ContactPointUseBuilder._(
    valueString: 'temp',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Temp'.toFhirStringBuilder,
  );

  /// old
  static ContactPointUseBuilder old = ContactPointUseBuilder._(
    valueString: 'old',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Old'.toFhirStringBuilder,
  );

  /// mobile
  static ContactPointUseBuilder mobile = ContactPointUseBuilder._(
    valueString: 'mobile',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-use'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mobile'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ContactPointUseBuilder elementOnly =
      ContactPointUseBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ContactPointUseBuilder> values = [
    home,
    work,
    temp,
    old,
    mobile,
  ];

  /// Clones the current instance
  @override
  ContactPointUseBuilder clone() => ContactPointUseBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ContactPointUseBuilder withElement(ElementBuilder? newElement) {
    return ContactPointUseBuilder._(
        valueString: valueString, element: newElement,);
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
  ContactPointUseBuilder copyWith({
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
      throw ArgumentError('Invalid input for ContactPointUse: $newValue');
    }
    return ContactPointUseBuilder._(
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
