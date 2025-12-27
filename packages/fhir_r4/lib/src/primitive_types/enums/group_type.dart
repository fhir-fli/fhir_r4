part of '../primitive_types.dart';

/// Actual enum for GroupType
enum GroupTypeEnum {
  /// person
  person,

  /// animal
  animal,

  /// practitioner
  practitioner,

  /// device
  device,

  /// medication
  medication,

  /// substance
  substance,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GroupTypeEnum.person:
        return 'person';
      case GroupTypeEnum.animal:
        return 'animal';
      case GroupTypeEnum.practitioner:
        return 'practitioner';
      case GroupTypeEnum.device:
        return 'device';
      case GroupTypeEnum.medication:
        return 'medication';
      case GroupTypeEnum.substance:
        return 'substance';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GroupTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GroupTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GroupTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'person':
        return GroupTypeEnum.person;
      case 'animal':
        return GroupTypeEnum.animal;
      case 'practitioner':
        return GroupTypeEnum.practitioner;
      case 'device':
        return GroupTypeEnum.device;
      case 'medication':
        return GroupTypeEnum.medication;
      case 'substance':
        return GroupTypeEnum.substance;
    }
    return null;
  }
}

/// Types of resources that are part of group.
class GroupType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GroupType._({
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
  factory GroupType(
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
    final valueEnum = GroupTypeEnum.fromString(valueString);
    return GroupType._(
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

  /// Factory constructor to create [GroupType]
  /// from JSON.
  factory GroupType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GroupTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupType cannot be constructed from JSON.',
      );
    }
    return GroupType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GroupType
  final GroupTypeEnum? valueEnum;

  /// person
  static const GroupType person = GroupType._(
    valueString: 'person',
    valueEnum: GroupTypeEnum.person,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Person',
    ),
  );

  /// animal
  static const GroupType animal = GroupType._(
    valueString: 'animal',
    valueEnum: GroupTypeEnum.animal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Animal',
    ),
  );

  /// practitioner
  static const GroupType practitioner = GroupType._(
    valueString: 'practitioner',
    valueEnum: GroupTypeEnum.practitioner,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Practitioner',
    ),
  );

  /// device
  static const GroupType device = GroupType._(
    valueString: 'device',
    valueEnum: GroupTypeEnum.device,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Device',
    ),
  );

  /// medication
  static const GroupType medication = GroupType._(
    valueString: 'medication',
    valueEnum: GroupTypeEnum.medication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Medication',
    ),
  );

  /// substance
  static const GroupType substance = GroupType._(
    valueString: 'substance',
    valueEnum: GroupTypeEnum.substance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Substance',
    ),
  );

  /// List of all enum-like values
  static final List<GroupType> values = [
    person,
    animal,
    practitioner,
    device,
    medication,
    substance,
  ];

  /// Returns the enum value with an element attached
  GroupType withElement(Element? newElement) {
    return GroupType._(
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
  GroupType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GroupTypeCopyWithImpl<GroupType> get copyWith =>
      GroupTypeCopyWithImpl<GroupType>(
        this,
        (v) => v as GroupType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GroupTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GroupTypeCopyWithImpl(super._value, super._then);

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
      GroupType(
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
