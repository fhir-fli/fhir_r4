// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the administered
/// dose of vaccine.
class ImmunizationStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImmunizationStatusCodesBuilder._({
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
  factory ImmunizationStatusCodesBuilder(
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
    return ImmunizationStatusCodesBuilder._(
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

  /// Create empty [ImmunizationStatusCodesBuilder] with element only
  factory ImmunizationStatusCodesBuilder.empty() =>
      ImmunizationStatusCodesBuilder._(valueString: '');

  /// Factory constructor to create [ImmunizationStatusCodesBuilder]
  /// from JSON.
  factory ImmunizationStatusCodesBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusCodesBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return ImmunizationStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// preparation
  static ImmunizationStatusCodesBuilder preparation =
      ImmunizationStatusCodesBuilder._(
    valueString: 'preparation',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preparation'.toFhirStringBuilder,
  );

  /// in_progress
  static ImmunizationStatusCodesBuilder in_progress =
      ImmunizationStatusCodesBuilder._(
    valueString: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// not_done
  static ImmunizationStatusCodesBuilder not_done =
      ImmunizationStatusCodesBuilder._(
    valueString: 'not-done',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Done'.toFhirStringBuilder,
  );

  /// on_hold
  static ImmunizationStatusCodesBuilder on_hold =
      ImmunizationStatusCodesBuilder._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// stopped
  static ImmunizationStatusCodesBuilder stopped =
      ImmunizationStatusCodesBuilder._(
    valueString: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// completed
  static ImmunizationStatusCodesBuilder completed =
      ImmunizationStatusCodesBuilder._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ImmunizationStatusCodesBuilder entered_in_error =
      ImmunizationStatusCodesBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static ImmunizationStatusCodesBuilder unknown =
      ImmunizationStatusCodesBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/immunization-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ImmunizationStatusCodesBuilder elementOnly =
      ImmunizationStatusCodesBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ImmunizationStatusCodesBuilder> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ImmunizationStatusCodesBuilder clone() => ImmunizationStatusCodesBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ImmunizationStatusCodesBuilder withElement(ElementBuilder? newElement) {
    return ImmunizationStatusCodesBuilder._(
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
  ImmunizationStatusCodesBuilder copyWith({
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
      throw ArgumentError(
          'Invalid input for ImmunizationStatusCodes: $newValue',);
    }
    return ImmunizationStatusCodesBuilder._(
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
