// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ContactPointUse
enum ContactPointUseBuilderEnum {
  /// home
  home,

  /// work
  work,

  /// temp
  temp,

  /// old
  old,

  /// mobile
  mobile,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ContactPointUseBuilderEnum.home:
        return 'home';
      case ContactPointUseBuilderEnum.work:
        return 'work';
      case ContactPointUseBuilderEnum.temp:
        return 'temp';
      case ContactPointUseBuilderEnum.old:
        return 'old';
      case ContactPointUseBuilderEnum.mobile:
        return 'mobile';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContactPointUseBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ContactPointUseBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContactPointUseBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'home':
        return ContactPointUseBuilderEnum.home;
      case 'work':
        return ContactPointUseBuilderEnum.work;
      case 'temp':
        return ContactPointUseBuilderEnum.temp;
      case 'old':
        return ContactPointUseBuilderEnum.old;
      case 'mobile':
        return ContactPointUseBuilderEnum.mobile;
    }
    return null;
  }
}

/// Use of contact point.
class ContactPointUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContactPointUseBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = ContactPointUseBuilderEnum.fromString(
      valueString,
    );
    return ContactPointUseBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [ContactPointUseBuilder]
  /// with element only
  factory ContactPointUseBuilder.empty() =>
      ContactPointUseBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ContactPointUseBuilder] from JSON.
  factory ContactPointUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointUseBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for ContactPointUseBuilder
  final ContactPointUseBuilderEnum? valueEnum;

  /// home
  static ContactPointUseBuilder home = ContactPointUseBuilder._(
    valueString: 'home',
    valueEnum: ContactPointUseBuilderEnum.home,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Home',
    ),
  );

  /// work
  static ContactPointUseBuilder work = ContactPointUseBuilder._(
    valueString: 'work',
    valueEnum: ContactPointUseBuilderEnum.work,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Work',
    ),
  );

  /// temp
  static ContactPointUseBuilder temp = ContactPointUseBuilder._(
    valueString: 'temp',
    valueEnum: ContactPointUseBuilderEnum.temp,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Temp',
    ),
  );

  /// old
  static ContactPointUseBuilder old = ContactPointUseBuilder._(
    valueString: 'old',
    valueEnum: ContactPointUseBuilderEnum.old,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Old',
    ),
  );

  /// mobile
  static ContactPointUseBuilder mobile = ContactPointUseBuilder._(
    valueString: 'mobile',
    valueEnum: ContactPointUseBuilderEnum.mobile,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Mobile',
    ),
  );

  /// For instances where an Element is present but not value
  static ContactPointUseBuilder elementOnly = ContactPointUseBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ContactPointUseBuilder> values = [
    home,
    work,
    temp,
    old,
    mobile,
  ];

  /// Returns the enum value with an element attached
  ContactPointUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ContactPointUseBuilder._(
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
}
