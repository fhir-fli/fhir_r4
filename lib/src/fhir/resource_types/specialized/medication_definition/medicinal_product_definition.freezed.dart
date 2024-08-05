// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicinal_product_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicinalProductDefinition _$MedicinalProductDefinitionFromJson(
    Map<String, dynamic> json) {
  return _MedicinalProductDefinition.fromJson(json);
}

/// @nodoc
mixin _$MedicinalProductDefinition {
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.;
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] (_language): Extensions for language;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Business identifier for this product. Could be an MPID. When in development or being regulated, products are typically referenced by official identifiers, assigned by a manufacturer or regulator, and unique to a product (which, when compared to a product instance being prescribed, is actually a product type). See also MedicinalProductDefinition.code.;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [type] Regulatory type, e.g. Investigational or Authorized.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [domain] If this medicine applies to human or veterinary uses.;
  CodeableConcept? get domain => throw _privateConstructorUsedError;

  /// [version] A business identifier relating to a specific version of the product, this is commonly used to support revisions to an existing product.;
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] (_version): Extensions for version;
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [status] The status within the lifecycle of this product record. A high-level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization status.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [statusDate] The date at which the given status became applicable.;
  FhirDateTime? get statusDate => throw _privateConstructorUsedError;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement => throw _privateConstructorUsedError;

  /// [description] General description of this product.;
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [combinedPharmaceuticalDoseForm] The dose form for a single part product, or combined form of a multiple part product. This is one concept that describes all the components. It does not represent the form with components physically mixed, if that might be necessary, for which see (AdministrableProductDefinition.administrableDoseForm).;
  CodeableConcept? get combinedPharmaceuticalDoseForm =>
      throw _privateConstructorUsedError;

  /// [route] The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the licenced or approved route. See also AdministrableProductDefinition resource. MedicinalProductDefinition.route is the same concept as AdministrableProductDefinition.routeOfAdministration.code, and they cannot be used together.;
  List<CodeableConcept>? get route => throw _privateConstructorUsedError;

  /// [indication] Description of indication(s) for this product, used when structured indications are not required. In cases where structured indications are required, they are captured using the ClinicalUseDefinition resource. An indication is a medical situation for which using the product is appropriate.;
  FhirMarkdown? get indication => throw _privateConstructorUsedError;

  /// [indicationElement] (_indication): Extensions for indication;
  @JsonKey(name: '_indication')
  PrimitiveElement? get indicationElement => throw _privateConstructorUsedError;

  /// [legalStatusOfSupply] The legal status of supply of the medicinal product as classified by the regulator.;
  CodeableConcept? get legalStatusOfSupply =>
      throw _privateConstructorUsedError;

  /// [additionalMonitoringIndicator] Whether the Medicinal Product is subject to additional monitoring for regulatory reasons, such as heightened reporting requirements.;
  CodeableConcept? get additionalMonitoringIndicator =>
      throw _privateConstructorUsedError;

  /// [specialMeasures] Whether the Medicinal Product is subject to special measures for regulatory reasons, such as a requirement to conduct post-authorisation studies.;
  List<CodeableConcept>? get specialMeasures =>
      throw _privateConstructorUsedError;

  /// [pediatricUseIndicator] If authorised for use in children, or infants, neonates etc.;
  CodeableConcept? get pediatricUseIndicator =>
      throw _privateConstructorUsedError;

  /// [classification] Allows the product to be classified by various systems, commonly WHO ATC.;
  List<CodeableConcept>? get classification =>
      throw _privateConstructorUsedError;

  /// [marketingStatus] Marketing status of the medicinal product, in contrast to marketing authorization. This refers to the product being actually 'on the market' as opposed to being allowed to be on the market (which is an authorization).;
  List<MarketingStatus>? get marketingStatus =>
      throw _privateConstructorUsedError;

  /// [packagedMedicinalProduct] Package type for the product. See also the PackagedProductDefinition resource.;
  List<CodeableConcept>? get packagedMedicinalProduct =>
      throw _privateConstructorUsedError;

  /// [ingredient] The ingredients of this medicinal product - when not detailed in other resources. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource, or indirectly via incoming AdministrableProductDefinition, PackagedProductDefinition or ManufacturedItemDefinition references. In cases where those levels of detail are not used, the ingredients may be specified directly here as codes.;
  List<CodeableConcept>? get ingredient => throw _privateConstructorUsedError;

  /// [impurity] Any component of the drug product which is not the chemical entity defined as the drug substance, or an excipient in the drug product. This includes process-related impurities and contaminants, product-related impurities including degradation products.;
  List<CodeableReference>? get impurity => throw _privateConstructorUsedError;

  /// [attachedDocument] Additional information or supporting documentation about the medicinal product.;
  List<Reference>? get attachedDocument => throw _privateConstructorUsedError;

  /// [masterFile] A master file for the medicinal product (e.g. Pharmacovigilance System Master File). Drug master files (DMFs) are documents submitted to regulatory agencies to provide confidential detailed information about facilities, processes or articles used in the manufacturing, processing, packaging and storing of drug products.;
  List<Reference>? get masterFile => throw _privateConstructorUsedError;

  /// [contact] A product specific contact, person (in a role), or an organization.;
  List<MedicinalProductDefinitionContact>? get contact =>
      throw _privateConstructorUsedError;

  /// [clinicalTrial] Clinical trials or studies that this product is involved in.;
  List<Reference>? get clinicalTrial => throw _privateConstructorUsedError;

  /// [code] A code that this product is known by, usually within some formal terminology, perhaps assigned by a third party (i.e. not the manufacturer or regulator). Products (types of medications) tend to be known by identifiers during development and within regulatory process. However when they are prescribed they tend to be identified by codes. The same product may be have multiple codes, applied to it by multiple organizations.;
  List<Coding>? get code => throw _privateConstructorUsedError;

  /// [name] The product's name, including full name and possibly coded parts.;
  List<MedicinalProductDefinitionName> get name =>
      throw _privateConstructorUsedError;

  /// [crossReference] Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.;
  List<MedicinalProductDefinitionCrossReference>? get crossReference =>
      throw _privateConstructorUsedError;

  /// [operation] A manufacturing or administrative process or step associated with (or performed on) the medicinal product.;
  List<MedicinalProductDefinitionOperation>? get operation =>
      throw _privateConstructorUsedError;

  /// [characteristic] Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".;
  List<MedicinalProductDefinitionCharacteristic>? get characteristic =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinalProductDefinitionCopyWith<MedicinalProductDefinition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinalProductDefinitionCopyWith<$Res> {
  factory $MedicinalProductDefinitionCopyWith(MedicinalProductDefinition value,
          $Res Function(MedicinalProductDefinition) then) =
      _$MedicinalProductDefinitionCopyWithImpl<$Res,
          MedicinalProductDefinition>;
  @useResult
  $Res call(
      {R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept? type,
      CodeableConcept? domain,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      CodeableConcept? status,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      CodeableConcept? combinedPharmaceuticalDoseForm,
      List<CodeableConcept>? route,
      FhirMarkdown? indication,
      @JsonKey(name: '_indication') PrimitiveElement? indicationElement,
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
      List<MedicinalProductDefinitionName> name,
      List<MedicinalProductDefinitionCrossReference>? crossReference,
      List<MedicinalProductDefinitionOperation>? operation,
      List<MedicinalProductDefinitionCharacteristic>? characteristic});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get domain;
  $CodeableConceptCopyWith<$Res>? get status;
  $CodeableConceptCopyWith<$Res>? get combinedPharmaceuticalDoseForm;
  $CodeableConceptCopyWith<$Res>? get legalStatusOfSupply;
  $CodeableConceptCopyWith<$Res>? get additionalMonitoringIndicator;
  $CodeableConceptCopyWith<$Res>? get pediatricUseIndicator;
}

