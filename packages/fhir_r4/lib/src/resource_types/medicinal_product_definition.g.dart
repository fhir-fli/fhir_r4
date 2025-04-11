// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'medicinal_product_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MedicinalProductDefinitionCopyWith<T>
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
    CodeableConcept? type,
    CodeableConcept? domain,
    FhirString? version,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    FhirMarkdown? description,
    CodeableConcept? combinedPharmaceuticalDoseForm,
    List<CodeableConcept>? route,
    FhirMarkdown? indication,
    CodeableConcept? legalStatusOfSupply,
    CodeableConcept? additionalMonitoringIndicator,
    List<CodeableConcept>? specialMeasures,
    CodeableConcept? pediatricUseIndicator,
    List<CodeableConcept>? classification,
    List<MarketingStatus>? marketingStatus,
    List<CodeableConcept>? packagedMedicinalProduct,
    List<CodeableConcept>? ingredient,
    List<CodeableReference>? impurity,
    List<Reference>? attachedDocument,
    List<Reference>? masterFile,
    List<MedicinalProductDefinitionContact>? contact,
    List<Reference>? clinicalTrial,
    List<Coding>? code,
    List<MedicinalProductDefinitionName>? name,
    List<MedicinalProductDefinitionCrossReference>? crossReference,
    List<MedicinalProductDefinitionOperation>? operation,
    List<MedicinalProductDefinitionCharacteristic>? characteristic,
    bool? disallowExtensions,
  });
}

class _$MedicinalProductDefinitionCopyWithImpl<T>
    implements $MedicinalProductDefinitionCopyWith<T> {
  final MedicinalProductDefinition _value;
  final T Function(MedicinalProductDefinition) _then;

  _$MedicinalProductDefinitionCopyWithImpl(this._value, this._then);

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
    Object? type = fhirSentinel,
    Object? domain = fhirSentinel,
    Object? version = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusDate = fhirSentinel,
    Object? description = fhirSentinel,
    Object? combinedPharmaceuticalDoseForm = fhirSentinel,
    Object? route = fhirSentinel,
    Object? indication = fhirSentinel,
    Object? legalStatusOfSupply = fhirSentinel,
    Object? additionalMonitoringIndicator = fhirSentinel,
    Object? specialMeasures = fhirSentinel,
    Object? pediatricUseIndicator = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? marketingStatus = fhirSentinel,
    Object? packagedMedicinalProduct = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? impurity = fhirSentinel,
    Object? attachedDocument = fhirSentinel,
    Object? masterFile = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? clinicalTrial = fhirSentinel,
    Object? code = fhirSentinel,
    Object? name = fhirSentinel,
    Object? crossReference = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicinalProductDefinition(
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
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        domain: identical(domain, fhirSentinel)
            ? _value.domain
            : domain as CodeableConcept?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        statusDate: identical(statusDate, fhirSentinel)
            ? _value.statusDate
            : statusDate as FhirDateTime?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        combinedPharmaceuticalDoseForm:
            identical(combinedPharmaceuticalDoseForm, fhirSentinel)
                ? _value.combinedPharmaceuticalDoseForm
                : combinedPharmaceuticalDoseForm as CodeableConcept?,
        route: identical(route, fhirSentinel)
            ? _value.route
            : route as List<CodeableConcept>?,
        indication: identical(indication, fhirSentinel)
            ? _value.indication
            : indication as FhirMarkdown?,
        legalStatusOfSupply: identical(legalStatusOfSupply, fhirSentinel)
            ? _value.legalStatusOfSupply
            : legalStatusOfSupply as CodeableConcept?,
        additionalMonitoringIndicator:
            identical(additionalMonitoringIndicator, fhirSentinel)
                ? _value.additionalMonitoringIndicator
                : additionalMonitoringIndicator as CodeableConcept?,
        specialMeasures: identical(specialMeasures, fhirSentinel)
            ? _value.specialMeasures
            : specialMeasures as List<CodeableConcept>?,
        pediatricUseIndicator: identical(pediatricUseIndicator, fhirSentinel)
            ? _value.pediatricUseIndicator
            : pediatricUseIndicator as CodeableConcept?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as List<CodeableConcept>?,
        marketingStatus: identical(marketingStatus, fhirSentinel)
            ? _value.marketingStatus
            : marketingStatus as List<MarketingStatus>?,
        packagedMedicinalProduct:
            identical(packagedMedicinalProduct, fhirSentinel)
                ? _value.packagedMedicinalProduct
                : packagedMedicinalProduct as List<CodeableConcept>?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<CodeableConcept>?,
        impurity: identical(impurity, fhirSentinel)
            ? _value.impurity
            : impurity as List<CodeableReference>?,
        attachedDocument: identical(attachedDocument, fhirSentinel)
            ? _value.attachedDocument
            : attachedDocument as List<Reference>?,
        masterFile: identical(masterFile, fhirSentinel)
            ? _value.masterFile
            : masterFile as List<Reference>?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<MedicinalProductDefinitionContact>?,
        clinicalTrial: identical(clinicalTrial, fhirSentinel)
            ? _value.clinicalTrial
            : clinicalTrial as List<Reference>?,
        code:
            identical(code, fhirSentinel) ? _value.code : code as List<Coding>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as List<MedicinalProductDefinitionName>?) ?? _value.name,
        crossReference: identical(crossReference, fhirSentinel)
            ? _value.crossReference
            : crossReference as List<MedicinalProductDefinitionCrossReference>?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as List<MedicinalProductDefinitionOperation>?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<MedicinalProductDefinitionCharacteristic>?,
      ),
    );
  }
}

