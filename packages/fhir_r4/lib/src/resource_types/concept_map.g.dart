// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'concept_map.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ConceptMapCopyWith<T> extends $CanonicalResourceCopyWith<T> {
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
    Identifier? identifier,
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
    FhirUri? sourceX,
    FhirUri? targetX,
    List<ConceptMapGroup>? group,
    bool? disallowExtensions,
  });
}

class _$ConceptMapCopyWithImpl<T> implements $ConceptMapCopyWith<T> {
  final ConceptMap _value;
  final T Function(ConceptMap) _then;

  _$ConceptMapCopyWithImpl(this._value, this._then);

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
    Object? sourceX = fhirSentinel,
    Object? targetX = fhirSentinel,
    Object? group = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMap(
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
            : identifier as Identifier?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
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
        sourceX: identical(sourceX, fhirSentinel)
            ? _value.sourceX
            : sourceX as FhirUri?,
        targetX: identical(targetX, fhirSentinel)
            ? _value.targetX
            : targetX as FhirUri?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as List<ConceptMapGroup>?,
      ),
    );
  }
}

extension ConceptMapCopyWithExtension on ConceptMap {
  $ConceptMapCopyWith<ConceptMap> get copyWith =>
      _$ConceptMapCopyWithImpl<ConceptMap>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapGroupCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? source,
    FhirString? sourceVersion,
    FhirUri? target,
    FhirString? targetVersion,
    List<ConceptMapElement>? element,
    ConceptMapUnmapped? unmapped,
    bool? disallowExtensions,
  });
}

class _$ConceptMapGroupCopyWithImpl<T> implements $ConceptMapGroupCopyWith<T> {
  final ConceptMapGroup _value;
  final T Function(ConceptMapGroup) _then;

  _$ConceptMapGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? source = fhirSentinel,
    Object? sourceVersion = fhirSentinel,
    Object? target = fhirSentinel,
    Object? targetVersion = fhirSentinel,
    Object? element = fhirSentinel,
    Object? unmapped = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapGroup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as FhirUri?,
        sourceVersion: identical(sourceVersion, fhirSentinel)
            ? _value.sourceVersion
            : sourceVersion as FhirString?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as FhirUri?,
        targetVersion: identical(targetVersion, fhirSentinel)
            ? _value.targetVersion
            : targetVersion as FhirString?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : (element as List<ConceptMapElement>?) ?? _value.element,
        unmapped: identical(unmapped, fhirSentinel)
            ? _value.unmapped
            : unmapped as ConceptMapUnmapped?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapGroupCopyWithExtension on ConceptMapGroup {
  $ConceptMapGroupCopyWith<ConceptMapGroup> get copyWith =>
      _$ConceptMapGroupCopyWithImpl<ConceptMapGroup>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapElementCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    List<ConceptMapTarget>? target,
    bool? disallowExtensions,
  });
}

class _$ConceptMapElementCopyWithImpl<T>
    implements $ConceptMapElementCopyWith<T> {
  final ConceptMapElement _value;
  final T Function(ConceptMapElement) _then;

  _$ConceptMapElementCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? target = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapElement(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as List<ConceptMapTarget>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapElementCopyWithExtension on ConceptMapElement {
  $ConceptMapElementCopyWith<ConceptMapElement> get copyWith =>
      _$ConceptMapElementCopyWithImpl<ConceptMapElement>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapTargetCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    ConceptMapEquivalence? equivalence,
    FhirString? comment,
    List<ConceptMapDependsOn>? dependsOn,
    List<ConceptMapDependsOn>? product,
    bool? disallowExtensions,
  });
}

class _$ConceptMapTargetCopyWithImpl<T>
    implements $ConceptMapTargetCopyWith<T> {
  final ConceptMapTarget _value;
  final T Function(ConceptMapTarget) _then;

  _$ConceptMapTargetCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? equivalence = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? dependsOn = fhirSentinel,
    Object? product = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapTarget(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        equivalence: identical(equivalence, fhirSentinel)
            ? _value.equivalence
            : (equivalence as ConceptMapEquivalence?) ?? _value.equivalence,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        dependsOn: identical(dependsOn, fhirSentinel)
            ? _value.dependsOn
            : dependsOn as List<ConceptMapDependsOn>?,
        product: identical(product, fhirSentinel)
            ? _value.product
            : product as List<ConceptMapDependsOn>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapTargetCopyWithExtension on ConceptMapTarget {
  $ConceptMapTargetCopyWith<ConceptMapTarget> get copyWith =>
      _$ConceptMapTargetCopyWithImpl<ConceptMapTarget>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapDependsOnCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? property,
    FhirCanonical? system,
    FhirString? value,
    FhirString? display,
    bool? disallowExtensions,
  });
}

class _$ConceptMapDependsOnCopyWithImpl<T>
    implements $ConceptMapDependsOnCopyWith<T> {
  final ConceptMapDependsOn _value;
  final T Function(ConceptMapDependsOn) _then;

  _$ConceptMapDependsOnCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? property = fhirSentinel,
    Object? system = fhirSentinel,
    Object? value = fhirSentinel,
    Object? display = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapDependsOn(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : (property as FhirUri?) ?? _value.property,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as FhirCanonical?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapDependsOnCopyWithExtension on ConceptMapDependsOn {
  $ConceptMapDependsOnCopyWith<ConceptMapDependsOn> get copyWith =>
      _$ConceptMapDependsOnCopyWithImpl<ConceptMapDependsOn>(
        this,
        (value) => value,
      );
}

abstract class $ConceptMapUnmappedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConceptMapGroupUnmappedMode? mode,
    FhirCode? code,
    FhirString? display,
    FhirCanonical? url,
    bool? disallowExtensions,
  });
}

class _$ConceptMapUnmappedCopyWithImpl<T>
    implements $ConceptMapUnmappedCopyWith<T> {
  final ConceptMapUnmapped _value;
  final T Function(ConceptMapUnmapped) _then;

  _$ConceptMapUnmappedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? url = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConceptMapUnmapped(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : (mode as ConceptMapGroupUnmappedMode?) ?? _value.mode,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConceptMapUnmappedCopyWithExtension on ConceptMapUnmapped {
  $ConceptMapUnmappedCopyWith<ConceptMapUnmapped> get copyWith =>
      _$ConceptMapUnmappedCopyWithImpl<ConceptMapUnmapped>(
        this,
        (value) => value,
      );
}
