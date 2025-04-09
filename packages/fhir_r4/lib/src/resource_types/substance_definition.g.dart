// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'substance_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubstanceDefinitionCopyWith<T>
    extends $DomainResourceCopyWith<T> {
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
    List<Identifier>? identifier,
    FhirString? version,
    CodeableConcept? status,
    List<CodeableConcept>? classification,
    CodeableConcept? domain,
    List<CodeableConcept>? grade,
    FhirMarkdown? description,
    List<Reference>? informationSource,
    List<Annotation>? note,
    List<Reference>? manufacturer,
    List<Reference>? supplier,
    List<SubstanceDefinitionMoiety>? moiety,
    List<SubstanceDefinitionProperty>? property,
    List<SubstanceDefinitionMolecularWeight>? molecularWeight,
    SubstanceDefinitionStructure? structure,
    List<SubstanceDefinitionCode>? code,
    List<SubstanceDefinitionName>? name,
    List<SubstanceDefinitionRelationship>? relationship,
    SubstanceDefinitionSourceMaterial? sourceMaterial,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionCopyWithImpl<T>
    implements $SubstanceDefinitionCopyWith<T> {
  final SubstanceDefinition _value;
  final T Function(SubstanceDefinition) _then;

  _$SubstanceDefinitionCopyWithImpl(this._value, this._then);

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
    Object? identifier = fhirSentinel,
    Object? version = fhirSentinel,
    Object? status = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? domain = fhirSentinel,
    Object? grade = fhirSentinel,
    Object? description = fhirSentinel,
    Object? informationSource = fhirSentinel,
    Object? note = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? supplier = fhirSentinel,
    Object? moiety = fhirSentinel,
    Object? property = fhirSentinel,
    Object? molecularWeight = fhirSentinel,
    Object? structure = fhirSentinel,
    Object? code = fhirSentinel,
    Object? name = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? sourceMaterial = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinition(
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
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as List<CodeableConcept>?,
        domain: identical(domain, fhirSentinel)
            ? _value.domain
            : domain as CodeableConcept?,
        grade: identical(grade, fhirSentinel)
            ? _value.grade
            : grade as List<CodeableConcept>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        informationSource: identical(informationSource, fhirSentinel)
            ? _value.informationSource
            : informationSource as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as List<Reference>?,
        supplier: identical(supplier, fhirSentinel)
            ? _value.supplier
            : supplier as List<Reference>?,
        moiety: identical(moiety, fhirSentinel)
            ? _value.moiety
            : moiety as List<SubstanceDefinitionMoiety>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<SubstanceDefinitionProperty>?,
        molecularWeight: identical(molecularWeight, fhirSentinel)
            ? _value.molecularWeight
            : molecularWeight as List<SubstanceDefinitionMolecularWeight>?,
        structure: identical(structure, fhirSentinel)
            ? _value.structure
            : structure as SubstanceDefinitionStructure?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<SubstanceDefinitionCode>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : name as List<SubstanceDefinitionName>?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as List<SubstanceDefinitionRelationship>?,
        sourceMaterial: identical(sourceMaterial, fhirSentinel)
            ? _value.sourceMaterial
            : sourceMaterial as SubstanceDefinitionSourceMaterial?,
      ),
    );
  }
}

