// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'message_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MessageDefinitionCopyWith<T>
    extends $CanonicalResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    List<FhirCanonical>? replaces,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirCanonical? base,
    List<FhirCanonical>? parent,
    EventXMessageDefinition? eventX,
    MessageSignificanceCategory? category,
    List<MessageDefinitionFocus>? focus,
    MessageheaderResponseRequest? responseRequired,
    List<MessageDefinitionAllowedResponse>? allowedResponse,
    List<FhirCanonical>? graph,
    bool? disallowExtensions,
  });
}

class _$MessageDefinitionCopyWithImpl<T>
    implements $MessageDefinitionCopyWith<T> {
  final MessageDefinition _value;
  final T Function(MessageDefinition) _then;

  _$MessageDefinitionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? url = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? version = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? replaces = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? base = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? eventX = fhirSentinel,
    Object? category = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? responseRequired = fhirSentinel,
    Object? allowedResponse = fhirSentinel,
    Object? graph = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MessageDefinition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<FhirCanonical>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date: identical(date, fhirSentinel)
            ? _value.date
            : (date as FhirDateTime?) ?? _value.date,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as List<CodeableConcept>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        base: identical(base, fhirSentinel)
            ? _value.base
            : base as FhirCanonical?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as List<FhirCanonical>?,
        eventX: identical(eventX, fhirSentinel)
            ? _value.eventX
            : (eventX as EventXMessageDefinition?) ?? _value.eventX,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as MessageSignificanceCategory?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<MessageDefinitionFocus>?,
        responseRequired: identical(responseRequired, fhirSentinel)
            ? _value.responseRequired
            : responseRequired as MessageheaderResponseRequest?,
        allowedResponse: identical(allowedResponse, fhirSentinel)
            ? _value.allowedResponse
            : allowedResponse as List<MessageDefinitionAllowedResponse>?,
        graph: identical(graph, fhirSentinel)
            ? _value.graph
            : graph as List<FhirCanonical>?,
      ),
    );
  }
}

extension MessageDefinitionCopyWithExtension on MessageDefinition {
  $MessageDefinitionCopyWith<MessageDefinition> get copyWith =>
      _$MessageDefinitionCopyWithImpl<MessageDefinition>(
        this,
        (value) => value,
      );
}

abstract class $MessageDefinitionFocusCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirCanonical? profile,
    FhirUnsignedInt? min,
    FhirString? max,
    bool? disallowExtensions,
  });
}

class _$MessageDefinitionFocusCopyWithImpl<T>
    implements $MessageDefinitionFocusCopyWith<T> {
  final MessageDefinitionFocus _value;
  final T Function(MessageDefinitionFocus) _then;

  _$MessageDefinitionFocusCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? min = fhirSentinel,
    Object? max = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MessageDefinitionFocus(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirCode?) ?? _value.code,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as FhirCanonical?,
        min: identical(min, fhirSentinel)
            ? _value.min
            : (min as FhirUnsignedInt?) ?? _value.min,
        max: identical(max, fhirSentinel) ? _value.max : max as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MessageDefinitionFocusCopyWithExtension on MessageDefinitionFocus {
  $MessageDefinitionFocusCopyWith<MessageDefinitionFocus> get copyWith =>
      _$MessageDefinitionFocusCopyWithImpl<MessageDefinitionFocus>(
        this,
        (value) => value,
      );
}

abstract class $MessageDefinitionAllowedResponseCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? message,
    FhirMarkdown? situation,
    bool? disallowExtensions,
  });
}

class _$MessageDefinitionAllowedResponseCopyWithImpl<T>
    implements $MessageDefinitionAllowedResponseCopyWith<T> {
  final MessageDefinitionAllowedResponse _value;
  final T Function(MessageDefinitionAllowedResponse) _then;

  _$MessageDefinitionAllowedResponseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? message = fhirSentinel,
    Object? situation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MessageDefinitionAllowedResponse(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        message: identical(message, fhirSentinel)
            ? _value.message
            : (message as FhirCanonical?) ?? _value.message,
        situation: identical(situation, fhirSentinel)
            ? _value.situation
            : situation as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MessageDefinitionAllowedResponseCopyWithExtension
    on MessageDefinitionAllowedResponse {
  $MessageDefinitionAllowedResponseCopyWith<MessageDefinitionAllowedResponse>
      get copyWith => _$MessageDefinitionAllowedResponseCopyWithImpl<
              MessageDefinitionAllowedResponse>(
            this,
            (value) => value,
          );
}
