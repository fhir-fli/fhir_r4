part of '../primitive_types.dart';

/// Actual enum for MessageHeaderResponseRequest
enum MessageHeaderResponseRequestEnum {
  /// always
  always,

  /// on-error
  onError,

  /// never
  never,

  /// on-success
  onSuccess,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MessageHeaderResponseRequestEnum.always:
        return 'always';
      case MessageHeaderResponseRequestEnum.onError:
        return 'on-error';
      case MessageHeaderResponseRequestEnum.never:
        return 'never';
      case MessageHeaderResponseRequestEnum.onSuccess:
        return 'on-success';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MessageHeaderResponseRequestEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MessageHeaderResponseRequestEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MessageHeaderResponseRequestEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'always':
        return MessageHeaderResponseRequestEnum.always;
      case 'on-error':
        return MessageHeaderResponseRequestEnum.onError;
      case 'never':
        return MessageHeaderResponseRequestEnum.never;
      case 'on-success':
        return MessageHeaderResponseRequestEnum.onSuccess;
    }
    return null;
  }
}

/// HL7-defined table of codes which identify conditions under which
/// acknowledgments are required to be returned in response to a message.
class MessageHeaderResponseRequest extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MessageHeaderResponseRequest._({
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
  factory MessageHeaderResponseRequest(
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
    final valueEnum = MessageHeaderResponseRequestEnum.fromString(valueString);
    return MessageHeaderResponseRequest._(
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

  /// Factory constructor to create [MessageHeaderResponseRequest]
  /// from JSON.
  factory MessageHeaderResponseRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MessageHeaderResponseRequestEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageHeaderResponseRequest._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageHeaderResponseRequest cannot be constructed from JSON.',
      );
    }
    return MessageHeaderResponseRequest._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MessageHeaderResponseRequest
  final MessageHeaderResponseRequestEnum? valueEnum;

  /// always
  static const MessageHeaderResponseRequest always =
      MessageHeaderResponseRequest._(
    valueString: 'always',
    valueEnum: MessageHeaderResponseRequestEnum.always,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/messageheader-response-request',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Always',
    ),
  );

  /// on_error
  static const MessageHeaderResponseRequest onError =
      MessageHeaderResponseRequest._(
    valueString: 'on-error',
    valueEnum: MessageHeaderResponseRequestEnum.onError,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/messageheader-response-request',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Error/reject conditions only',
    ),
  );

  /// never
  static const MessageHeaderResponseRequest never =
      MessageHeaderResponseRequest._(
    valueString: 'never',
    valueEnum: MessageHeaderResponseRequestEnum.never,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/messageheader-response-request',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Never',
    ),
  );

  /// on_success
  static const MessageHeaderResponseRequest onSuccess =
      MessageHeaderResponseRequest._(
    valueString: 'on-success',
    valueEnum: MessageHeaderResponseRequestEnum.onSuccess,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/messageheader-response-request',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Successful completion only',
    ),
  );

  /// List of all enum-like values
  static final List<MessageHeaderResponseRequest> values = [
    always,
    onError,
    never,
    onSuccess,
  ];

  /// Returns the enum value with an element attached
  MessageHeaderResponseRequest withElement(Element? newElement) {
    return MessageHeaderResponseRequest._(
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
  MessageHeaderResponseRequest clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MessageHeaderResponseRequestCopyWithImpl<MessageHeaderResponseRequest>
      get copyWith => MessageHeaderResponseRequestCopyWithImpl<
              MessageHeaderResponseRequest>(
            this,
            (v) => v as MessageHeaderResponseRequest,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MessageHeaderResponseRequestCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MessageHeaderResponseRequestCopyWithImpl(super._value, super._then);

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
      MessageHeaderResponseRequest(
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
