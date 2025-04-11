// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'structure_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $StructureDefinitionCopyWith<T>
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
    List<Coding>? keyword,
    FHIRVersion? fhirVersion,
    List<StructureDefinitionMapping>? mapping,
    StructureDefinitionKind? kind,
    FhirBoolean? abstract_,
    List<StructureDefinitionContext>? context,
    List<FhirString>? contextInvariant,
    FhirUri? type,
    FhirCanonical? baseDefinition,
    TypeDerivationRule? derivation,
    StructureDefinitionSnapshot? snapshot,
    StructureDefinitionDifferential? differential,
    bool? disallowExtensions,
  });
}

class _$StructureDefinitionCopyWithImpl<T>
    implements $StructureDefinitionCopyWith<T> {
  final StructureDefinition _value;
  final T Function(StructureDefinition) _then;

  _$StructureDefinitionCopyWithImpl(this._value, this._then);

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
    Object? keyword = fhirSentinel,
    Object? fhirVersion = fhirSentinel,
    Object? mapping = fhirSentinel,
    Object? kind = fhirSentinel,
    Object? abstract_ = fhirSentinel,
    Object? context = fhirSentinel,
    Object? contextInvariant = fhirSentinel,
    Object? type = fhirSentinel,
    Object? baseDefinition = fhirSentinel,
    Object? derivation = fhirSentinel,
    Object? snapshot = fhirSentinel,
    Object? differential = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureDefinition(
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
        url: identical(url, fhirSentinel)
            ? _value.url
            : (url as FhirUri?) ?? _value.url,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
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
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        keyword: identical(keyword, fhirSentinel)
            ? _value.keyword
            : keyword as List<Coding>?,
        fhirVersion: identical(fhirVersion, fhirSentinel)
            ? _value.fhirVersion
            : fhirVersion as FHIRVersion?,
        mapping: identical(mapping, fhirSentinel)
            ? _value.mapping
            : mapping as List<StructureDefinitionMapping>?,
        kind: identical(kind, fhirSentinel)
            ? _value.kind
            : (kind as StructureDefinitionKind?) ?? _value.kind,
        abstract_: identical(abstract_, fhirSentinel)
            ? _value.abstract_
            : (abstract_ as FhirBoolean?) ?? _value.abstract_,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as List<StructureDefinitionContext>?,
        contextInvariant: identical(contextInvariant, fhirSentinel)
            ? _value.contextInvariant
            : contextInvariant as List<FhirString>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as FhirUri?) ?? _value.type,
        baseDefinition: identical(baseDefinition, fhirSentinel)
            ? _value.baseDefinition
            : baseDefinition as FhirCanonical?,
        derivation: identical(derivation, fhirSentinel)
            ? _value.derivation
            : derivation as TypeDerivationRule?,
        snapshot: identical(snapshot, fhirSentinel)
            ? _value.snapshot
            : snapshot as StructureDefinitionSnapshot?,
        differential: identical(differential, fhirSentinel)
            ? _value.differential
            : differential as StructureDefinitionDifferential?,
      ),
    );
  }
}

extension StructureDefinitionCopyWithExtension on StructureDefinition {
  $StructureDefinitionCopyWith<StructureDefinition> get copyWith =>
      _$StructureDefinitionCopyWithImpl<StructureDefinition>(
        this,
        (value) => value,
      );
}

abstract class $StructureDefinitionMappingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? identity,
    FhirUri? uri,
    FhirString? name,
    FhirString? comment,
    bool? disallowExtensions,
  });
}

class _$StructureDefinitionMappingCopyWithImpl<T>
    implements $StructureDefinitionMappingCopyWith<T> {
  final StructureDefinitionMapping _value;
  final T Function(StructureDefinitionMapping) _then;

  _$StructureDefinitionMappingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identity = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? name = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureDefinitionMapping(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identity: identical(identity, fhirSentinel)
            ? _value.identity
            : (identity as FhirId?) ?? _value.identity,
        uri: identical(uri, fhirSentinel) ? _value.uri : uri as FhirUri?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
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

extension StructureDefinitionMappingCopyWithExtension
    on StructureDefinitionMapping {
  $StructureDefinitionMappingCopyWith<StructureDefinitionMapping>
      get copyWith =>
          _$StructureDefinitionMappingCopyWithImpl<StructureDefinitionMapping>(
            this,
            (value) => value,
          );
}

abstract class $StructureDefinitionContextCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ExtensionContextType? type,
    FhirString? expression,
    bool? disallowExtensions,
  });
}

class _$StructureDefinitionContextCopyWithImpl<T>
    implements $StructureDefinitionContextCopyWith<T> {
  final StructureDefinitionContext _value;
  final T Function(StructureDefinitionContext) _then;

  _$StructureDefinitionContextCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureDefinitionContext(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ExtensionContextType?) ?? _value.type,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : (expression as FhirString?) ?? _value.expression,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureDefinitionContextCopyWithExtension
    on StructureDefinitionContext {
  $StructureDefinitionContextCopyWith<StructureDefinitionContext>
      get copyWith =>
          _$StructureDefinitionContextCopyWithImpl<StructureDefinitionContext>(
            this,
            (value) => value,
          );
}

abstract class $StructureDefinitionSnapshotCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ElementDefinition>? element,
    bool? disallowExtensions,
  });
}

class _$StructureDefinitionSnapshotCopyWithImpl<T>
    implements $StructureDefinitionSnapshotCopyWith<T> {
  final StructureDefinitionSnapshot _value;
  final T Function(StructureDefinitionSnapshot) _then;

  _$StructureDefinitionSnapshotCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? element = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureDefinitionSnapshot(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : (element as List<ElementDefinition>?) ?? _value.element,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureDefinitionSnapshotCopyWithExtension
    on StructureDefinitionSnapshot {
  $StructureDefinitionSnapshotCopyWith<StructureDefinitionSnapshot>
      get copyWith => _$StructureDefinitionSnapshotCopyWithImpl<
              StructureDefinitionSnapshot>(
            this,
            (value) => value,
          );
}

abstract class $StructureDefinitionDifferentialCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ElementDefinition>? element,
    bool? disallowExtensions,
  });
}

class _$StructureDefinitionDifferentialCopyWithImpl<T>
    implements $StructureDefinitionDifferentialCopyWith<T> {
  final StructureDefinitionDifferential _value;
  final T Function(StructureDefinitionDifferential) _then;

  _$StructureDefinitionDifferentialCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? element = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      StructureDefinitionDifferential(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : (element as List<ElementDefinition>?) ?? _value.element,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension StructureDefinitionDifferentialCopyWithExtension
    on StructureDefinitionDifferential {
  $StructureDefinitionDifferentialCopyWith<StructureDefinitionDifferential>
      get copyWith => _$StructureDefinitionDifferentialCopyWithImpl<
              StructureDefinitionDifferential>(
            this,
            (value) => value,
          );
}
