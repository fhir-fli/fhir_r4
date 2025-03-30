// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
class BundleTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BundleTypeBuilder._({
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
  factory BundleTypeBuilder(
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
    return BundleTypeBuilder._(
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

  /// Create empty [BundleTypeBuilder] with element only
  factory BundleTypeBuilder.empty() => BundleTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [BundleTypeBuilder]
  /// from JSON.
  factory BundleTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BundleTypeBuilder cannot be constructed from JSON.',
      );
    }
    return BundleTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// document
  static BundleTypeBuilder document = BundleTypeBuilder._(
    validatedValue: 'document',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Document'.toFhirStringBuilder,
  );

  /// message
  static BundleTypeBuilder message = BundleTypeBuilder._(
    validatedValue: 'message',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Message'.toFhirStringBuilder,
  );

  /// transaction
  static BundleTypeBuilder transaction = BundleTypeBuilder._(
    validatedValue: 'transaction',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Transaction'.toFhirStringBuilder,
  );

  /// transaction_response
  static BundleTypeBuilder transaction_response = BundleTypeBuilder._(
    validatedValue: 'transaction-response',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Transaction Response'.toFhirStringBuilder,
  );

  /// batch
  static BundleTypeBuilder batch = BundleTypeBuilder._(
    validatedValue: 'batch',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Batch'.toFhirStringBuilder,
  );

  /// batch_response
  static BundleTypeBuilder batch_response = BundleTypeBuilder._(
    validatedValue: 'batch-response',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Batch Response'.toFhirStringBuilder,
  );

  /// history
  static BundleTypeBuilder history = BundleTypeBuilder._(
    validatedValue: 'history',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'History List'.toFhirStringBuilder,
  );

  /// searchset
  static BundleTypeBuilder searchset = BundleTypeBuilder._(
    validatedValue: 'searchset',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Search Results'.toFhirStringBuilder,
  );

  /// collection
  static BundleTypeBuilder collection = BundleTypeBuilder._(
    validatedValue: 'collection',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Collection'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static BundleTypeBuilder elementOnly =
      BundleTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<BundleTypeBuilder> values = [
    document,
    message,
    transaction,
    transaction_response,
    batch,
    batch_response,
    history,
    searchset,
    collection,
  ];

  /// Clones the current instance
  @override
  BundleTypeBuilder clone() => BundleTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  BundleTypeBuilder withElement(ElementBuilder? newElement) {
    return BundleTypeBuilder._(validatedValue: value, element: newElement);
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
  BundleTypeBuilder copyWith({
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
    return BundleTypeBuilder._(
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
