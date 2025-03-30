// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// FHIR search modifiers allowed for use in Subscriptions and
/// SubscriptionTopics.
class SubscriptionSearchModifierBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionSearchModifierBuilder._({
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
  factory SubscriptionSearchModifierBuilder(
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
    return SubscriptionSearchModifierBuilder._(
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

  /// Create empty [SubscriptionSearchModifierBuilder] with element only
  factory SubscriptionSearchModifierBuilder.empty() =>
      SubscriptionSearchModifierBuilder._(validatedValue: '');

  /// Factory constructor to create [SubscriptionSearchModifierBuilder]
  /// from JSON.
  factory SubscriptionSearchModifierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifierBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionSearchModifierBuilder cannot be constructed from JSON.',
      );
    }
    return SubscriptionSearchModifierBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// eq
  static SubscriptionSearchModifierBuilder eq =
      SubscriptionSearchModifierBuilder._(
    validatedValue: '=',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '='.toFhirStringBuilder,
  );

  /// ne
  static SubscriptionSearchModifierBuilder ne =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'ne',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Equal'.toFhirStringBuilder,
  );

  /// gt
  static SubscriptionSearchModifierBuilder gt =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'gt',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater Than'.toFhirStringBuilder,
  );

  /// lt
  static SubscriptionSearchModifierBuilder lt =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'lt',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less Than'.toFhirStringBuilder,
  );

  /// ge
  static SubscriptionSearchModifierBuilder ge =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'ge',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater Than or Equal'.toFhirStringBuilder,
  );

  /// le
  static SubscriptionSearchModifierBuilder le =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'le',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less Than or Equal'.toFhirStringBuilder,
  );

  /// sa
  static SubscriptionSearchModifierBuilder sa =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'sa',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Starts After'.toFhirStringBuilder,
  );

  /// eb
  static SubscriptionSearchModifierBuilder eb =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'eb',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ends Before'.toFhirStringBuilder,
  );

  /// ap
  static SubscriptionSearchModifierBuilder ap =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'ap',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Approximately'.toFhirStringBuilder,
  );

  /// above
  static SubscriptionSearchModifierBuilder above =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'above',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Above'.toFhirStringBuilder,
  );

  /// below
  static SubscriptionSearchModifierBuilder below =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'below',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Below'.toFhirStringBuilder,
  );

  /// in_
  static SubscriptionSearchModifierBuilder in_ =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'in',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In'.toFhirStringBuilder,
  );

  /// not_in
  static SubscriptionSearchModifierBuilder not_in =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'not-in',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not In'.toFhirStringBuilder,
  );

  /// of_type
  static SubscriptionSearchModifierBuilder of_type =
      SubscriptionSearchModifierBuilder._(
    validatedValue: 'of-type',
    system: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Of Type'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SubscriptionSearchModifierBuilder elementOnly =
      SubscriptionSearchModifierBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SubscriptionSearchModifierBuilder> values = [
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
    sa,
    eb,
    ap,
    above,
    below,
    in_,
    not_in,
    of_type,
  ];

  /// Clones the current instance
  @override
  SubscriptionSearchModifierBuilder clone() =>
      SubscriptionSearchModifierBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SubscriptionSearchModifierBuilder withElement(ElementBuilder? newElement) {
    return SubscriptionSearchModifierBuilder._(
      validatedValue: value,
      element: newElement,
    );
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
  SubscriptionSearchModifierBuilder copyWith({
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
    return SubscriptionSearchModifierBuilder._(
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
