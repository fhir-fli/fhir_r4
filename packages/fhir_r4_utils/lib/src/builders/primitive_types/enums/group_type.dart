// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Types of resources that are part of group.
class GroupTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GroupTypeBuilder._({
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
  factory GroupTypeBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return GroupTypeBuilder._(
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

  /// Create empty [GroupTypeBuilder] with element only
  factory GroupTypeBuilder.empty() => GroupTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [GroupTypeBuilder] from JSON.
  factory GroupTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupTypeBuilder cannot be constructed from JSON.',
      );
    }
    return GroupTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// person
  static GroupTypeBuilder person = GroupTypeBuilder._(
    validatedValue: 'person',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Person'.toFhirStringBuilder,
  );

  /// animal
  static GroupTypeBuilder animal = GroupTypeBuilder._(
    validatedValue: 'animal',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Animal'.toFhirStringBuilder,
  );

  /// practitioner
  static GroupTypeBuilder practitioner = GroupTypeBuilder._(
    validatedValue: 'practitioner',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Practitioner'.toFhirStringBuilder,
  );

  /// device
  static GroupTypeBuilder device = GroupTypeBuilder._(
    validatedValue: 'device',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Device'.toFhirStringBuilder,
  );

  /// medication
  static GroupTypeBuilder medication = GroupTypeBuilder._(
    validatedValue: 'medication',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Medication'.toFhirStringBuilder,
  );

  /// substance
  static GroupTypeBuilder substance = GroupTypeBuilder._(
    validatedValue: 'substance',
    system: 'http://hl7.org/fhir/ValueSet/group-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Substance'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static GroupTypeBuilder elementOnly = GroupTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<GroupTypeBuilder> values = [
    person,
    animal,
    practitioner,
    device,
    medication,
    substance,
  ];

  /// Clones the current instance
  @override
  GroupTypeBuilder clone() => GroupTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  GroupTypeBuilder withElement(ElementBuilder? newElement) {
    return GroupTypeBuilder._(validatedValue: value, element: newElement);
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
  GroupTypeBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GroupTypeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