extension SubstanceDefinitionCopyWithExtension on SubstanceDefinition {
  $SubstanceDefinitionCopyWith<SubstanceDefinition> get copyWith =>
      _$SubstanceDefinitionCopyWithImpl<SubstanceDefinition>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceDefinitionMoietyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Identifier? identifier,
    FhirString? name,
    CodeableConcept? stereochemistry,
    CodeableConcept? opticalActivity,
    FhirString? molecularFormula,
    Quantity? amountX,
    CodeableConcept? measurementType,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionMoietyCopyWithImpl<T>
    implements $SubstanceDefinitionMoietyCopyWith<T> {
  final SubstanceDefinitionMoiety _value;
  final T Function(SubstanceDefinitionMoiety) _then;

  _$SubstanceDefinitionMoietyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? role = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? name = fhirSentinel,
    Object? stereochemistry = fhirSentinel,
    Object? opticalActivity = fhirSentinel,
    Object? molecularFormula = fhirSentinel,
    Object? amountX = fhirSentinel,
    Object? measurementType = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionMoiety(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        stereochemistry: identical(stereochemistry, fhirSentinel)
            ? _value.stereochemistry
            : stereochemistry as CodeableConcept?,
        opticalActivity: identical(opticalActivity, fhirSentinel)
            ? _value.opticalActivity
            : opticalActivity as CodeableConcept?,
        molecularFormula: identical(molecularFormula, fhirSentinel)
            ? _value.molecularFormula
            : molecularFormula as FhirString?,
        amountX: identical(amountX, fhirSentinel)
            ? _value.amountX
            : amountX as Quantity?,
        measurementType: identical(measurementType, fhirSentinel)
            ? _value.measurementType
            : measurementType as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionMoietyCopyWithExtension
    on SubstanceDefinitionMoiety {
  $SubstanceDefinitionMoietyCopyWith<SubstanceDefinitionMoiety> get copyWith =>
      _$SubstanceDefinitionMoietyCopyWithImpl<SubstanceDefinitionMoiety>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceDefinitionPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionPropertyCopyWithImpl<T>
    implements $SubstanceDefinitionPropertyCopyWith<T> {
  final SubstanceDefinitionProperty _value;
  final T Function(SubstanceDefinitionProperty) _then;

  _$SubstanceDefinitionPropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionProperty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as CodeableConcept? ?? _value.type,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionPropertyCopyWithExtension
    on SubstanceDefinitionProperty {
  $SubstanceDefinitionPropertyCopyWith<SubstanceDefinitionProperty>
      get copyWith => _$SubstanceDefinitionPropertyCopyWithImpl<
              SubstanceDefinitionProperty>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceDefinitionMolecularWeightCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? method,
    CodeableConcept? type,
    Quantity? amount,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionMolecularWeightCopyWithImpl<T>
    implements $SubstanceDefinitionMolecularWeightCopyWith<T> {
  final SubstanceDefinitionMolecularWeight _value;
  final T Function(SubstanceDefinitionMolecularWeight) _then;

  _$SubstanceDefinitionMolecularWeightCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? method = fhirSentinel,
    Object? type = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionMolecularWeight(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        amount: amount as Quantity? ?? _value.amount,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionMolecularWeightCopyWithExtension
    on SubstanceDefinitionMolecularWeight {
  $SubstanceDefinitionMolecularWeightCopyWith<
          SubstanceDefinitionMolecularWeight>
      get copyWith => _$SubstanceDefinitionMolecularWeightCopyWithImpl<
              SubstanceDefinitionMolecularWeight>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceDefinitionStructureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? stereochemistry,
    CodeableConcept? opticalActivity,
    FhirString? molecularFormula,
    FhirString? molecularFormulaByMoiety,
    SubstanceDefinitionMolecularWeight? molecularWeight,
    List<CodeableConcept>? technique,
    List<Reference>? sourceDocument,
    List<SubstanceDefinitionRepresentation>? representation,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionStructureCopyWithImpl<T>
    implements $SubstanceDefinitionStructureCopyWith<T> {
  final SubstanceDefinitionStructure _value;
  final T Function(SubstanceDefinitionStructure) _then;

  _$SubstanceDefinitionStructureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? stereochemistry = fhirSentinel,
    Object? opticalActivity = fhirSentinel,
    Object? molecularFormula = fhirSentinel,
    Object? molecularFormulaByMoiety = fhirSentinel,
    Object? molecularWeight = fhirSentinel,
    Object? technique = fhirSentinel,
    Object? sourceDocument = fhirSentinel,
    Object? representation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionStructure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        stereochemistry: identical(stereochemistry, fhirSentinel)
            ? _value.stereochemistry
            : stereochemistry as CodeableConcept?,
        opticalActivity: identical(opticalActivity, fhirSentinel)
            ? _value.opticalActivity
            : opticalActivity as CodeableConcept?,
        molecularFormula: identical(molecularFormula, fhirSentinel)
            ? _value.molecularFormula
            : molecularFormula as FhirString?,
        molecularFormulaByMoiety:
            identical(molecularFormulaByMoiety, fhirSentinel)
                ? _value.molecularFormulaByMoiety
                : molecularFormulaByMoiety as FhirString?,
        molecularWeight: identical(molecularWeight, fhirSentinel)
            ? _value.molecularWeight
            : molecularWeight as SubstanceDefinitionMolecularWeight?,
        technique: identical(technique, fhirSentinel)
            ? _value.technique
            : technique as List<CodeableConcept>?,
        sourceDocument: identical(sourceDocument, fhirSentinel)
            ? _value.sourceDocument
            : sourceDocument as List<Reference>?,
        representation: identical(representation, fhirSentinel)
            ? _value.representation
            : representation as List<SubstanceDefinitionRepresentation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionStructureCopyWithExtension
    on SubstanceDefinitionStructure {
  $SubstanceDefinitionStructureCopyWith<SubstanceDefinitionStructure>
      get copyWith => _$SubstanceDefinitionStructureCopyWithImpl<
              SubstanceDefinitionStructure>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceDefinitionRepresentationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? representation,
    CodeableConcept? format,
    Reference? document,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionRepresentationCopyWithImpl<T>
    implements $SubstanceDefinitionRepresentationCopyWith<T> {
  final SubstanceDefinitionRepresentation _value;
  final T Function(SubstanceDefinitionRepresentation) _then;

  _$SubstanceDefinitionRepresentationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? representation = fhirSentinel,
    Object? format = fhirSentinel,
    Object? document = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionRepresentation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        representation: identical(representation, fhirSentinel)
            ? _value.representation
            : representation as FhirString?,
        format: identical(format, fhirSentinel)
            ? _value.format
            : format as CodeableConcept?,
        document: identical(document, fhirSentinel)
            ? _value.document
            : document as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionRepresentationCopyWithExtension
    on SubstanceDefinitionRepresentation {
  $SubstanceDefinitionRepresentationCopyWith<SubstanceDefinitionRepresentation>
      get copyWith => _$SubstanceDefinitionRepresentationCopyWithImpl<
              SubstanceDefinitionRepresentation>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceDefinitionCodeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    List<Annotation>? note,
    List<Reference>? source,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionCodeCopyWithImpl<T>
    implements $SubstanceDefinitionCodeCopyWith<T> {
  final SubstanceDefinitionCode _value;
  final T Function(SubstanceDefinitionCode) _then;

  _$SubstanceDefinitionCodeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusDate = fhirSentinel,
    Object? note = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionCode(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        statusDate: identical(statusDate, fhirSentinel)
            ? _value.statusDate
            : statusDate as FhirDateTime?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionCodeCopyWithExtension on SubstanceDefinitionCode {
  $SubstanceDefinitionCodeCopyWith<SubstanceDefinitionCode> get copyWith =>
      _$SubstanceDefinitionCodeCopyWithImpl<SubstanceDefinitionCode>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceDefinitionNameCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
    CodeableConcept? status,
    FhirBoolean? preferred,
    List<CodeableConcept>? language,
    List<CodeableConcept>? domain,
    List<CodeableConcept>? jurisdiction,
    List<SubstanceDefinitionName>? synonym,
    List<SubstanceDefinitionName>? translation,
    List<SubstanceDefinitionOfficial>? official,
    List<Reference>? source,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionNameCopyWithImpl<T>
    implements $SubstanceDefinitionNameCopyWith<T> {
  final SubstanceDefinitionName _value;
  final T Function(SubstanceDefinitionName) _then;

  _$SubstanceDefinitionNameCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? status = fhirSentinel,
    Object? preferred = fhirSentinel,
    Object? language = fhirSentinel,
    Object? domain = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? synonym = fhirSentinel,
    Object? translation = fhirSentinel,
    Object? official = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionName(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: name as FhirString? ?? _value.name,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        preferred: identical(preferred, fhirSentinel)
            ? _value.preferred
            : preferred as FhirBoolean?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as List<CodeableConcept>?,
        domain: identical(domain, fhirSentinel)
            ? _value.domain
            : domain as List<CodeableConcept>?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as List<CodeableConcept>?,
        synonym: identical(synonym, fhirSentinel)
            ? _value.synonym
            : synonym as List<SubstanceDefinitionName>?,
        translation: identical(translation, fhirSentinel)
            ? _value.translation
            : translation as List<SubstanceDefinitionName>?,
        official: identical(official, fhirSentinel)
            ? _value.official
            : official as List<SubstanceDefinitionOfficial>?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionNameCopyWithExtension on SubstanceDefinitionName {
  $SubstanceDefinitionNameCopyWith<SubstanceDefinitionName> get copyWith =>
      _$SubstanceDefinitionNameCopyWithImpl<SubstanceDefinitionName>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceDefinitionOfficialCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? authority,
    CodeableConcept? status,
    FhirDateTime? date,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionOfficialCopyWithImpl<T>
    implements $SubstanceDefinitionOfficialCopyWith<T> {
  final SubstanceDefinitionOfficial _value;
  final T Function(SubstanceDefinitionOfficial) _then;

  _$SubstanceDefinitionOfficialCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? authority = fhirSentinel,
    Object? status = fhirSentinel,
    Object? date = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionOfficial(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        authority: identical(authority, fhirSentinel)
            ? _value.authority
            : authority as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionOfficialCopyWithExtension
    on SubstanceDefinitionOfficial {
  $SubstanceDefinitionOfficialCopyWith<SubstanceDefinitionOfficial>
      get copyWith => _$SubstanceDefinitionOfficialCopyWithImpl<
              SubstanceDefinitionOfficial>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceDefinitionRelationshipCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? substanceDefinitionX,
    CodeableConcept? type,
    FhirBoolean? isDefining,
    Quantity? amountX,
    Ratio? ratioHighLimitAmount,
    CodeableConcept? comparator,
    List<Reference>? source,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionRelationshipCopyWithImpl<T>
    implements $SubstanceDefinitionRelationshipCopyWith<T> {
  final SubstanceDefinitionRelationship _value;
  final T Function(SubstanceDefinitionRelationship) _then;

  _$SubstanceDefinitionRelationshipCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? substanceDefinitionX = fhirSentinel,
    Object? type = fhirSentinel,
    Object? isDefining = fhirSentinel,
    Object? amountX = fhirSentinel,
    Object? ratioHighLimitAmount = fhirSentinel,
    Object? comparator = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionRelationship(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        substanceDefinitionX: identical(substanceDefinitionX, fhirSentinel)
            ? _value.substanceDefinitionX
            : substanceDefinitionX as Reference?,
        type: type as CodeableConcept? ?? _value.type,
        isDefining: identical(isDefining, fhirSentinel)
            ? _value.isDefining
            : isDefining as FhirBoolean?,
        amountX: identical(amountX, fhirSentinel)
            ? _value.amountX
            : amountX as Quantity?,
        ratioHighLimitAmount: identical(ratioHighLimitAmount, fhirSentinel)
            ? _value.ratioHighLimitAmount
            : ratioHighLimitAmount as Ratio?,
        comparator: identical(comparator, fhirSentinel)
            ? _value.comparator
            : comparator as CodeableConcept?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionRelationshipCopyWithExtension
    on SubstanceDefinitionRelationship {
  $SubstanceDefinitionRelationshipCopyWith<SubstanceDefinitionRelationship>
      get copyWith => _$SubstanceDefinitionRelationshipCopyWithImpl<
              SubstanceDefinitionRelationship>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceDefinitionSourceMaterialCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? genus,
    CodeableConcept? species,
    CodeableConcept? part_,
    List<CodeableConcept>? countryOfOrigin,
    bool? disallowExtensions,
  });
}

class _$SubstanceDefinitionSourceMaterialCopyWithImpl<T>
    implements $SubstanceDefinitionSourceMaterialCopyWith<T> {
  final SubstanceDefinitionSourceMaterial _value;
  final T Function(SubstanceDefinitionSourceMaterial) _then;

  _$SubstanceDefinitionSourceMaterialCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? genus = fhirSentinel,
    Object? species = fhirSentinel,
    Object? part_ = fhirSentinel,
    Object? countryOfOrigin = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceDefinitionSourceMaterial(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        genus: identical(genus, fhirSentinel)
            ? _value.genus
            : genus as CodeableConcept?,
        species: identical(species, fhirSentinel)
            ? _value.species
            : species as CodeableConcept?,
        part_: identical(part_, fhirSentinel)
            ? _value.part_
            : part_ as CodeableConcept?,
        countryOfOrigin: identical(countryOfOrigin, fhirSentinel)
            ? _value.countryOfOrigin
            : countryOfOrigin as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceDefinitionSourceMaterialCopyWithExtension
    on SubstanceDefinitionSourceMaterial {
  $SubstanceDefinitionSourceMaterialCopyWith<SubstanceDefinitionSourceMaterial>
      get copyWith => _$SubstanceDefinitionSourceMaterialCopyWithImpl<
              SubstanceDefinitionSourceMaterial>(
            this,
            (value) => value,
          );
}