/// @nodoc
class _$MedicinalProductDefinitionCopyWithImpl<$Res,
        $Val extends MedicinalProductDefinition>
    implements $MedicinalProductDefinitionCopyWith<$Res> {
  _$MedicinalProductDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = freezed,
    Object? domain = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? status = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? combinedPharmaceuticalDoseForm = freezed,
    Object? route = freezed,
    Object? indication = freezed,
    Object? indicationElement = freezed,
    Object? legalStatusOfSupply = freezed,
    Object? additionalMonitoringIndicator = freezed,
    Object? specialMeasures = freezed,
    Object? pediatricUseIndicator = freezed,
    Object? classification = freezed,
    Object? marketingStatus = freezed,
    Object? packagedMedicinalProduct = freezed,
    Object? ingredient = freezed,
    Object? impurity = freezed,
    Object? attachedDocument = freezed,
    Object? masterFile = freezed,
    Object? contact = freezed,
    Object? clinicalTrial = freezed,
    Object? code = freezed,
    Object? name = null,
    Object? crossReference = freezed,
    Object? operation = freezed,
    Object? characteristic = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      statusDateElement: freezed == statusDateElement
          ? _value.statusDateElement
          : statusDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      combinedPharmaceuticalDoseForm: freezed == combinedPharmaceuticalDoseForm
          ? _value.combinedPharmaceuticalDoseForm
          : combinedPharmaceuticalDoseForm // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      indication: freezed == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      indicationElement: freezed == indicationElement
          ? _value.indicationElement
          : indicationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      legalStatusOfSupply: freezed == legalStatusOfSupply
          ? _value.legalStatusOfSupply
          : legalStatusOfSupply // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      additionalMonitoringIndicator: freezed == additionalMonitoringIndicator
          ? _value.additionalMonitoringIndicator
          : additionalMonitoringIndicator // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      specialMeasures: freezed == specialMeasures
          ? _value.specialMeasures
          : specialMeasures // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      pediatricUseIndicator: freezed == pediatricUseIndicator
          ? _value.pediatricUseIndicator
          : pediatricUseIndicator // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      marketingStatus: freezed == marketingStatus
          ? _value.marketingStatus
          : marketingStatus // ignore: cast_nullable_to_non_nullable
              as List<MarketingStatus>?,
      packagedMedicinalProduct: freezed == packagedMedicinalProduct
          ? _value.packagedMedicinalProduct
          : packagedMedicinalProduct // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      ingredient: freezed == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      impurity: freezed == impurity
          ? _value.impurity
          : impurity // ignore: cast_nullable_to_non_nullable
              as List<CodeableReference>?,
      attachedDocument: freezed == attachedDocument
          ? _value.attachedDocument
          : attachedDocument // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      masterFile: freezed == masterFile
          ? _value.masterFile
          : masterFile // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionContact>?,
      clinicalTrial: freezed == clinicalTrial
          ? _value.clinicalTrial
          : clinicalTrial // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionName>,
      crossReference: freezed == crossReference
          ? _value.crossReference
          : crossReference // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionCrossReference>?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionOperation>?,
      characteristic: freezed == characteristic
          ? _value.characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionCharacteristic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get combinedPharmaceuticalDoseForm {
    if (_value.combinedPharmaceuticalDoseForm == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(
        _value.combinedPharmaceuticalDoseForm!, (value) {
      return _then(
          _value.copyWith(combinedPharmaceuticalDoseForm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get legalStatusOfSupply {
    if (_value.legalStatusOfSupply == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.legalStatusOfSupply!, (value) {
      return _then(_value.copyWith(legalStatusOfSupply: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get additionalMonitoringIndicator {
    if (_value.additionalMonitoringIndicator == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.additionalMonitoringIndicator!,
        (value) {
      return _then(
          _value.copyWith(additionalMonitoringIndicator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get pediatricUseIndicator {
    if (_value.pediatricUseIndicator == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.pediatricUseIndicator!,
        (value) {
      return _then(_value.copyWith(pediatricUseIndicator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicinalProductDefinitionImplCopyWith<$Res>
    implements $MedicinalProductDefinitionCopyWith<$Res> {
  factory _$$MedicinalProductDefinitionImplCopyWith(
          _$MedicinalProductDefinitionImpl value,
          $Res Function(_$MedicinalProductDefinitionImpl) then) =
      __$$MedicinalProductDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept? type,
      CodeableConcept? domain,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      CodeableConcept? status,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      CodeableConcept? combinedPharmaceuticalDoseForm,
      List<CodeableConcept>? route,
      FhirMarkdown? indication,
      @JsonKey(name: '_indication') PrimitiveElement? indicationElement,
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
      List<MedicinalProductDefinitionName> name,
      List<MedicinalProductDefinitionCrossReference>? crossReference,
      List<MedicinalProductDefinitionOperation>? operation,
      List<MedicinalProductDefinitionCharacteristic>? characteristic});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get domain;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
  @override
  $CodeableConceptCopyWith<$Res>? get combinedPharmaceuticalDoseForm;
  @override
  $CodeableConceptCopyWith<$Res>? get legalStatusOfSupply;
  @override
  $CodeableConceptCopyWith<$Res>? get additionalMonitoringIndicator;
  @override
  $CodeableConceptCopyWith<$Res>? get pediatricUseIndicator;
}

/// @nodoc
class __$$MedicinalProductDefinitionImplCopyWithImpl<$Res>
    extends _$MedicinalProductDefinitionCopyWithImpl<$Res,
        _$MedicinalProductDefinitionImpl>
    implements _$$MedicinalProductDefinitionImplCopyWith<$Res> {
  __$$MedicinalProductDefinitionImplCopyWithImpl(
      _$MedicinalProductDefinitionImpl _value,
      $Res Function(_$MedicinalProductDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = freezed,
    Object? domain = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? status = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? combinedPharmaceuticalDoseForm = freezed,
    Object? route = freezed,
    Object? indication = freezed,
    Object? indicationElement = freezed,
    Object? legalStatusOfSupply = freezed,
    Object? additionalMonitoringIndicator = freezed,
    Object? specialMeasures = freezed,
    Object? pediatricUseIndicator = freezed,
    Object? classification = freezed,
    Object? marketingStatus = freezed,
    Object? packagedMedicinalProduct = freezed,
    Object? ingredient = freezed,
    Object? impurity = freezed,
    Object? attachedDocument = freezed,
    Object? masterFile = freezed,
    Object? contact = freezed,
    Object? clinicalTrial = freezed,
    Object? code = freezed,
    Object? name = null,
    Object? crossReference = freezed,
    Object? operation = freezed,
    Object? characteristic = freezed,
  }) {
    return _then(_$MedicinalProductDefinitionImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      statusDateElement: freezed == statusDateElement
          ? _value.statusDateElement
          : statusDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      combinedPharmaceuticalDoseForm: freezed == combinedPharmaceuticalDoseForm
          ? _value.combinedPharmaceuticalDoseForm
          : combinedPharmaceuticalDoseForm // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      route: freezed == route
          ? _value._route
          : route // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      indication: freezed == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      indicationElement: freezed == indicationElement
          ? _value.indicationElement
          : indicationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      legalStatusOfSupply: freezed == legalStatusOfSupply
          ? _value.legalStatusOfSupply
          : legalStatusOfSupply // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      additionalMonitoringIndicator: freezed == additionalMonitoringIndicator
          ? _value.additionalMonitoringIndicator
          : additionalMonitoringIndicator // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      specialMeasures: freezed == specialMeasures
          ? _value._specialMeasures
          : specialMeasures // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      pediatricUseIndicator: freezed == pediatricUseIndicator
          ? _value.pediatricUseIndicator
          : pediatricUseIndicator // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      classification: freezed == classification
          ? _value._classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      marketingStatus: freezed == marketingStatus
          ? _value._marketingStatus
          : marketingStatus // ignore: cast_nullable_to_non_nullable
              as List<MarketingStatus>?,
      packagedMedicinalProduct: freezed == packagedMedicinalProduct
          ? _value._packagedMedicinalProduct
          : packagedMedicinalProduct // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      ingredient: freezed == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      impurity: freezed == impurity
          ? _value._impurity
          : impurity // ignore: cast_nullable_to_non_nullable
              as List<CodeableReference>?,
      attachedDocument: freezed == attachedDocument
          ? _value._attachedDocument
          : attachedDocument // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      masterFile: freezed == masterFile
          ? _value._masterFile
          : masterFile // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionContact>?,
      clinicalTrial: freezed == clinicalTrial
          ? _value._clinicalTrial
          : clinicalTrial // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      name: null == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionName>,
      crossReference: freezed == crossReference
          ? _value._crossReference
          : crossReference // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionCrossReference>?,
      operation: freezed == operation
          ? _value._operation
          : operation // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionOperation>?,
      characteristic: freezed == characteristic
          ? _value._characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionCharacteristic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicinalProductDefinitionImpl extends _MedicinalProductDefinition {
  _$MedicinalProductDefinitionImpl(
      {this.resourceType = R4ResourceType.MedicinalProductDefinition,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.type,
      this.domain,
      this.version,
      @JsonKey(name: '_version') this.versionElement,
      this.status,
      this.statusDate,
      @JsonKey(name: '_statusDate') this.statusDateElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.combinedPharmaceuticalDoseForm,
      final List<CodeableConcept>? route,
      this.indication,
      @JsonKey(name: '_indication') this.indicationElement,
      this.legalStatusOfSupply,
      this.additionalMonitoringIndicator,
      final List<CodeableConcept>? specialMeasures,
      this.pediatricUseIndicator,
      final List<CodeableConcept>? classification,
      final List<MarketingStatus>? marketingStatus,
      final List<CodeableConcept>? packagedMedicinalProduct,
      final List<CodeableConcept>? ingredient,
      final List<CodeableReference>? impurity,
      final List<Reference>? attachedDocument,
      final List<Reference>? masterFile,
      final List<MedicinalProductDefinitionContact>? contact,
      final List<Reference>? clinicalTrial,
      final List<Coding>? code,
      required final List<MedicinalProductDefinitionName> name,
      final List<MedicinalProductDefinitionCrossReference>? crossReference,
      final List<MedicinalProductDefinitionOperation>? operation,
      final List<MedicinalProductDefinitionCharacteristic>? characteristic})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _route = route,
        _specialMeasures = specialMeasures,
        _classification = classification,
        _marketingStatus = marketingStatus,
        _packagedMedicinalProduct = packagedMedicinalProduct,
        _ingredient = ingredient,
        _impurity = impurity,
        _attachedDocument = attachedDocument,
        _masterFile = masterFile,
        _contact = contact,
        _clinicalTrial = clinicalTrial,
        _code = code,
        _name = name,
        _crossReference = crossReference,
        _operation = operation,
        _characteristic = characteristic,
        super._();

  factory _$MedicinalProductDefinitionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicinalProductDefinitionImplFromJson(json);

  @override
  @JsonKey()
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.;
  @override
  final FhirCode? language;

  /// [languageElement] (_language): Extensions for language;
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Business identifier for this product. Could be an MPID. When in development or being regulated, products are typically referenced by official identifiers, assigned by a manufacturer or regulator, and unique to a product (which, when compared to a product instance being prescribed, is actually a product type). See also MedicinalProductDefinition.code.;
  final List<Identifier>? _identifier;

  /// [identifier] Business identifier for this product. Could be an MPID. When in development or being regulated, products are typically referenced by official identifiers, assigned by a manufacturer or regulator, and unique to a product (which, when compared to a product instance being prescribed, is actually a product type). See also MedicinalProductDefinition.code.;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Regulatory type, e.g. Investigational or Authorized.;
  @override
  final CodeableConcept? type;

  /// [domain] If this medicine applies to human or veterinary uses.;
  @override
  final CodeableConcept? domain;

  /// [version] A business identifier relating to a specific version of the product, this is commonly used to support revisions to an existing product.;
  @override
  final String? version;

  /// [versionElement] (_version): Extensions for version;
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [status] The status within the lifecycle of this product record. A high-level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization status.;
  @override
  final CodeableConcept? status;

  /// [statusDate] The date at which the given status became applicable.;
  @override
  final FhirDateTime? statusDate;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @override
  @JsonKey(name: '_statusDate')
  final PrimitiveElement? statusDateElement;

  /// [description] General description of this product.;
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] (_description): Extensions for description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [combinedPharmaceuticalDoseForm] The dose form for a single part product, or combined form of a multiple part product. This is one concept that describes all the components. It does not represent the form with components physically mixed, if that might be necessary, for which see (AdministrableProductDefinition.administrableDoseForm).;
  @override
  final CodeableConcept? combinedPharmaceuticalDoseForm;

  /// [route] The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the licenced or approved route. See also AdministrableProductDefinition resource. MedicinalProductDefinition.route is the same concept as AdministrableProductDefinition.routeOfAdministration.code, and they cannot be used together.;
  final List<CodeableConcept>? _route;

  /// [route] The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the licenced or approved route. See also AdministrableProductDefinition resource. MedicinalProductDefinition.route is the same concept as AdministrableProductDefinition.routeOfAdministration.code, and they cannot be used together.;
  @override
  List<CodeableConcept>? get route {
    final value = _route;
    if (value == null) return null;
    if (_route is EqualUnmodifiableListView) return _route;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [indication] Description of indication(s) for this product, used when structured indications are not required. In cases where structured indications are required, they are captured using the ClinicalUseDefinition resource. An indication is a medical situation for which using the product is appropriate.;
  @override
  final FhirMarkdown? indication;

  /// [indicationElement] (_indication): Extensions for indication;
  @override
  @JsonKey(name: '_indication')
  final PrimitiveElement? indicationElement;

  /// [legalStatusOfSupply] The legal status of supply of the medicinal product as classified by the regulator.;
  @override
  final CodeableConcept? legalStatusOfSupply;

  /// [additionalMonitoringIndicator] Whether the Medicinal Product is subject to additional monitoring for regulatory reasons, such as heightened reporting requirements.;
  @override
  final CodeableConcept? additionalMonitoringIndicator;

  /// [specialMeasures] Whether the Medicinal Product is subject to special measures for regulatory reasons, such as a requirement to conduct post-authorisation studies.;
  final List<CodeableConcept>? _specialMeasures;

  /// [specialMeasures] Whether the Medicinal Product is subject to special measures for regulatory reasons, such as a requirement to conduct post-authorisation studies.;
  @override
  List<CodeableConcept>? get specialMeasures {
    final value = _specialMeasures;
    if (value == null) return null;
    if (_specialMeasures is EqualUnmodifiableListView) return _specialMeasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [pediatricUseIndicator] If authorised for use in children, or infants, neonates etc.;
  @override
  final CodeableConcept? pediatricUseIndicator;

  /// [classification] Allows the product to be classified by various systems, commonly WHO ATC.;
  final List<CodeableConcept>? _classification;

  /// [classification] Allows the product to be classified by various systems, commonly WHO ATC.;
  @override
  List<CodeableConcept>? get classification {
    final value = _classification;
    if (value == null) return null;
    if (_classification is EqualUnmodifiableListView) return _classification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [marketingStatus] Marketing status of the medicinal product, in contrast to marketing authorization. This refers to the product being actually 'on the market' as opposed to being allowed to be on the market (which is an authorization).;
  final List<MarketingStatus>? _marketingStatus;

  /// [marketingStatus] Marketing status of the medicinal product, in contrast to marketing authorization. This refers to the product being actually 'on the market' as opposed to being allowed to be on the market (which is an authorization).;
  @override
  List<MarketingStatus>? get marketingStatus {
    final value = _marketingStatus;
    if (value == null) return null;
    if (_marketingStatus is EqualUnmodifiableListView) return _marketingStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [packagedMedicinalProduct] Package type for the product. See also the PackagedProductDefinition resource.;
  final List<CodeableConcept>? _packagedMedicinalProduct;

  /// [packagedMedicinalProduct] Package type for the product. See also the PackagedProductDefinition resource.;
  @override
  List<CodeableConcept>? get packagedMedicinalProduct {
    final value = _packagedMedicinalProduct;
    if (value == null) return null;
    if (_packagedMedicinalProduct is EqualUnmodifiableListView)
      return _packagedMedicinalProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [ingredient] The ingredients of this medicinal product - when not detailed in other resources. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource, or indirectly via incoming AdministrableProductDefinition, PackagedProductDefinition or ManufacturedItemDefinition references. In cases where those levels of detail are not used, the ingredients may be specified directly here as codes.;
  final List<CodeableConcept>? _ingredient;

  /// [ingredient] The ingredients of this medicinal product - when not detailed in other resources. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource, or indirectly via incoming AdministrableProductDefinition, PackagedProductDefinition or ManufacturedItemDefinition references. In cases where those levels of detail are not used, the ingredients may be specified directly here as codes.;
  @override
  List<CodeableConcept>? get ingredient {
    final value = _ingredient;
    if (value == null) return null;
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [impurity] Any component of the drug product which is not the chemical entity defined as the drug substance, or an excipient in the drug product. This includes process-related impurities and contaminants, product-related impurities including degradation products.;
  final List<CodeableReference>? _impurity;

  /// [impurity] Any component of the drug product which is not the chemical entity defined as the drug substance, or an excipient in the drug product. This includes process-related impurities and contaminants, product-related impurities including degradation products.;
  @override
  List<CodeableReference>? get impurity {
    final value = _impurity;
    if (value == null) return null;
    if (_impurity is EqualUnmodifiableListView) return _impurity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [attachedDocument] Additional information or supporting documentation about the medicinal product.;
  final List<Reference>? _attachedDocument;

  /// [attachedDocument] Additional information or supporting documentation about the medicinal product.;
  @override
  List<Reference>? get attachedDocument {
    final value = _attachedDocument;
    if (value == null) return null;
    if (_attachedDocument is EqualUnmodifiableListView)
      return _attachedDocument;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [masterFile] A master file for the medicinal product (e.g. Pharmacovigilance System Master File). Drug master files (DMFs) are documents submitted to regulatory agencies to provide confidential detailed information about facilities, processes or articles used in the manufacturing, processing, packaging and storing of drug products.;
  final List<Reference>? _masterFile;

  /// [masterFile] A master file for the medicinal product (e.g. Pharmacovigilance System Master File). Drug master files (DMFs) are documents submitted to regulatory agencies to provide confidential detailed information about facilities, processes or articles used in the manufacturing, processing, packaging and storing of drug products.;
  @override
  List<Reference>? get masterFile {
    final value = _masterFile;
    if (value == null) return null;
    if (_masterFile is EqualUnmodifiableListView) return _masterFile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contact] A product specific contact, person (in a role), or an organization.;
  final List<MedicinalProductDefinitionContact>? _contact;

  /// [contact] A product specific contact, person (in a role), or an organization.;
  @override
  List<MedicinalProductDefinitionContact>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [clinicalTrial] Clinical trials or studies that this product is involved in.;
  final List<Reference>? _clinicalTrial;

  /// [clinicalTrial] Clinical trials or studies that this product is involved in.;
  @override
  List<Reference>? get clinicalTrial {
    final value = _clinicalTrial;
    if (value == null) return null;
    if (_clinicalTrial is EqualUnmodifiableListView) return _clinicalTrial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] A code that this product is known by, usually within some formal terminology, perhaps assigned by a third party (i.e. not the manufacturer or regulator). Products (types of medications) tend to be known by identifiers during development and within regulatory process. However when they are prescribed they tend to be identified by codes. The same product may be have multiple codes, applied to it by multiple organizations.;
  final List<Coding>? _code;

  /// [code] A code that this product is known by, usually within some formal terminology, perhaps assigned by a third party (i.e. not the manufacturer or regulator). Products (types of medications) tend to be known by identifiers during development and within regulatory process. However when they are prescribed they tend to be identified by codes. The same product may be have multiple codes, applied to it by multiple organizations.;
  @override
  List<Coding>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] The product's name, including full name and possibly coded parts.;
  final List<MedicinalProductDefinitionName> _name;

  /// [name] The product's name, including full name and possibly coded parts.;
  @override
  List<MedicinalProductDefinitionName> get name {
    if (_name is EqualUnmodifiableListView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_name);
  }

  /// [crossReference] Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.;
  final List<MedicinalProductDefinitionCrossReference>? _crossReference;

  /// [crossReference] Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.;
  @override
  List<MedicinalProductDefinitionCrossReference>? get crossReference {
    final value = _crossReference;
    if (value == null) return null;
    if (_crossReference is EqualUnmodifiableListView) return _crossReference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [operation] A manufacturing or administrative process or step associated with (or performed on) the medicinal product.;
  final List<MedicinalProductDefinitionOperation>? _operation;

  /// [operation] A manufacturing or administrative process or step associated with (or performed on) the medicinal product.;
  @override
  List<MedicinalProductDefinitionOperation>? get operation {
    final value = _operation;
    if (value == null) return null;
    if (_operation is EqualUnmodifiableListView) return _operation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [characteristic] Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".;
  final List<MedicinalProductDefinitionCharacteristic>? _characteristic;

  /// [characteristic] Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".;
  @override
  List<MedicinalProductDefinitionCharacteristic>? get characteristic {
    final value = _characteristic;
    if (value == null) return null;
    if (_characteristic is EqualUnmodifiableListView) return _characteristic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinalProductDefinitionImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.statusDateElement, statusDateElement) ||
                other.statusDateElement == statusDateElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.combinedPharmaceuticalDoseForm,
                    combinedPharmaceuticalDoseForm) ||
                other.combinedPharmaceuticalDoseForm ==
                    combinedPharmaceuticalDoseForm) &&
            const DeepCollectionEquality().equals(other._route, _route) &&
            (identical(other.indication, indication) ||
                other.indication == indication) &&
            (identical(other.indicationElement, indicationElement) ||
                other.indicationElement == indicationElement) &&
            (identical(other.legalStatusOfSupply, legalStatusOfSupply) ||
                other.legalStatusOfSupply == legalStatusOfSupply) &&
            (identical(other.additionalMonitoringIndicator, additionalMonitoringIndicator) ||
                other.additionalMonitoringIndicator ==
                    additionalMonitoringIndicator) &&
            const DeepCollectionEquality()
                .equals(other._specialMeasures, _specialMeasures) &&
            (identical(other.pediatricUseIndicator, pediatricUseIndicator) ||
                other.pediatricUseIndicator == pediatricUseIndicator) &&
            const DeepCollectionEquality()
                .equals(other._classification, _classification) &&
            const DeepCollectionEquality()
                .equals(other._marketingStatus, _marketingStatus) &&
            const DeepCollectionEquality().equals(
                other._packagedMedicinalProduct, _packagedMedicinalProduct) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            const DeepCollectionEquality().equals(other._impurity, _impurity) &&
            const DeepCollectionEquality()
                .equals(other._attachedDocument, _attachedDocument) &&
            const DeepCollectionEquality()
                .equals(other._masterFile, _masterFile) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            const DeepCollectionEquality()
                .equals(other._clinicalTrial, _clinicalTrial) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality()
                .equals(other._crossReference, _crossReference) &&
            const DeepCollectionEquality()
                .equals(other._operation, _operation) &&
            const DeepCollectionEquality().equals(other._characteristic, _characteristic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        type,
        domain,
        version,
        versionElement,
        status,
        statusDate,
        statusDateElement,
        description,
        descriptionElement,
        combinedPharmaceuticalDoseForm,
        const DeepCollectionEquality().hash(_route),
        indication,
        indicationElement,
        legalStatusOfSupply,
        additionalMonitoringIndicator,
        const DeepCollectionEquality().hash(_specialMeasures),
        pediatricUseIndicator,
        const DeepCollectionEquality().hash(_classification),
        const DeepCollectionEquality().hash(_marketingStatus),
        const DeepCollectionEquality().hash(_packagedMedicinalProduct),
        const DeepCollectionEquality().hash(_ingredient),
        const DeepCollectionEquality().hash(_impurity),
        const DeepCollectionEquality().hash(_attachedDocument),
        const DeepCollectionEquality().hash(_masterFile),
        const DeepCollectionEquality().hash(_contact),
        const DeepCollectionEquality().hash(_clinicalTrial),
        const DeepCollectionEquality().hash(_code),
        const DeepCollectionEquality().hash(_name),
        const DeepCollectionEquality().hash(_crossReference),
        const DeepCollectionEquality().hash(_operation),
        const DeepCollectionEquality().hash(_characteristic)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinalProductDefinitionImplCopyWith<_$MedicinalProductDefinitionImpl>
      get copyWith => __$$MedicinalProductDefinitionImplCopyWithImpl<
          _$MedicinalProductDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicinalProductDefinitionImplToJson(
      this,
    );
  }
}

abstract class _MedicinalProductDefinition extends MedicinalProductDefinition {
  factory _MedicinalProductDefinition(
      {final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final CodeableConcept? type,
      final CodeableConcept? domain,
      final String? version,
      @JsonKey(name: '_version') final PrimitiveElement? versionElement,
      final CodeableConcept? status,
      final FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') final PrimitiveElement? statusDateElement,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final CodeableConcept? combinedPharmaceuticalDoseForm,
      final List<CodeableConcept>? route,
      final FhirMarkdown? indication,
      @JsonKey(name: '_indication') final PrimitiveElement? indicationElement,
      final CodeableConcept? legalStatusOfSupply,
      final CodeableConcept? additionalMonitoringIndicator,
      final List<CodeableConcept>? specialMeasures,
      final CodeableConcept? pediatricUseIndicator,
      final List<CodeableConcept>? classification,
      final List<MarketingStatus>? marketingStatus,
      final List<CodeableConcept>? packagedMedicinalProduct,
      final List<CodeableConcept>? ingredient,
      final List<CodeableReference>? impurity,
      final List<Reference>? attachedDocument,
      final List<Reference>? masterFile,
      final List<MedicinalProductDefinitionContact>? contact,
      final List<Reference>? clinicalTrial,
      final List<Coding>? code,
      required final List<MedicinalProductDefinitionName> name,
      final List<MedicinalProductDefinitionCrossReference>? crossReference,
      final List<MedicinalProductDefinitionOperation>? operation,
      final List<MedicinalProductDefinitionCharacteristic>?
          characteristic}) = _$MedicinalProductDefinitionImpl;
  _MedicinalProductDefinition._() : super._();

  factory _MedicinalProductDefinition.fromJson(Map<String, dynamic> json) =
      _$MedicinalProductDefinitionImpl.fromJson;

  @override
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.;
  FhirCode? get language;
  @override

  /// [languageElement] (_language): Extensions for language;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Business identifier for this product. Could be an MPID. When in development or being regulated, products are typically referenced by official identifiers, assigned by a manufacturer or regulator, and unique to a product (which, when compared to a product instance being prescribed, is actually a product type). See also MedicinalProductDefinition.code.;
  List<Identifier>? get identifier;
  @override

  /// [type] Regulatory type, e.g. Investigational or Authorized.;
  CodeableConcept? get type;
  @override

  /// [domain] If this medicine applies to human or veterinary uses.;
  CodeableConcept? get domain;
  @override

  /// [version] A business identifier relating to a specific version of the product, this is commonly used to support revisions to an existing product.;
  String? get version;
  @override

  /// [versionElement] (_version): Extensions for version;
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [status] The status within the lifecycle of this product record. A high-level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization status.;
  CodeableConcept? get status;
  @override

  /// [statusDate] The date at which the given status became applicable.;
  FhirDateTime? get statusDate;
  @override

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement;
  @override

  /// [description] General description of this product.;
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [combinedPharmaceuticalDoseForm] The dose form for a single part product, or combined form of a multiple part product. This is one concept that describes all the components. It does not represent the form with components physically mixed, if that might be necessary, for which see (AdministrableProductDefinition.administrableDoseForm).;
  CodeableConcept? get combinedPharmaceuticalDoseForm;
  @override

  /// [route] The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the licenced or approved route. See also AdministrableProductDefinition resource. MedicinalProductDefinition.route is the same concept as AdministrableProductDefinition.routeOfAdministration.code, and they cannot be used together.;
  List<CodeableConcept>? get route;
  @override

  /// [indication] Description of indication(s) for this product, used when structured indications are not required. In cases where structured indications are required, they are captured using the ClinicalUseDefinition resource. An indication is a medical situation for which using the product is appropriate.;
  FhirMarkdown? get indication;
  @override

  /// [indicationElement] (_indication): Extensions for indication;
  @JsonKey(name: '_indication')
  PrimitiveElement? get indicationElement;
  @override

  /// [legalStatusOfSupply] The legal status of supply of the medicinal product as classified by the regulator.;
  CodeableConcept? get legalStatusOfSupply;
  @override

  /// [additionalMonitoringIndicator] Whether the Medicinal Product is subject to additional monitoring for regulatory reasons, such as heightened reporting requirements.;
  CodeableConcept? get additionalMonitoringIndicator;
  @override

  /// [specialMeasures] Whether the Medicinal Product is subject to special measures for regulatory reasons, such as a requirement to conduct post-authorisation studies.;
  List<CodeableConcept>? get specialMeasures;
  @override

  /// [pediatricUseIndicator] If authorised for use in children, or infants, neonates etc.;
  CodeableConcept? get pediatricUseIndicator;
  @override

  /// [classification] Allows the product to be classified by various systems, commonly WHO ATC.;
  List<CodeableConcept>? get classification;
  @override

  /// [marketingStatus] Marketing status of the medicinal product, in contrast to marketing authorization. This refers to the product being actually 'on the market' as opposed to being allowed to be on the market (which is an authorization).;
  List<MarketingStatus>? get marketingStatus;
  @override

  /// [packagedMedicinalProduct] Package type for the product. See also the PackagedProductDefinition resource.;
  List<CodeableConcept>? get packagedMedicinalProduct;
  @override

  /// [ingredient] The ingredients of this medicinal product - when not detailed in other resources. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource, or indirectly via incoming AdministrableProductDefinition, PackagedProductDefinition or ManufacturedItemDefinition references. In cases where those levels of detail are not used, the ingredients may be specified directly here as codes.;
  List<CodeableConcept>? get ingredient;
  @override

  /// [impurity] Any component of the drug product which is not the chemical entity defined as the drug substance, or an excipient in the drug product. This includes process-related impurities and contaminants, product-related impurities including degradation products.;
  List<CodeableReference>? get impurity;
  @override

  /// [attachedDocument] Additional information or supporting documentation about the medicinal product.;
  List<Reference>? get attachedDocument;
  @override

  /// [masterFile] A master file for the medicinal product (e.g. Pharmacovigilance System Master File). Drug master files (DMFs) are documents submitted to regulatory agencies to provide confidential detailed information about facilities, processes or articles used in the manufacturing, processing, packaging and storing of drug products.;
  List<Reference>? get masterFile;
  @override

  /// [contact] A product specific contact, person (in a role), or an organization.;
  List<MedicinalProductDefinitionContact>? get contact;
  @override

  /// [clinicalTrial] Clinical trials or studies that this product is involved in.;
  List<Reference>? get clinicalTrial;
  @override

  /// [code] A code that this product is known by, usually within some formal terminology, perhaps assigned by a third party (i.e. not the manufacturer or regulator). Products (types of medications) tend to be known by identifiers during development and within regulatory process. However when they are prescribed they tend to be identified by codes. The same product may be have multiple codes, applied to it by multiple organizations.;
  List<Coding>? get code;
  @override

  /// [name] The product's name, including full name and possibly coded parts.;
  List<MedicinalProductDefinitionName> get name;
  @override

  /// [crossReference] Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.;
  List<MedicinalProductDefinitionCrossReference>? get crossReference;
  @override

  /// [operation] A manufacturing or administrative process or step associated with (or performed on) the medicinal product.;
  List<MedicinalProductDefinitionOperation>? get operation;
  @override

  /// [characteristic] Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".;
  List<MedicinalProductDefinitionCharacteristic>? get characteristic;
  @override
  @JsonKey(ignore: true)
  _$$MedicinalProductDefinitionImplCopyWith<_$MedicinalProductDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicinalProductDefinitionContact _$MedicinalProductDefinitionContactFromJson(
    Map<String, dynamic> json) {
  return _MedicinalProductDefinitionContact.fromJson(json);
}

/// @nodoc
mixin _$MedicinalProductDefinitionContact {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [contact] A product specific contact, person (in a role), or an organization.;
  Reference get contact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinalProductDefinitionContactCopyWith<MedicinalProductDefinitionContact>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinalProductDefinitionContactCopyWith<$Res> {
  factory $MedicinalProductDefinitionContactCopyWith(
          MedicinalProductDefinitionContact value,
          $Res Function(MedicinalProductDefinitionContact) then) =
      _$MedicinalProductDefinitionContactCopyWithImpl<$Res,
          MedicinalProductDefinitionContact>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Reference contact});

  $CodeableConceptCopyWith<$Res>? get type;
  $ReferenceCopyWith<$Res> get contact;
}

/// @nodoc
class _$MedicinalProductDefinitionContactCopyWithImpl<$Res,
        $Val extends MedicinalProductDefinitionContact>
    implements $MedicinalProductDefinitionContactCopyWith<$Res> {
  _$MedicinalProductDefinitionContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? contact = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Reference,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get contact {
    return $ReferenceCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicinalProductDefinitionContactImplCopyWith<$Res>
    implements $MedicinalProductDefinitionContactCopyWith<$Res> {
  factory _$$MedicinalProductDefinitionContactImplCopyWith(
          _$MedicinalProductDefinitionContactImpl value,
          $Res Function(_$MedicinalProductDefinitionContactImpl) then) =
      __$$MedicinalProductDefinitionContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Reference contact});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $ReferenceCopyWith<$Res> get contact;
}

/// @nodoc
class __$$MedicinalProductDefinitionContactImplCopyWithImpl<$Res>
    extends _$MedicinalProductDefinitionContactCopyWithImpl<$Res,
        _$MedicinalProductDefinitionContactImpl>
    implements _$$MedicinalProductDefinitionContactImplCopyWith<$Res> {
  __$$MedicinalProductDefinitionContactImplCopyWithImpl(
      _$MedicinalProductDefinitionContactImpl _value,
      $Res Function(_$MedicinalProductDefinitionContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? contact = null,
  }) {
    return _then(_$MedicinalProductDefinitionContactImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Reference,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicinalProductDefinitionContactImpl
    extends _MedicinalProductDefinitionContact {
  _$MedicinalProductDefinitionContactImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      required this.contact})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicinalProductDefinitionContactImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicinalProductDefinitionContactImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information.;
  @override
  final CodeableConcept? type;

  /// [contact] A product specific contact, person (in a role), or an organization.;
  @override
  final Reference contact;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinalProductDefinitionContactImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinalProductDefinitionContactImplCopyWith<
          _$MedicinalProductDefinitionContactImpl>
      get copyWith => __$$MedicinalProductDefinitionContactImplCopyWithImpl<
          _$MedicinalProductDefinitionContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicinalProductDefinitionContactImplToJson(
      this,
    );
  }
}

abstract class _MedicinalProductDefinitionContact
    extends MedicinalProductDefinitionContact {
  factory _MedicinalProductDefinitionContact(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          required final Reference contact}) =
      _$MedicinalProductDefinitionContactImpl;
  _MedicinalProductDefinitionContact._() : super._();

  factory _MedicinalProductDefinitionContact.fromJson(
          Map<String, dynamic> json) =
      _$MedicinalProductDefinitionContactImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information.;
  CodeableConcept? get type;
  @override

  /// [contact] A product specific contact, person (in a role), or an organization.;
  Reference get contact;
  @override
  @JsonKey(ignore: true)
  _$$MedicinalProductDefinitionContactImplCopyWith<
          _$MedicinalProductDefinitionContactImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicinalProductDefinitionName _$MedicinalProductDefinitionNameFromJson(
    Map<String, dynamic> json) {
  return _MedicinalProductDefinitionName.fromJson(json);
}

/// @nodoc
mixin _$MedicinalProductDefinitionName {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [productName] The full product name.;
  String? get productName => throw _privateConstructorUsedError;

  /// [productNameElement] (_productName): Extensions for productName;
  @JsonKey(name: '_productName')
  PrimitiveElement? get productNameElement =>
      throw _privateConstructorUsedError;

  /// [type] Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [namePart] Coding words or phrases of the name.;
  List<MedicinalProductDefinitionNamePart>? get namePart =>
      throw _privateConstructorUsedError;

  /// [countryLanguage] Country and jurisdiction where the name applies, and associated language.;
  List<MedicinalProductDefinitionCountryLanguage>? get countryLanguage =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinalProductDefinitionNameCopyWith<MedicinalProductDefinitionName>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinalProductDefinitionNameCopyWith<$Res> {
  factory $MedicinalProductDefinitionNameCopyWith(
          MedicinalProductDefinitionName value,
          $Res Function(MedicinalProductDefinitionName) then) =
      _$MedicinalProductDefinitionNameCopyWithImpl<$Res,
          MedicinalProductDefinitionName>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? productName,
      @JsonKey(name: '_productName') PrimitiveElement? productNameElement,
      CodeableConcept? type,
      List<MedicinalProductDefinitionNamePart>? namePart,
      List<MedicinalProductDefinitionCountryLanguage>? countryLanguage});

  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class _$MedicinalProductDefinitionNameCopyWithImpl<$Res,
        $Val extends MedicinalProductDefinitionName>
    implements $MedicinalProductDefinitionNameCopyWith<$Res> {
  _$MedicinalProductDefinitionNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? productName = freezed,
    Object? productNameElement = freezed,
    Object? type = freezed,
    Object? namePart = freezed,
    Object? countryLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productNameElement: freezed == productNameElement
          ? _value.productNameElement
          : productNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      namePart: freezed == namePart
          ? _value.namePart
          : namePart // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionNamePart>?,
      countryLanguage: freezed == countryLanguage
          ? _value.countryLanguage
          : countryLanguage // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionCountryLanguage>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicinalProductDefinitionNameImplCopyWith<$Res>
    implements $MedicinalProductDefinitionNameCopyWith<$Res> {
  factory _$$MedicinalProductDefinitionNameImplCopyWith(
          _$MedicinalProductDefinitionNameImpl value,
          $Res Function(_$MedicinalProductDefinitionNameImpl) then) =
      __$$MedicinalProductDefinitionNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? productName,
      @JsonKey(name: '_productName') PrimitiveElement? productNameElement,
      CodeableConcept? type,
      List<MedicinalProductDefinitionNamePart>? namePart,
      List<MedicinalProductDefinitionCountryLanguage>? countryLanguage});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class __$$MedicinalProductDefinitionNameImplCopyWithImpl<$Res>
    extends _$MedicinalProductDefinitionNameCopyWithImpl<$Res,
        _$MedicinalProductDefinitionNameImpl>
    implements _$$MedicinalProductDefinitionNameImplCopyWith<$Res> {
  __$$MedicinalProductDefinitionNameImplCopyWithImpl(
      _$MedicinalProductDefinitionNameImpl _value,
      $Res Function(_$MedicinalProductDefinitionNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? productName = freezed,
    Object? productNameElement = freezed,
    Object? type = freezed,
    Object? namePart = freezed,
    Object? countryLanguage = freezed,
  }) {
    return _then(_$MedicinalProductDefinitionNameImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productNameElement: freezed == productNameElement
          ? _value.productNameElement
          : productNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      namePart: freezed == namePart
          ? _value._namePart
          : namePart // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionNamePart>?,
      countryLanguage: freezed == countryLanguage
          ? _value._countryLanguage
          : countryLanguage // ignore: cast_nullable_to_non_nullable
              as List<MedicinalProductDefinitionCountryLanguage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicinalProductDefinitionNameImpl
    extends _MedicinalProductDefinitionName {
  _$MedicinalProductDefinitionNameImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.productName,
      @JsonKey(name: '_productName') this.productNameElement,
      this.type,
      final List<MedicinalProductDefinitionNamePart>? namePart,
      final List<MedicinalProductDefinitionCountryLanguage>? countryLanguage})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _namePart = namePart,
        _countryLanguage = countryLanguage,
        super._();

  factory _$MedicinalProductDefinitionNameImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicinalProductDefinitionNameImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [productName] The full product name.;
  @override
  final String? productName;

  /// [productNameElement] (_productName): Extensions for productName;
  @override
  @JsonKey(name: '_productName')
  final PrimitiveElement? productNameElement;

  /// [type] Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.;
  @override
  final CodeableConcept? type;

  /// [namePart] Coding words or phrases of the name.;
  final List<MedicinalProductDefinitionNamePart>? _namePart;

  /// [namePart] Coding words or phrases of the name.;
  @override
  List<MedicinalProductDefinitionNamePart>? get namePart {
    final value = _namePart;
    if (value == null) return null;
    if (_namePart is EqualUnmodifiableListView) return _namePart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [countryLanguage] Country and jurisdiction where the name applies, and associated language.;
  final List<MedicinalProductDefinitionCountryLanguage>? _countryLanguage;

  /// [countryLanguage] Country and jurisdiction where the name applies, and associated language.;
  @override
  List<MedicinalProductDefinitionCountryLanguage>? get countryLanguage {
    final value = _countryLanguage;
    if (value == null) return null;
    if (_countryLanguage is EqualUnmodifiableListView) return _countryLanguage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinalProductDefinitionNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productNameElement, productNameElement) ||
                other.productNameElement == productNameElement) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._namePart, _namePart) &&
            const DeepCollectionEquality()
                .equals(other._countryLanguage, _countryLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      productName,
      productNameElement,
      type,
      const DeepCollectionEquality().hash(_namePart),
      const DeepCollectionEquality().hash(_countryLanguage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinalProductDefinitionNameImplCopyWith<
          _$MedicinalProductDefinitionNameImpl>
      get copyWith => __$$MedicinalProductDefinitionNameImplCopyWithImpl<
          _$MedicinalProductDefinitionNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicinalProductDefinitionNameImplToJson(
      this,
    );
  }
}

abstract class _MedicinalProductDefinitionName
    extends MedicinalProductDefinitionName {
  factory _MedicinalProductDefinitionName(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? productName,
      @JsonKey(name: '_productName') final PrimitiveElement? productNameElement,
      final CodeableConcept? type,
      final List<MedicinalProductDefinitionNamePart>? namePart,
      final List<MedicinalProductDefinitionCountryLanguage>?
          countryLanguage}) = _$MedicinalProductDefinitionNameImpl;
  _MedicinalProductDefinitionName._() : super._();

  factory _MedicinalProductDefinitionName.fromJson(Map<String, dynamic> json) =
      _$MedicinalProductDefinitionNameImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [productName] The full product name.;
  String? get productName;
  @override

  /// [productNameElement] (_productName): Extensions for productName;
  @JsonKey(name: '_productName')
  PrimitiveElement? get productNameElement;
  @override

  /// [type] Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.;
  CodeableConcept? get type;
  @override

  /// [namePart] Coding words or phrases of the name.;
  List<MedicinalProductDefinitionNamePart>? get namePart;
  @override

  /// [countryLanguage] Country and jurisdiction where the name applies, and associated language.;
  List<MedicinalProductDefinitionCountryLanguage>? get countryLanguage;
  @override
  @JsonKey(ignore: true)
  _$$MedicinalProductDefinitionNameImplCopyWith<
          _$MedicinalProductDefinitionNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicinalProductDefinitionNamePart _$MedicinalProductDefinitionNamePartFromJson(
    Map<String, dynamic> json) {
  return _MedicinalProductDefinitionNamePart.fromJson(json);
}

/// @nodoc
mixin _$MedicinalProductDefinitionNamePart {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [part] A fragment of a product name.;
  @JsonKey(name: 'part')
  String? get part_ => throw _privateConstructorUsedError;

  /// [partElement] (_part): Extensions for part;
  @JsonKey(name: '_part')
  PrimitiveElement? get partElement => throw _privateConstructorUsedError;

  /// [type] Identifying type for this part of the name (e.g. strength part).;
  CodeableConcept get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinalProductDefinitionNamePartCopyWith<
          MedicinalProductDefinitionNamePart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinalProductDefinitionNamePartCopyWith<$Res> {
  factory $MedicinalProductDefinitionNamePartCopyWith(
          MedicinalProductDefinitionNamePart value,
          $Res Function(MedicinalProductDefinitionNamePart) then) =
      _$MedicinalProductDefinitionNamePartCopyWithImpl<$Res,
          MedicinalProductDefinitionNamePart>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      @JsonKey(name: 'part') String? part_,
      @JsonKey(name: '_part') PrimitiveElement? partElement,
      CodeableConcept type});

  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class _$MedicinalProductDefinitionNamePartCopyWithImpl<$Res,
        $Val extends MedicinalProductDefinitionNamePart>
    implements $MedicinalProductDefinitionNamePartCopyWith<$Res> {
  _$MedicinalProductDefinitionNamePartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? part_ = freezed,
    Object? partElement = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      part_: freezed == part_
          ? _value.part_
          : part_ // ignore: cast_nullable_to_non_nullable
              as String?,
      partElement: freezed == partElement
          ? _value.partElement
          : partElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicinalProductDefinitionNamePartImplCopyWith<$Res>
    implements $MedicinalProductDefinitionNamePartCopyWith<$Res> {
  factory _$$MedicinalProductDefinitionNamePartImplCopyWith(
          _$MedicinalProductDefinitionNamePartImpl value,
          $Res Function(_$MedicinalProductDefinitionNamePartImpl) then) =
      __$$MedicinalProductDefinitionNamePartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      @JsonKey(name: 'part') String? part_,
      @JsonKey(name: '_part') PrimitiveElement? partElement,
      CodeableConcept type});

  @override
  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class __$$MedicinalProductDefinitionNamePartImplCopyWithImpl<$Res>
    extends _$MedicinalProductDefinitionNamePartCopyWithImpl<$Res,
        _$MedicinalProductDefinitionNamePartImpl>
    implements _$$MedicinalProductDefinitionNamePartImplCopyWith<$Res> {
  __$$MedicinalProductDefinitionNamePartImplCopyWithImpl(
      _$MedicinalProductDefinitionNamePartImpl _value,
      $Res Function(_$MedicinalProductDefinitionNamePartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? part_ = freezed,
    Object? partElement = freezed,
    Object? type = null,
  }) {
    return _then(_$MedicinalProductDefinitionNamePartImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      part_: freezed == part_
          ? _value.part_
          : part_ // ignore: cast_nullable_to_non_nullable
              as String?,
      partElement: freezed == partElement
          ? _value.partElement
          : partElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicinalProductDefinitionNamePartImpl
    extends _MedicinalProductDefinitionNamePart {
  _$MedicinalProductDefinitionNamePartImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      @JsonKey(name: 'part') this.part_,
      @JsonKey(name: '_part') this.partElement,
      required this.type})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicinalProductDefinitionNamePartImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicinalProductDefinitionNamePartImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [part] A fragment of a product name.;
  @override
  @JsonKey(name: 'part')
  final String? part_;

  /// [partElement] (_part): Extensions for part;
  @override
  @JsonKey(name: '_part')
  final PrimitiveElement? partElement;

  /// [type] Identifying type for this part of the name (e.g. strength part).;
  @override
  final CodeableConcept type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinalProductDefinitionNamePartImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.part_, part_) || other.part_ == part_) &&
            (identical(other.partElement, partElement) ||
                other.partElement == partElement) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      part_,
      partElement,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinalProductDefinitionNamePartImplCopyWith<
          _$MedicinalProductDefinitionNamePartImpl>
      get copyWith => __$$MedicinalProductDefinitionNamePartImplCopyWithImpl<
          _$MedicinalProductDefinitionNamePartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicinalProductDefinitionNamePartImplToJson(
      this,
    );
  }
}

abstract class _MedicinalProductDefinitionNamePart
    extends MedicinalProductDefinitionNamePart {
  factory _MedicinalProductDefinitionNamePart(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          @JsonKey(name: 'part') final String? part_,
          @JsonKey(name: '_part') final PrimitiveElement? partElement,
          required final CodeableConcept type}) =
      _$MedicinalProductDefinitionNamePartImpl;
  _MedicinalProductDefinitionNamePart._() : super._();

  factory _MedicinalProductDefinitionNamePart.fromJson(
          Map<String, dynamic> json) =
      _$MedicinalProductDefinitionNamePartImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [part] A fragment of a product name.;
  @JsonKey(name: 'part')
  String? get part_;
  @override

  /// [partElement] (_part): Extensions for part;
  @JsonKey(name: '_part')
  PrimitiveElement? get partElement;
  @override

  /// [type] Identifying type for this part of the name (e.g. strength part).;
  CodeableConcept get type;
  @override
  @JsonKey(ignore: true)
  _$$MedicinalProductDefinitionNamePartImplCopyWith<
          _$MedicinalProductDefinitionNamePartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicinalProductDefinitionCountryLanguage
    _$MedicinalProductDefinitionCountryLanguageFromJson(
        Map<String, dynamic> json) {
  return _MedicinalProductDefinitionCountryLanguage.fromJson(json);
}

/// @nodoc
mixin _$MedicinalProductDefinitionCountryLanguage {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [country] Country code for where this name applies.;
  CodeableConcept get country => throw _privateConstructorUsedError;

  /// [jurisdiction] Jurisdiction code for where this name applies. A jurisdiction may be a sub- or supra-national entity (e.g. a state or a geographic region).;
  CodeableConcept? get jurisdiction => throw _privateConstructorUsedError;

  /// [language] Language code for this name.;
  CodeableConcept get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinalProductDefinitionCountryLanguageCopyWith<
          MedicinalProductDefinitionCountryLanguage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinalProductDefinitionCountryLanguageCopyWith<$Res> {
  factory $MedicinalProductDefinitionCountryLanguageCopyWith(
          MedicinalProductDefinitionCountryLanguage value,
          $Res Function(MedicinalProductDefinitionCountryLanguage) then) =
      _$MedicinalProductDefinitionCountryLanguageCopyWithImpl<$Res,
          MedicinalProductDefinitionCountryLanguage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept country,
      CodeableConcept? jurisdiction,
      CodeableConcept language});

  $CodeableConceptCopyWith<$Res> get country;
  $CodeableConceptCopyWith<$Res>? get jurisdiction;
  $CodeableConceptCopyWith<$Res> get language;
}

/// @nodoc
class _$MedicinalProductDefinitionCountryLanguageCopyWithImpl<$Res,
        $Val extends MedicinalProductDefinitionCountryLanguage>
    implements $MedicinalProductDefinitionCountryLanguageCopyWith<$Res> {
  _$MedicinalProductDefinitionCountryLanguageCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? country = null,
    Object? jurisdiction = freezed,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get country {
    return $CodeableConceptCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get jurisdiction {
    if (_value.jurisdiction == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.jurisdiction!, (value) {
      return _then(_value.copyWith(jurisdiction: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get language {
    return $CodeableConceptCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicinalProductDefinitionCountryLanguageImplCopyWith<$Res>
    implements $MedicinalProductDefinitionCountryLanguageCopyWith<$Res> {
  factory _$$MedicinalProductDefinitionCountryLanguageImplCopyWith(
          _$MedicinalProductDefinitionCountryLanguageImpl value,
          $Res Function(_$MedicinalProductDefinitionCountryLanguageImpl) then) =
      __$$MedicinalProductDefinitionCountryLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept country,
      CodeableConcept? jurisdiction,
      CodeableConcept language});

  @override
  $CodeableConceptCopyWith<$Res> get country;
  @override
  $CodeableConceptCopyWith<$Res>? get jurisdiction;
  @override
  $CodeableConceptCopyWith<$Res> get language;
}

/// @nodoc
class __$$MedicinalProductDefinitionCountryLanguageImplCopyWithImpl<$Res>
    extends _$MedicinalProductDefinitionCountryLanguageCopyWithImpl<$Res,
        _$MedicinalProductDefinitionCountryLanguageImpl>
    implements _$$MedicinalProductDefinitionCountryLanguageImplCopyWith<$Res> {
  __$$MedicinalProductDefinitionCountryLanguageImplCopyWithImpl(
      _$MedicinalProductDefinitionCountryLanguageImpl _value,
      $Res Function(_$MedicinalProductDefinitionCountryLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? country = null,
    Object? jurisdiction = freezed,
    Object? language = null,
  }) {
    return _then(_$MedicinalProductDefinitionCountryLanguageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicinalProductDefinitionCountryLanguageImpl
    extends _MedicinalProductDefinitionCountryLanguage {
  _$MedicinalProductDefinitionCountryLanguageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.country,
      this.jurisdiction,
      required this.language})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicinalProductDefinitionCountryLanguageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicinalProductDefinitionCountryLanguageImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [country] Country code for where this name applies.;
  @override
  final CodeableConcept country;

  /// [jurisdiction] Jurisdiction code for where this name applies. A jurisdiction may be a sub- or supra-national entity (e.g. a state or a geographic region).;
  @override
  final CodeableConcept? jurisdiction;

  /// [language] Language code for this name.;
  @override
  final CodeableConcept language;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinalProductDefinitionCountryLanguageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      country,
      jurisdiction,
      language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinalProductDefinitionCountryLanguageImplCopyWith<
          _$MedicinalProductDefinitionCountryLanguageImpl>
      get copyWith =>
          __$$MedicinalProductDefinitionCountryLanguageImplCopyWithImpl<
                  _$MedicinalProductDefinitionCountryLanguageImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicinalProductDefinitionCountryLanguageImplToJson(
      this,
    );
  }
}

abstract class _MedicinalProductDefinitionCountryLanguage
    extends MedicinalProductDefinitionCountryLanguage {
  factory _MedicinalProductDefinitionCountryLanguage(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept country,
          final CodeableConcept? jurisdiction,
          required final CodeableConcept language}) =
      _$MedicinalProductDefinitionCountryLanguageImpl;
  _MedicinalProductDefinitionCountryLanguage._() : super._();

  factory _MedicinalProductDefinitionCountryLanguage.fromJson(
          Map<String, dynamic> json) =
      _$MedicinalProductDefinitionCountryLanguageImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [country] Country code for where this name applies.;
  CodeableConcept get country;
  @override

  /// [jurisdiction] Jurisdiction code for where this name applies. A jurisdiction may be a sub- or supra-national entity (e.g. a state or a geographic region).;
  CodeableConcept? get jurisdiction;
  @override

  /// [language] Language code for this name.;
  CodeableConcept get language;
  @override
  @JsonKey(ignore: true)
  _$$MedicinalProductDefinitionCountryLanguageImplCopyWith<
          _$MedicinalProductDefinitionCountryLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicinalProductDefinitionCrossReference
    _$MedicinalProductDefinitionCrossReferenceFromJson(
        Map<String, dynamic> json) {
  return _MedicinalProductDefinitionCrossReference.fromJson(json);
}

/// @nodoc
mixin _$MedicinalProductDefinitionCrossReference {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [product] Reference to another product, e.g. for linking authorised to investigational product.;
  CodeableReference get product => throw _privateConstructorUsedError;

  /// [type] The type of relationship, for instance branded to generic, virtual to actual product, product to development product (investigational), parallel import version.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinalProductDefinitionCrossReferenceCopyWith<
          MedicinalProductDefinitionCrossReference>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinalProductDefinitionCrossReferenceCopyWith<$Res> {
  factory $MedicinalProductDefinitionCrossReferenceCopyWith(
          MedicinalProductDefinitionCrossReference value,
          $Res Function(MedicinalProductDefinitionCrossReference) then) =
      _$MedicinalProductDefinitionCrossReferenceCopyWithImpl<$Res,
          MedicinalProductDefinitionCrossReference>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference product,
      CodeableConcept? type});

  $CodeableReferenceCopyWith<$Res> get product;
  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class _$MedicinalProductDefinitionCrossReferenceCopyWithImpl<$Res,
        $Val extends MedicinalProductDefinitionCrossReference>
    implements $MedicinalProductDefinitionCrossReferenceCopyWith<$Res> {
  _$MedicinalProductDefinitionCrossReferenceCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? product = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CodeableReference,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res> get product {
    return $CodeableReferenceCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicinalProductDefinitionCrossReferenceImplCopyWith<$Res>
    implements $MedicinalProductDefinitionCrossReferenceCopyWith<$Res> {
  factory _$$MedicinalProductDefinitionCrossReferenceImplCopyWith(
          _$MedicinalProductDefinitionCrossReferenceImpl value,
          $Res Function(_$MedicinalProductDefinitionCrossReferenceImpl) then) =
      __$$MedicinalProductDefinitionCrossReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference product,
      CodeableConcept? type});

  @override
  $CodeableReferenceCopyWith<$Res> get product;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class __$$MedicinalProductDefinitionCrossReferenceImplCopyWithImpl<$Res>
    extends _$MedicinalProductDefinitionCrossReferenceCopyWithImpl<$Res,
        _$MedicinalProductDefinitionCrossReferenceImpl>
    implements _$$MedicinalProductDefinitionCrossReferenceImplCopyWith<$Res> {
  __$$MedicinalProductDefinitionCrossReferenceImplCopyWithImpl(
      _$MedicinalProductDefinitionCrossReferenceImpl _value,
      $Res Function(_$MedicinalProductDefinitionCrossReferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? product = null,
    Object? type = freezed,
  }) {
    return _then(_$MedicinalProductDefinitionCrossReferenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CodeableReference,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicinalProductDefinitionCrossReferenceImpl
    extends _MedicinalProductDefinitionCrossReference {
  _$MedicinalProductDefinitionCrossReferenceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.product,
      this.type})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicinalProductDefinitionCrossReferenceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicinalProductDefinitionCrossReferenceImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [product] Reference to another product, e.g. for linking authorised to investigational product.;
  @override
  final CodeableReference product;

  /// [type] The type of relationship, for instance branded to generic, virtual to actual product, product to development product (investigational), parallel import version.;
  @override
  final CodeableConcept? type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinalProductDefinitionCrossReferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      product,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinalProductDefinitionCrossReferenceImplCopyWith<
          _$MedicinalProductDefinitionCrossReferenceImpl>
      get copyWith =>
          __$$MedicinalProductDefinitionCrossReferenceImplCopyWithImpl<
              _$MedicinalProductDefinitionCrossReferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicinalProductDefinitionCrossReferenceImplToJson(
      this,
    );
  }
}

abstract class _MedicinalProductDefinitionCrossReference
    extends MedicinalProductDefinitionCrossReference {
  factory _MedicinalProductDefinitionCrossReference(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableReference product,
          final CodeableConcept? type}) =
      _$MedicinalProductDefinitionCrossReferenceImpl;
  _MedicinalProductDefinitionCrossReference._() : super._();

  factory _MedicinalProductDefinitionCrossReference.fromJson(
          Map<String, dynamic> json) =
      _$MedicinalProductDefinitionCrossReferenceImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [product] Reference to another product, e.g. for linking authorised to investigational product.;
  CodeableReference get product;
  @override

  /// [type] The type of relationship, for instance branded to generic, virtual to actual product, product to development product (investigational), parallel import version.;
  CodeableConcept? get type;
  @override
  @JsonKey(ignore: true)
  _$$MedicinalProductDefinitionCrossReferenceImplCopyWith<
          _$MedicinalProductDefinitionCrossReferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicinalProductDefinitionOperation
    _$MedicinalProductDefinitionOperationFromJson(Map<String, dynamic> json) {
  return _MedicinalProductDefinitionOperation.fromJson(json);
}

/// @nodoc
mixin _$MedicinalProductDefinitionOperation {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The type of manufacturing operation e.g. manufacturing itself, re-packaging. For the authorization of this, a RegulatedAuthorization would point to the same plan or activity referenced here.;
  CodeableReference? get type => throw _privateConstructorUsedError;

  /// [effectiveDate] Date range of applicability.;
  Period? get effectiveDate => throw _privateConstructorUsedError;

  /// [organization] The organization or establishment responsible for (or associated with) the particular process or step, examples include the manufacturer, importer, agent.;
  List<Reference>? get organization => throw _privateConstructorUsedError;

  /// [confidentialityIndicator] Specifies whether this particular business or manufacturing process is considered proprietary or confidential.;
  CodeableConcept? get confidentialityIndicator =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinalProductDefinitionOperationCopyWith<
          MedicinalProductDefinitionOperation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinalProductDefinitionOperationCopyWith<$Res> {
  factory $MedicinalProductDefinitionOperationCopyWith(
          MedicinalProductDefinitionOperation value,
          $Res Function(MedicinalProductDefinitionOperation) then) =
      _$MedicinalProductDefinitionOperationCopyWithImpl<$Res,
          MedicinalProductDefinitionOperation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? type,
      Period? effectiveDate,
      List<Reference>? organization,
      CodeableConcept? confidentialityIndicator});

  $CodeableReferenceCopyWith<$Res>? get type;
  $PeriodCopyWith<$Res>? get effectiveDate;
  $CodeableConceptCopyWith<$Res>? get confidentialityIndicator;
}

/// @nodoc
class _$MedicinalProductDefinitionOperationCopyWithImpl<$Res,
        $Val extends MedicinalProductDefinitionOperation>
    implements $MedicinalProductDefinitionOperationCopyWith<$Res> {
  _$MedicinalProductDefinitionOperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? effectiveDate = freezed,
    Object? organization = freezed,
    Object? confidentialityIndicator = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as Period?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      confidentialityIndicator: freezed == confidentialityIndicator
          ? _value.confidentialityIndicator
          : confidentialityIndicator // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get effectiveDate {
    if (_value.effectiveDate == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.effectiveDate!, (value) {
      return _then(_value.copyWith(effectiveDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get confidentialityIndicator {
    if (_value.confidentialityIndicator == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.confidentialityIndicator!,
        (value) {
      return _then(_value.copyWith(confidentialityIndicator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicinalProductDefinitionOperationImplCopyWith<$Res>
    implements $MedicinalProductDefinitionOperationCopyWith<$Res> {
  factory _$$MedicinalProductDefinitionOperationImplCopyWith(
          _$MedicinalProductDefinitionOperationImpl value,
          $Res Function(_$MedicinalProductDefinitionOperationImpl) then) =
      __$$MedicinalProductDefinitionOperationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? type,
      Period? effectiveDate,
      List<Reference>? organization,
      CodeableConcept? confidentialityIndicator});

  @override
  $CodeableReferenceCopyWith<$Res>? get type;
  @override
  $PeriodCopyWith<$Res>? get effectiveDate;
  @override
  $CodeableConceptCopyWith<$Res>? get confidentialityIndicator;
}

/// @nodoc
class __$$MedicinalProductDefinitionOperationImplCopyWithImpl<$Res>
    extends _$MedicinalProductDefinitionOperationCopyWithImpl<$Res,
        _$MedicinalProductDefinitionOperationImpl>
    implements _$$MedicinalProductDefinitionOperationImplCopyWith<$Res> {
  __$$MedicinalProductDefinitionOperationImplCopyWithImpl(
      _$MedicinalProductDefinitionOperationImpl _value,
      $Res Function(_$MedicinalProductDefinitionOperationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? effectiveDate = freezed,
    Object? organization = freezed,
    Object? confidentialityIndicator = freezed,
  }) {
    return _then(_$MedicinalProductDefinitionOperationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as Period?,
      organization: freezed == organization
          ? _value._organization
          : organization // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      confidentialityIndicator: freezed == confidentialityIndicator
          ? _value.confidentialityIndicator
          : confidentialityIndicator // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicinalProductDefinitionOperationImpl
    extends _MedicinalProductDefinitionOperation {
  _$MedicinalProductDefinitionOperationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.effectiveDate,
      final List<Reference>? organization,
      this.confidentialityIndicator})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _organization = organization,
        super._();

  factory _$MedicinalProductDefinitionOperationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicinalProductDefinitionOperationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type of manufacturing operation e.g. manufacturing itself, re-packaging. For the authorization of this, a RegulatedAuthorization would point to the same plan or activity referenced here.;
  @override
  final CodeableReference? type;

  /// [effectiveDate] Date range of applicability.;
  @override
  final Period? effectiveDate;

  /// [organization] The organization or establishment responsible for (or associated with) the particular process or step, examples include the manufacturer, importer, agent.;
  final List<Reference>? _organization;

  /// [organization] The organization or establishment responsible for (or associated with) the particular process or step, examples include the manufacturer, importer, agent.;
  @override
  List<Reference>? get organization {
    final value = _organization;
    if (value == null) return null;
    if (_organization is EqualUnmodifiableListView) return _organization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [confidentialityIndicator] Specifies whether this particular business or manufacturing process is considered proprietary or confidential.;
  @override
  final CodeableConcept? confidentialityIndicator;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinalProductDefinitionOperationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            const DeepCollectionEquality()
                .equals(other._organization, _organization) &&
            (identical(
                    other.confidentialityIndicator, confidentialityIndicator) ||
                other.confidentialityIndicator == confidentialityIndicator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      effectiveDate,
      const DeepCollectionEquality().hash(_organization),
      confidentialityIndicator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinalProductDefinitionOperationImplCopyWith<
          _$MedicinalProductDefinitionOperationImpl>
      get copyWith => __$$MedicinalProductDefinitionOperationImplCopyWithImpl<
          _$MedicinalProductDefinitionOperationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicinalProductDefinitionOperationImplToJson(
      this,
    );
  }
}

abstract class _MedicinalProductDefinitionOperation
    extends MedicinalProductDefinitionOperation {
  factory _MedicinalProductDefinitionOperation(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableReference? type,
          final Period? effectiveDate,
          final List<Reference>? organization,
          final CodeableConcept? confidentialityIndicator}) =
      _$MedicinalProductDefinitionOperationImpl;
  _MedicinalProductDefinitionOperation._() : super._();

  factory _MedicinalProductDefinitionOperation.fromJson(
          Map<String, dynamic> json) =
      _$MedicinalProductDefinitionOperationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] The type of manufacturing operation e.g. manufacturing itself, re-packaging. For the authorization of this, a RegulatedAuthorization would point to the same plan or activity referenced here.;
  CodeableReference? get type;
  @override

  /// [effectiveDate] Date range of applicability.;
  Period? get effectiveDate;
  @override

  /// [organization] The organization or establishment responsible for (or associated with) the particular process or step, examples include the manufacturer, importer, agent.;
  List<Reference>? get organization;
  @override

  /// [confidentialityIndicator] Specifies whether this particular business or manufacturing process is considered proprietary or confidential.;
  CodeableConcept? get confidentialityIndicator;
  @override
  @JsonKey(ignore: true)
  _$$MedicinalProductDefinitionOperationImplCopyWith<
          _$MedicinalProductDefinitionOperationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicinalProductDefinitionCharacteristic
    _$MedicinalProductDefinitionCharacteristicFromJson(
        Map<String, dynamic> json) {
  return _MedicinalProductDefinitionCharacteristic.fromJson(json);
}

/// @nodoc
mixin _$MedicinalProductDefinitionCharacteristic {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] A code expressing the type of characteristic.;
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [valueCodeableConcept] A value for the characteristic.text.;
  CodeableConcept? get valueCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [valueQuantity] A value for the characteristic.text.;
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueDate] A value for the characteristic.text.;
  FhirDate? get valueDate => throw _privateConstructorUsedError;

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement => throw _privateConstructorUsedError;

  /// [valueBoolean] A value for the characteristic.text.;
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueAttachment] A value for the characteristic.text.;
  Attachment? get valueAttachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinalProductDefinitionCharacteristicCopyWith<
          MedicinalProductDefinitionCharacteristic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinalProductDefinitionCharacteristicCopyWith<$Res> {
  factory $MedicinalProductDefinitionCharacteristicCopyWith(
          MedicinalProductDefinitionCharacteristic value,
          $Res Function(MedicinalProductDefinitionCharacteristic) then) =
      _$MedicinalProductDefinitionCharacteristicCopyWithImpl<$Res,
          MedicinalProductDefinitionCharacteristic>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      CodeableConcept? valueCodeableConcept,
      Quantity? valueQuantity,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      Attachment? valueAttachment});

  $CodeableConceptCopyWith<$Res> get type;
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  $QuantityCopyWith<$Res>? get valueQuantity;
  $AttachmentCopyWith<$Res>? get valueAttachment;
}

/// @nodoc
class _$MedicinalProductDefinitionCharacteristicCopyWithImpl<$Res,
        $Val extends MedicinalProductDefinitionCharacteristic>
    implements $MedicinalProductDefinitionCharacteristicCopyWith<$Res> {
  _$MedicinalProductDefinitionCharacteristicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? valueCodeableConcept = freezed,
    Object? valueQuantity = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueAttachment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_value.valueCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.valueCodeableConcept!,
        (value) {
      return _then(_value.copyWith(valueCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get valueQuantity {
    if (_value.valueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.valueQuantity!, (value) {
      return _then(_value.copyWith(valueQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get valueAttachment {
    if (_value.valueAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.valueAttachment!, (value) {
      return _then(_value.copyWith(valueAttachment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicinalProductDefinitionCharacteristicImplCopyWith<$Res>
    implements $MedicinalProductDefinitionCharacteristicCopyWith<$Res> {
  factory _$$MedicinalProductDefinitionCharacteristicImplCopyWith(
          _$MedicinalProductDefinitionCharacteristicImpl value,
          $Res Function(_$MedicinalProductDefinitionCharacteristicImpl) then) =
      __$$MedicinalProductDefinitionCharacteristicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      CodeableConcept? valueCodeableConcept,
      Quantity? valueQuantity,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      Attachment? valueAttachment});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  @override
  $QuantityCopyWith<$Res>? get valueQuantity;
  @override
  $AttachmentCopyWith<$Res>? get valueAttachment;
}

/// @nodoc
class __$$MedicinalProductDefinitionCharacteristicImplCopyWithImpl<$Res>
    extends _$MedicinalProductDefinitionCharacteristicCopyWithImpl<$Res,
        _$MedicinalProductDefinitionCharacteristicImpl>
    implements _$$MedicinalProductDefinitionCharacteristicImplCopyWith<$Res> {
  __$$MedicinalProductDefinitionCharacteristicImplCopyWithImpl(
      _$MedicinalProductDefinitionCharacteristicImpl _value,
      $Res Function(_$MedicinalProductDefinitionCharacteristicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? valueCodeableConcept = freezed,
    Object? valueQuantity = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueAttachment = freezed,
  }) {
    return _then(_$MedicinalProductDefinitionCharacteristicImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicinalProductDefinitionCharacteristicImpl
    extends _MedicinalProductDefinitionCharacteristic {
  _$MedicinalProductDefinitionCharacteristicImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.valueCodeableConcept,
      this.valueQuantity,
      this.valueDate,
      @JsonKey(name: '_valueDate') this.valueDateElement,
      this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      this.valueAttachment})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicinalProductDefinitionCharacteristicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicinalProductDefinitionCharacteristicImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] A code expressing the type of characteristic.;
  @override
  final CodeableConcept type;

  /// [valueCodeableConcept] A value for the characteristic.text.;
  @override
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] A value for the characteristic.text.;
  @override
  final Quantity? valueQuantity;

  /// [valueDate] A value for the characteristic.text.;
  @override
  final FhirDate? valueDate;

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @override
  @JsonKey(name: '_valueDate')
  final PrimitiveElement? valueDateElement;

  /// [valueBoolean] A value for the characteristic.text.;
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueAttachment] A value for the characteristic.text.;
  @override
  final Attachment? valueAttachment;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicinalProductDefinitionCharacteristicImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.valueCodeableConcept, valueCodeableConcept) ||
                other.valueCodeableConcept == valueCodeableConcept) &&
            (identical(other.valueQuantity, valueQuantity) ||
                other.valueQuantity == valueQuantity) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.valueDateElement, valueDateElement) ||
                other.valueDateElement == valueDateElement) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueAttachment, valueAttachment) ||
                other.valueAttachment == valueAttachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      valueCodeableConcept,
      valueQuantity,
      valueDate,
      valueDateElement,
      valueBoolean,
      valueBooleanElement,
      valueAttachment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicinalProductDefinitionCharacteristicImplCopyWith<
          _$MedicinalProductDefinitionCharacteristicImpl>
      get copyWith =>
          __$$MedicinalProductDefinitionCharacteristicImplCopyWithImpl<
              _$MedicinalProductDefinitionCharacteristicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicinalProductDefinitionCharacteristicImplToJson(
      this,
    );
  }
}

abstract class _MedicinalProductDefinitionCharacteristic
    extends MedicinalProductDefinitionCharacteristic {
  factory _MedicinalProductDefinitionCharacteristic(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          final CodeableConcept? valueCodeableConcept,
          final Quantity? valueQuantity,
          final FhirDate? valueDate,
          @JsonKey(name: '_valueDate') final PrimitiveElement? valueDateElement,
          final FhirBoolean? valueBoolean,
          @JsonKey(name: '_valueBoolean')
          final PrimitiveElement? valueBooleanElement,
          final Attachment? valueAttachment}) =
      _$MedicinalProductDefinitionCharacteristicImpl;
  _MedicinalProductDefinitionCharacteristic._() : super._();

  factory _MedicinalProductDefinitionCharacteristic.fromJson(
          Map<String, dynamic> json) =
      _$MedicinalProductDefinitionCharacteristicImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] A code expressing the type of characteristic.;
  CodeableConcept get type;
  @override

  /// [valueCodeableConcept] A value for the characteristic.text.;
  CodeableConcept? get valueCodeableConcept;
  @override

  /// [valueQuantity] A value for the characteristic.text.;
  Quantity? get valueQuantity;
  @override

  /// [valueDate] A value for the characteristic.text.;
  FhirDate? get valueDate;
  @override

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;
  @override

  /// [valueBoolean] A value for the characteristic.text.;
  FhirBoolean? get valueBoolean;
  @override

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;
  @override

  /// [valueAttachment] A value for the characteristic.text.;
  Attachment? get valueAttachment;
  @override
  @JsonKey(ignore: true)
  _$$MedicinalProductDefinitionCharacteristicImplCopyWith<
          _$MedicinalProductDefinitionCharacteristicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
