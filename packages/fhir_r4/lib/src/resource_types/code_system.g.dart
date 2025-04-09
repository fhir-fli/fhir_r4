// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'code_system.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CodeSystemCopyWith<T> extends $CanonicalResourceCopyWith<T> {
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
    FhirBoolean? caseSensitive,
    FhirCanonical? valueSet,
    CodeSystemHierarchyMeaning? hierarchyMeaning,
    FhirBoolean? compositional,
    FhirBoolean? versionNeeded,
    CodeSystemContentMode? content,
    FhirCanonical? supplements,
    FhirUnsignedInt? count,
    List<CodeSystemFilter>? filter,
    List<CodeSystemProperty>? property,
    List<CodeSystemConcept>? concept,
    bool? disallowExtensions,
  });
}

class _$CodeSystemCopyWithImpl<T> implements $CodeSystemCopyWith<T> {
  final CodeSystem _value;
  final T Function(CodeSystem) _then;

  _$CodeSystemCopyWithImpl(this._value, this._then);

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
    Object? caseSensitive = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? hierarchyMeaning = fhirSentinel,
    Object? compositional = fhirSentinel,
    Object? versionNeeded = fhirSentinel,
    Object? content = fhirSentinel,
    Object? supplements = fhirSentinel,
    Object? count = fhirSentinel,
    Object? filter = fhirSentinel,
    Object? property = fhirSentinel,
    Object? concept = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CodeSystem(
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
        status: status as PublicationStatus? ?? _value.status,
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
        caseSensitive: identical(caseSensitive, fhirSentinel)
            ? _value.caseSensitive
            : caseSensitive as FhirBoolean?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        hierarchyMeaning: identical(hierarchyMeaning, fhirSentinel)
            ? _value.hierarchyMeaning
            : hierarchyMeaning as CodeSystemHierarchyMeaning?,
        compositional: identical(compositional, fhirSentinel)
            ? _value.compositional
            : compositional as FhirBoolean?,
        versionNeeded: identical(versionNeeded, fhirSentinel)
            ? _value.versionNeeded
            : versionNeeded as FhirBoolean?,
        content: content as CodeSystemContentMode? ?? _value.content,
        supplements: identical(supplements, fhirSentinel)
            ? _value.supplements
            : supplements as FhirCanonical?,
        count: identical(count, fhirSentinel)
            ? _value.count
            : count as FhirUnsignedInt?,
        filter: identical(filter, fhirSentinel)
            ? _value.filter
            : filter as List<CodeSystemFilter>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<CodeSystemProperty>?,
        concept: identical(concept, fhirSentinel)
            ? _value.concept
            : concept as List<CodeSystemConcept>?,
      ),
    );
  }
}

extension CodeSystemCopyWithExtension on CodeSystem {
  $CodeSystemCopyWith<CodeSystem> get copyWith =>
      _$CodeSystemCopyWithImpl<CodeSystem>(
        this,
        (value) => value,
      );
}

abstract class $CodeSystemFilterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? description,
    List<FilterOperator>? operator_,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$CodeSystemFilterCopyWithImpl<T>
    implements $CodeSystemFilterCopyWith<T> {
  final CodeSystemFilter _value;
  final T Function(CodeSystemFilter) _then;

  _$CodeSystemFilterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? operator_ = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CodeSystemFilter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as FhirCode? ?? _value.code,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        operator_: operator_ as List<FilterOperator>? ?? _value.operator_,
        value: value as FhirString? ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CodeSystemFilterCopyWithExtension on CodeSystemFilter {
  $CodeSystemFilterCopyWith<CodeSystemFilter> get copyWith =>
      _$CodeSystemFilterCopyWithImpl<CodeSystemFilter>(
        this,
        (value) => value,
      );
}

abstract class $CodeSystemPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirUri? uri,
    FhirString? description,
    PropertyTypeEnum? type,
    bool? disallowExtensions,
  });
}

class _$CodeSystemPropertyCopyWithImpl<T>
    implements $CodeSystemPropertyCopyWith<T> {
  final CodeSystemProperty _value;
  final T Function(CodeSystemProperty) _then;

  _$CodeSystemPropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? description = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CodeSystemProperty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as FhirCode? ?? _value.code,
        uri: identical(uri, fhirSentinel) ? _value.uri : uri as FhirUri?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        type: type as PropertyTypeEnum? ?? _value.type,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CodeSystemPropertyCopyWithExtension on CodeSystemProperty {
  $CodeSystemPropertyCopyWith<CodeSystemProperty> get copyWith =>
      _$CodeSystemPropertyCopyWithImpl<CodeSystemProperty>(
        this,
        (value) => value,
      );
}

abstract class $CodeSystemConceptCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    FhirString? definition,
    List<CodeSystemDesignation>? designation,
    List<CodeSystemProperty1>? property,
    List<CodeSystemConcept>? concept,
    bool? disallowExtensions,
  });
}

class _$CodeSystemConceptCopyWithImpl<T>
    implements $CodeSystemConceptCopyWith<T> {
  final CodeSystemConcept _value;
  final T Function(CodeSystemConcept) _then;

  _$CodeSystemConceptCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? designation = fhirSentinel,
    Object? property = fhirSentinel,
    Object? concept = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CodeSystemConcept(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as FhirCode? ?? _value.code,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as FhirString?,
        designation: identical(designation, fhirSentinel)
            ? _value.designation
            : designation as List<CodeSystemDesignation>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<CodeSystemProperty1>?,
        concept: identical(concept, fhirSentinel)
            ? _value.concept
            : concept as List<CodeSystemConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CodeSystemConceptCopyWithExtension on CodeSystemConcept {
  $CodeSystemConceptCopyWith<CodeSystemConcept> get copyWith =>
      _$CodeSystemConceptCopyWithImpl<CodeSystemConcept>(
        this,
        (value) => value,
      );
}

abstract class $CodeSystemDesignationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CommonLanguages? language,
    Coding? use,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$CodeSystemDesignationCopyWithImpl<T>
    implements $CodeSystemDesignationCopyWith<T> {
  final CodeSystemDesignation _value;
  final T Function(CodeSystemDesignation) _then;

  _$CodeSystemDesignationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? language = fhirSentinel,
    Object? use = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CodeSystemDesignation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        use: identical(use, fhirSentinel) ? _value.use : use as Coding?,
        value: value as FhirString? ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CodeSystemDesignationCopyWithExtension on CodeSystemDesignation {
  $CodeSystemDesignationCopyWith<CodeSystemDesignation> get copyWith =>
      _$CodeSystemDesignationCopyWithImpl<CodeSystemDesignation>(
        this,
        (value) => value,
      );
}

abstract class $CodeSystemProperty1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirCode? valueX,
    bool? disallowExtensions,
  });
}

class _$CodeSystemProperty1CopyWithImpl<T>
    implements $CodeSystemProperty1CopyWith<T> {
  final CodeSystemProperty1 _value;
  final T Function(CodeSystemProperty1) _then;

  _$CodeSystemProperty1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CodeSystemProperty1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as FhirCode? ?? _value.code,
        valueX: valueX as FhirCode? ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CodeSystemProperty1CopyWithExtension on CodeSystemProperty1 {
  $CodeSystemProperty1CopyWith<CodeSystemProperty1> get copyWith =>
      _$CodeSystemProperty1CopyWithImpl<CodeSystemProperty1>(
        this,
        (value) => value,
      );
}
