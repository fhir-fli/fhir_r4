// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'operation_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $OperationDefinitionCopyWith<T>
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
    FhirString? version,
    FhirString? name,
    FhirString? title,
    PublicationStatus? status,
    OperationKind? kind,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirBoolean? affectsState,
    FhirCode? code,
    FhirMarkdown? comment,
    FhirCanonical? base,
    List<FhirCode>? resource,
    FhirBoolean? system,
    FhirBoolean? type,
    FhirBoolean? instance,
    FhirCanonical? inputProfile,
    FhirCanonical? outputProfile,
    List<OperationDefinitionParameter>? parameter,
    List<OperationDefinitionOverload>? overload,
    bool? disallowExtensions,
  });
}

class _$OperationDefinitionCopyWithImpl<T>
    implements $OperationDefinitionCopyWith<T> {
  final OperationDefinition _value;
  final T Function(OperationDefinition) _then;

  _$OperationDefinitionCopyWithImpl(this._value, this._then);

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
    Object? version = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? status = fhirSentinel,
    Object? kind = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? affectsState = fhirSentinel,
    Object? code = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? base = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? system = fhirSentinel,
    Object? type = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? inputProfile = fhirSentinel,
    Object? outputProfile = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? overload = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OperationDefinition(
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
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        name: name as FhirString? ?? _value.name,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        status: status as PublicationStatus? ?? _value.status,
        kind: kind as OperationKind? ?? _value.kind,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
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
        affectsState: identical(affectsState, fhirSentinel)
            ? _value.affectsState
            : affectsState as FhirBoolean?,
        code: code as FhirCode? ?? _value.code,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirMarkdown?,
        base: identical(base, fhirSentinel)
            ? _value.base
            : base as FhirCanonical?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as List<FhirCode>?,
        system: system as FhirBoolean? ?? _value.system,
        type: type as FhirBoolean? ?? _value.type,
        instance: instance as FhirBoolean? ?? _value.instance,
        inputProfile: identical(inputProfile, fhirSentinel)
            ? _value.inputProfile
            : inputProfile as FhirCanonical?,
        outputProfile: identical(outputProfile, fhirSentinel)
            ? _value.outputProfile
            : outputProfile as FhirCanonical?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<OperationDefinitionParameter>?,
        overload: identical(overload, fhirSentinel)
            ? _value.overload
            : overload as List<OperationDefinitionOverload>?,
      ),
    );
  }
}

extension OperationDefinitionCopyWithExtension on OperationDefinition {
  $OperationDefinitionCopyWith<OperationDefinition> get copyWith =>
      _$OperationDefinitionCopyWithImpl<OperationDefinition>(
        this,
        (value) => value,
      );
}

abstract class $OperationDefinitionParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    OperationParameterUse? use,
    FhirInteger? min,
    FhirString? max,
    FhirString? documentation,
    FHIRAllTypes? type,
    List<FhirCanonical>? targetProfile,
    SearchParamType? searchType,
    OperationDefinitionBinding? binding,
    List<OperationDefinitionReferencedFrom>? referencedFrom,
    List<OperationDefinitionParameter>? part_,
    bool? disallowExtensions,
  });
}