extension MedicinalProductDefinitionCopyWithExtension
    on MedicinalProductDefinition {
  $MedicinalProductDefinitionCopyWith<MedicinalProductDefinition>
      get copyWith =>
          _$MedicinalProductDefinitionCopyWithImpl<MedicinalProductDefinition>(
            this,
            (value) => value,
          );
}

abstract class $MedicinalProductDefinitionContactCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? contact,
    bool? disallowExtensions,
  });
}

class _$MedicinalProductDefinitionContactCopyWithImpl<T>
    implements $MedicinalProductDefinitionContactCopyWith<T> {
  final MedicinalProductDefinitionContact _value;
  final T Function(MedicinalProductDefinitionContact) _then;

  _$MedicinalProductDefinitionContactCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicinalProductDefinitionContact(
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
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : (contact as Reference?) ?? _value.contact,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicinalProductDefinitionContactCopyWithExtension
    on MedicinalProductDefinitionContact {
  $MedicinalProductDefinitionContactCopyWith<MedicinalProductDefinitionContact>
      get copyWith => _$MedicinalProductDefinitionContactCopyWithImpl<
              MedicinalProductDefinitionContact>(
            this,
            (value) => value,
          );
}

abstract class $MedicinalProductDefinitionNameCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? productName,
    CodeableConcept? type,
    List<MedicinalProductDefinitionNamePart>? namePart,
    List<MedicinalProductDefinitionCountryLanguage>? countryLanguage,
    bool? disallowExtensions,
  });
}

class _$MedicinalProductDefinitionNameCopyWithImpl<T>
    implements $MedicinalProductDefinitionNameCopyWith<T> {
  final MedicinalProductDefinitionName _value;
  final T Function(MedicinalProductDefinitionName) _then;

  _$MedicinalProductDefinitionNameCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? productName = fhirSentinel,
    Object? type = fhirSentinel,
    Object? namePart = fhirSentinel,
    Object? countryLanguage = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicinalProductDefinitionName(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        productName: identical(productName, fhirSentinel)
            ? _value.productName
            : (productName as FhirString?) ?? _value.productName,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        namePart: identical(namePart, fhirSentinel)
            ? _value.namePart
            : namePart as List<MedicinalProductDefinitionNamePart>?,
        countryLanguage: identical(countryLanguage, fhirSentinel)
            ? _value.countryLanguage
            : countryLanguage
                as List<MedicinalProductDefinitionCountryLanguage>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicinalProductDefinitionNameCopyWithExtension
    on MedicinalProductDefinitionName {
  $MedicinalProductDefinitionNameCopyWith<MedicinalProductDefinitionName>
      get copyWith => _$MedicinalProductDefinitionNameCopyWithImpl<
              MedicinalProductDefinitionName>(
            this,
            (value) => value,
          );
}

abstract class $MedicinalProductDefinitionNamePartCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? part_,
    CodeableConcept? type,
    bool? disallowExtensions,
  });
}

class _$MedicinalProductDefinitionNamePartCopyWithImpl<T>
    implements $MedicinalProductDefinitionNamePartCopyWith<T> {
  final MedicinalProductDefinitionNamePart _value;
  final T Function(MedicinalProductDefinitionNamePart) _then;

  _$MedicinalProductDefinitionNamePartCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? part_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicinalProductDefinitionNamePart(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        part_: identical(part_, fhirSentinel)
            ? _value.part_
            : (part_ as FhirString?) ?? _value.part_,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicinalProductDefinitionNamePartCopyWithExtension
    on MedicinalProductDefinitionNamePart {
  $MedicinalProductDefinitionNamePartCopyWith<
          MedicinalProductDefinitionNamePart>
      get copyWith => _$MedicinalProductDefinitionNamePartCopyWithImpl<
              MedicinalProductDefinitionNamePart>(
            this,
            (value) => value,
          );
}

abstract class $MedicinalProductDefinitionCountryLanguageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? country,
    CodeableConcept? jurisdiction,
    CodeableConcept? language,
    bool? disallowExtensions,
  });
}

