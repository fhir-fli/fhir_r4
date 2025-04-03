// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The impact of the content of a message.
class MessageSignificanceCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MessageSignificanceCategoryBuilder._({
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
  factory MessageSignificanceCategoryBuilder(
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
    return MessageSignificanceCategoryBuilder._(
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

  /// Create empty [MessageSignificanceCategoryBuilder] with element only
  factory MessageSignificanceCategoryBuilder.empty() =>
      MessageSignificanceCategoryBuilder._(valueString: '');

  /// Factory constructor to create [MessageSignificanceCategoryBuilder]
  /// from JSON.
  factory MessageSignificanceCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategoryBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageSignificanceCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return MessageSignificanceCategoryBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// consequence
  static MessageSignificanceCategoryBuilder consequence =
      MessageSignificanceCategoryBuilder._(
    valueString: 'consequence',
    system: 'http://hl7.org/fhir/ValueSet/message-significance-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Consequence'.toFhirStringBuilder,
  );

  /// currency
  static MessageSignificanceCategoryBuilder currency =
      MessageSignificanceCategoryBuilder._(
    valueString: 'currency',
    system: 'http://hl7.org/fhir/ValueSet/message-significance-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Currency'.toFhirStringBuilder,
  );

  /// notification
  static MessageSignificanceCategoryBuilder notification =
      MessageSignificanceCategoryBuilder._(
    valueString: 'notification',
    system: 'http://hl7.org/fhir/ValueSet/message-significance-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Notification'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MessageSignificanceCategoryBuilder elementOnly =
      MessageSignificanceCategoryBuilder._(valueString: '');

  /// List of all enum-like values
  static List<MessageSignificanceCategoryBuilder> values = [
    consequence,
    currency,
    notification,
  ];

  /// Clones the current instance
  @override
  MessageSignificanceCategoryBuilder clone() =>
      MessageSignificanceCategoryBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MessageSignificanceCategoryBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MessageSignificanceCategoryBuilder._(
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
  MessageSignificanceCategoryBuilder copyWith({
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
        'Invalid input for MessageSignificanceCategory: $newValue',
      );
    }
    return MessageSignificanceCategoryBuilder._(
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
