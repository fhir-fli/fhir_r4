// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Types of resources that are part of group.
class GroupType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  GroupType._({
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
  factory GroupType(
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
    return GroupType._(
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

  /// Create empty [GroupType] with element only
  factory GroupType.empty() => GroupType._(valueString: '');

  /// Factory constructor to create [GroupType] from JSON.
  factory GroupType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupType cannot be constructed from JSON.',
      );
    }
    return GroupType._(
      valueString: value,
      element: element,
    );
  }

  /// person
  static final GroupType person = GroupType._(
    valueString: 'person',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Person'.toFhirString,
  );

  /// animal
  static final GroupType animal = GroupType._(
    valueString: 'animal',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Animal'.toFhirString,
  );

  /// practitioner
  static final GroupType practitioner = GroupType._(
    valueString: 'practitioner',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Practitioner'.toFhirString,
  );

  /// device
  static final GroupType device = GroupType._(
    valueString: 'device',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Device'.toFhirString,
  );

  /// medication
  static final GroupType medication = GroupType._(
    valueString: 'medication',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Medication'.toFhirString,
  );

  /// substance
  static final GroupType substance = GroupType._(
    valueString: 'substance',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Substance'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final GroupType elementOnly = GroupType._(valueString: '');

  /// List of all enum-like values
  static final List<GroupType> values = [
    person,
    animal,
    practitioner,
    device,
    medication,
    substance,
  ];

  /// Clones the current instance
  @override
  GroupType clone() => GroupType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  GroupType copyWith({
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
      throw ArgumentError('Invalid input for GroupType: $newValue');
    }
    return GroupType._(
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
