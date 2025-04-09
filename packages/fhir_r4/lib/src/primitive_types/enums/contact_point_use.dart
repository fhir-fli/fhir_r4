// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ContactPointUse
enum ContactPointUseEnum {
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
      case ContactPointUseEnum.home:
        return 'home';
      case ContactPointUseEnum.work:
        return 'work';
      case ContactPointUseEnum.temp:
        return 'temp';
      case ContactPointUseEnum.old:
        return 'old';
      case ContactPointUseEnum.mobile:
        return 'mobile';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContactPointUseEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ContactPointUseEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContactPointUseEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'home':
        return ContactPointUseEnum.home;
      case 'work':
        return ContactPointUseEnum.work;
      case 'temp':
        return ContactPointUseEnum.temp;
      case 'old':
        return ContactPointUseEnum.old;
      case 'mobile':
        return ContactPointUseEnum.mobile;
    }
    return null;
  }
}

/// Use of contact point.
class ContactPointUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ContactPointUse._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ContactPointUse(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = ContactPointUseEnum.fromString(valueString);
    return ContactPointUse._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [ContactPointUse]
  /// from JSON.
  factory ContactPointUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ContactPointUseEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointUse._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContactPointUse cannot be constructed from JSON.',
      );
    }
    return ContactPointUse._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ContactPointUse
  final ContactPointUseEnum? valueEnum;

  /// home
  static const ContactPointUse home = ContactPointUse._(
    valueString: 'home',
    valueEnum: ContactPointUseEnum.home,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Home',
    ),
  );

  /// work
  static const ContactPointUse work = ContactPointUse._(
    valueString: 'work',
    valueEnum: ContactPointUseEnum.work,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Work',
    ),
  );

  /// temp
  static const ContactPointUse temp = ContactPointUse._(
    valueString: 'temp',
    valueEnum: ContactPointUseEnum.temp,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Temp',
    ),
  );

  /// old
  static const ContactPointUse old = ContactPointUse._(
    valueString: 'old',
    valueEnum: ContactPointUseEnum.old,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Old',
    ),
  );

  /// mobile
  static const ContactPointUse mobile = ContactPointUse._(
    valueString: 'mobile',
    valueEnum: ContactPointUseEnum.mobile,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Mobile',
    ),
  );

  /// List of all enum-like values
  static final List<ContactPointUse> values = [
    home,
    work,
    temp,
    old,
    mobile,
  ];

  /// Returns the enum value with an element attached
  ContactPointUse withElement(Element? newElement) {
    return ContactPointUse._(
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

  @override
  ContactPointUse clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ContactPointUseCopyWithImpl<ContactPointUse> get copyWith =>
      ContactPointUseCopyWithImpl<ContactPointUse>(
        this,
        (v) => v as ContactPointUse,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ContactPointUseCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ContactPointUseCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      ContactPointUse(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