class _$OperationDefinitionParameterCopyWithImpl<T>
    implements $OperationDefinitionParameterCopyWith<T> {
  final OperationDefinitionParameter _value;
  final T Function(OperationDefinitionParameter) _then;

  _$OperationDefinitionParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? use = fhirSentinel,
    Object? min = fhirSentinel,
    Object? max = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? type = fhirSentinel,
    Object? targetProfile = fhirSentinel,
    Object? searchType = fhirSentinel,
    Object? binding = fhirSentinel,
    Object? referencedFrom = fhirSentinel,
    Object? part_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OperationDefinitionParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: name as FhirCode? ?? _value.name,
        use: use as OperationParameterUse? ?? _value.use,
        min: min as FhirInteger? ?? _value.min,
        max: max as FhirString? ?? _value.max,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirString?,
        type:
            identical(type, fhirSentinel) ? _value.type : type as FHIRAllTypes?,
        targetProfile: identical(targetProfile, fhirSentinel)
            ? _value.targetProfile
            : targetProfile as List<FhirCanonical>?,
        searchType: identical(searchType, fhirSentinel)
            ? _value.searchType
            : searchType as SearchParamType?,
        binding: identical(binding, fhirSentinel)
            ? _value.binding
            : binding as OperationDefinitionBinding?,
        referencedFrom: identical(referencedFrom, fhirSentinel)
            ? _value.referencedFrom
            : referencedFrom as List<OperationDefinitionReferencedFrom>?,
        part_: identical(part_, fhirSentinel)
            ? _value.part_
            : part_ as List<OperationDefinitionParameter>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension OperationDefinitionParameterCopyWithExtension
    on OperationDefinitionParameter {
  $OperationDefinitionParameterCopyWith<OperationDefinitionParameter>
      get copyWith => _$OperationDefinitionParameterCopyWithImpl<
              OperationDefinitionParameter>(
            this,
            (value) => value,
          );
}

abstract class $OperationDefinitionBindingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    BindingStrength? strength,
    FhirCanonical? valueSet,
    bool? disallowExtensions,
  });
}

class _$OperationDefinitionBindingCopyWithImpl<T>
    implements $OperationDefinitionBindingCopyWith<T> {
  final OperationDefinitionBinding _value;
  final T Function(OperationDefinitionBinding) _then;

  _$OperationDefinitionBindingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? strength = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OperationDefinitionBinding(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        strength: strength as BindingStrength? ?? _value.strength,
        valueSet: valueSet as FhirCanonical? ?? _value.valueSet,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension OperationDefinitionBindingCopyWithExtension
    on OperationDefinitionBinding {
  $OperationDefinitionBindingCopyWith<OperationDefinitionBinding>
      get copyWith =>
          _$OperationDefinitionBindingCopyWithImpl<OperationDefinitionBinding>(
            this,
            (value) => value,
          );
}

abstract class $OperationDefinitionReferencedFromCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? source,
    FhirString? sourceId,
    bool? disallowExtensions,
  });
}

class _$OperationDefinitionReferencedFromCopyWithImpl<T>
    implements $OperationDefinitionReferencedFromCopyWith<T> {
  final OperationDefinitionReferencedFrom _value;
  final T Function(OperationDefinitionReferencedFrom) _then;

  _$OperationDefinitionReferencedFromCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? source = fhirSentinel,
    Object? sourceId = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OperationDefinitionReferencedFrom(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        source: source as FhirString? ?? _value.source,
        sourceId: identical(sourceId, fhirSentinel)
            ? _value.sourceId
            : sourceId as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension OperationDefinitionReferencedFromCopyWithExtension
    on OperationDefinitionReferencedFrom {
  $OperationDefinitionReferencedFromCopyWith<OperationDefinitionReferencedFrom>
      get copyWith => _$OperationDefinitionReferencedFromCopyWithImpl<
              OperationDefinitionReferencedFrom>(
            this,
            (value) => value,
          );
}

abstract class $OperationDefinitionOverloadCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirString>? parameterName,
    FhirString? comment,
    bool? disallowExtensions,
  });
}

class _$OperationDefinitionOverloadCopyWithImpl<T>
    implements $OperationDefinitionOverloadCopyWith<T> {
  final OperationDefinitionOverload _value;
  final T Function(OperationDefinitionOverload) _then;

  _$OperationDefinitionOverloadCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? parameterName = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OperationDefinitionOverload(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        parameterName: identical(parameterName, fhirSentinel)
            ? _value.parameterName
            : parameterName as List<FhirString>?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension OperationDefinitionOverloadCopyWithExtension
    on OperationDefinitionOverload {
  $OperationDefinitionOverloadCopyWith<OperationDefinitionOverload>
      get copyWith => _$OperationDefinitionOverloadCopyWithImpl<
              OperationDefinitionOverload>(
            this,
            (value) => value,
          );
}