class _$MedicinalProductDefinitionCountryLanguageCopyWithImpl<T>
    implements $MedicinalProductDefinitionCountryLanguageCopyWith<T> {
  final MedicinalProductDefinitionCountryLanguage _value;
  final T Function(MedicinalProductDefinitionCountryLanguage) _then;

  _$MedicinalProductDefinitionCountryLanguageCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? country = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? language = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicinalProductDefinitionCountryLanguage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        country: identical(country, fhirSentinel)
            ? _value.country
            : (country as CodeableConcept?) ?? _value.country,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as CodeableConcept?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : (language as CodeableConcept?) ?? _value.language,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicinalProductDefinitionCountryLanguageCopyWithExtension
    on MedicinalProductDefinitionCountryLanguage {
  $MedicinalProductDefinitionCountryLanguageCopyWith<
          MedicinalProductDefinitionCountryLanguage>
      get copyWith => _$MedicinalProductDefinitionCountryLanguageCopyWithImpl<
              MedicinalProductDefinitionCountryLanguage>(
            this,
            (value) => value,
          );
}

abstract class $MedicinalProductDefinitionCrossReferenceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? product,
    CodeableConcept? type,
    bool? disallowExtensions,
  });
}

class _$MedicinalProductDefinitionCrossReferenceCopyWithImpl<T>
    implements $MedicinalProductDefinitionCrossReferenceCopyWith<T> {
  final MedicinalProductDefinitionCrossReference _value;
  final T Function(MedicinalProductDefinitionCrossReference) _then;

  _$MedicinalProductDefinitionCrossReferenceCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? product = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicinalProductDefinitionCrossReference(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        product: identical(product, fhirSentinel)
            ? _value.product
            : (product as CodeableReference?) ?? _value.product,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicinalProductDefinitionCrossReferenceCopyWithExtension
    on MedicinalProductDefinitionCrossReference {
  $MedicinalProductDefinitionCrossReferenceCopyWith<
          MedicinalProductDefinitionCrossReference>
      get copyWith => _$MedicinalProductDefinitionCrossReferenceCopyWithImpl<
              MedicinalProductDefinitionCrossReference>(
            this,
            (value) => value,
          );
}

abstract class $MedicinalProductDefinitionOperationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? type,
    Period? effectiveDate,
    List<Reference>? organization,
    CodeableConcept? confidentialityIndicator,
    bool? disallowExtensions,
  });
}

class _$MedicinalProductDefinitionOperationCopyWithImpl<T>
    implements $MedicinalProductDefinitionOperationCopyWith<T> {
  final MedicinalProductDefinitionOperation _value;
  final T Function(MedicinalProductDefinitionOperation) _then;

  _$MedicinalProductDefinitionOperationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? effectiveDate = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? confidentialityIndicator = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicinalProductDefinitionOperation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableReference?,
        effectiveDate: identical(effectiveDate, fhirSentinel)
            ? _value.effectiveDate
            : effectiveDate as Period?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as List<Reference>?,
        confidentialityIndicator:
            identical(confidentialityIndicator, fhirSentinel)
                ? _value.confidentialityIndicator
                : confidentialityIndicator as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicinalProductDefinitionOperationCopyWithExtension
    on MedicinalProductDefinitionOperation {
  $MedicinalProductDefinitionOperationCopyWith<
          MedicinalProductDefinitionOperation>
      get copyWith => _$MedicinalProductDefinitionOperationCopyWithImpl<
              MedicinalProductDefinitionOperation>(
            this,
            (value) => value,
          );
}

abstract class $MedicinalProductDefinitionCharacteristicCopyWith<T>
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

class _$MedicinalProductDefinitionCharacteristicCopyWithImpl<T>
    implements $MedicinalProductDefinitionCharacteristicCopyWith<T> {
  final MedicinalProductDefinitionCharacteristic _value;
  final T Function(MedicinalProductDefinitionCharacteristic) _then;

  _$MedicinalProductDefinitionCharacteristicCopyWithImpl(
      this._value, this._then);

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
      MedicinalProductDefinitionCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
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

extension MedicinalProductDefinitionCharacteristicCopyWithExtension
    on MedicinalProductDefinitionCharacteristic {
  $MedicinalProductDefinitionCharacteristicCopyWith<
          MedicinalProductDefinitionCharacteristic>
      get copyWith => _$MedicinalProductDefinitionCharacteristicCopyWithImpl<
              MedicinalProductDefinitionCharacteristic>(
            this,
            (value) => value,
          );
}
