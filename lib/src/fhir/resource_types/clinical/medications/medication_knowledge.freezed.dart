// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_knowledge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicationKnowledge _$MedicationKnowledgeFromJson(Map<String, dynamic> json) {
  return _MedicationKnowledge.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledge {
  @JsonKey(unknownEnumValue: R4ResourceType.MedicationKnowledge)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] A code that specifies this medication, or a textual description if
  /// no code is available. Usage note: This could be a standard medication code
  /// such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  /// national or local formulary code, optionally with translations to other
  ///  code systems.
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// [status] A code to indicate if the medication is in active use.  The
  /// status refers to the validity about the information of the medication and
  ///  not to its medicinal properties.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [manufacturer] Describes the details of the manufacturer of the
  /// medication product.  This is not intended to represent the distributor of
  ///  a medication product.
  Reference? get manufacturer => throw _privateConstructorUsedError;

  /// [doseForm] Describes the form of the item.  Powder; tablets; capsule.
  CodeableConcept? get doseForm => throw _privateConstructorUsedError;

  /// [amount] Specific amount of the drug in the packaged product.  For
  /// example, when specifying a product that has the same strength (For
  /// example, Insulin glargine 100 unit per mL solution for injection), this
  /// attribute provides additional clarification of the package amount (For
  ///  example, 3 mL, 10mL, etc.).
  Quantity? get amount => throw _privateConstructorUsedError;

  /// [synonym] Additional names for a medication, for example, the name(s)
  /// given to a medication in different countries.  For example, acetaminophen
  ///  and paracetamol or salbutamol and albuterol.
  List<String>? get synonym => throw _privateConstructorUsedError;

  /// [synonymElement] Extensions for synonym
  @JsonKey(name: '_synonym')
  List<PrimitiveElement>? get synonymElement =>
      throw _privateConstructorUsedError;
  List<MedicationKnowledgeRelatedMedicationKnowledge>?
      get relatedMedicationKnowledge => throw _privateConstructorUsedError;

  /// [associatedMedication] Associated or related medications.  For example,
  /// if the medication is a branded product (e.g. Crestor), this is the
  /// Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication
  ///  (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor).
  List<Reference>? get associatedMedication =>
      throw _privateConstructorUsedError;

  /// [productType] Category of the medication or product (e.g. branded
  ///  product, therapeutic moeity, generic product, innovator product, etc.).
  List<CodeableConcept>? get productType => throw _privateConstructorUsedError;

  /// [monograph] Associated documentation about the medication.
  List<MedicationKnowledgeMonograph>? get monograph =>
      throw _privateConstructorUsedError;

  /// [ingredient] Identifies a particular constituent of interest in the
  ///  product.
  List<MedicationKnowledgeIngredient>? get ingredient =>
      throw _privateConstructorUsedError;

  /// [preparationInstruction] The instructions for preparing the medication.
  FhirMarkdown? get preparationInstruction =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_preparationInstruction')
  PrimitiveElement? get preparationInstructionElement =>
      throw _privateConstructorUsedError;

  /// [intendedRoute] The intended or approved route of administration.
  List<CodeableConcept>? get intendedRoute =>
      throw _privateConstructorUsedError;

  /// [cost] The price of the medication.
  List<MedicationKnowledgeCost>? get cost => throw _privateConstructorUsedError;

  /// [monitoringProgram] The program under which the medication is reviewed.
  List<MedicationKnowledgeMonitoringProgram>? get monitoringProgram =>
      throw _privateConstructorUsedError;

  /// [administrationGuidelines] Guidelines for the administration of the
  ///  medication.
  List<MedicationKnowledgeAdministrationGuidelines>?
      get administrationGuidelines => throw _privateConstructorUsedError;

  /// [medicineClassification] Categorization of the medication within a
  ///  formulary or classification system.
  List<MedicationKnowledgeMedicineClassification>? get medicineClassification =>
      throw _privateConstructorUsedError;

  /// [packaging] Information that only applies to packages (not products).
  MedicationKnowledgePackaging? get packaging =>
      throw _privateConstructorUsedError;

  /// [drugCharacteristic] Specifies descriptive properties of the medicine,
  ///  such as color, shape, imprints, etc.
  List<MedicationKnowledgeDrugCharacteristic>? get drugCharacteristic =>
      throw _privateConstructorUsedError;

  /// [contraindication] Potential clinical issue with or between medication(s)
  /// (for example, drug-drug interaction, drug-disease contraindication,
  ///  drug-allergy interaction, etc.).
  List<Reference>? get contraindication => throw _privateConstructorUsedError;

  /// [regulatory] Regulatory information about a medication.
  List<MedicationKnowledgeRegulatory>? get regulatory =>
      throw _privateConstructorUsedError;

  /// [kinetics] The time course of drug absorption, distribution, metabolism
  ///  and excretion of a medication from the body.
  List<MedicationKnowledgeKinetics>? get kinetics =>
      throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeCopyWith<MedicationKnowledge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeCopyWith<$Res> {
  factory $MedicationKnowledgeCopyWith(
          MedicationKnowledge value, $Res Function(MedicationKnowledge) then) =
      _$MedicationKnowledgeCopyWithImpl<$Res, MedicationKnowledge>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MedicationKnowledge)
      R4ResourceType resourceType,
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
      CodeableConcept? code,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      Reference? manufacturer,
      CodeableConcept? doseForm,
      Quantity? amount,
      List<String>? synonym,
      @JsonKey(name: '_synonym') List<PrimitiveElement>? synonymElement,
      List<MedicationKnowledgeRelatedMedicationKnowledge>?
          relatedMedicationKnowledge,
      List<Reference>? associatedMedication,
      List<CodeableConcept>? productType,
      List<MedicationKnowledgeMonograph>? monograph,
      List<MedicationKnowledgeIngredient>? ingredient,
      FhirMarkdown? preparationInstruction,
      @JsonKey(name: '_preparationInstruction')
      PrimitiveElement? preparationInstructionElement,
      List<CodeableConcept>? intendedRoute,
      List<MedicationKnowledgeCost>? cost,
      List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,
      List<MedicationKnowledgeAdministrationGuidelines>?
          administrationGuidelines,
      List<MedicationKnowledgeMedicineClassification>? medicineClassification,
      MedicationKnowledgePackaging? packaging,
      List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
      List<Reference>? contraindication,
      List<MedicationKnowledgeRegulatory>? regulatory,
      List<MedicationKnowledgeKinetics>? kinetics});

  $MedicationKnowledgePackagingCopyWith<$Res>? get packaging;
}

/// @nodoc
class _$MedicationKnowledgeCopyWithImpl<$Res, $Val extends MedicationKnowledge>
    implements $MedicationKnowledgeCopyWith<$Res> {
  _$MedicationKnowledgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
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
    Object? code = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? manufacturer = freezed,
    Object? doseForm = freezed,
    Object? amount = freezed,
    Object? synonym = freezed,
    Object? synonymElement = freezed,
    Object? relatedMedicationKnowledge = freezed,
    Object? associatedMedication = freezed,
    Object? productType = freezed,
    Object? monograph = freezed,
    Object? ingredient = freezed,
    Object? preparationInstruction = freezed,
    Object? preparationInstructionElement = freezed,
    Object? intendedRoute = freezed,
    Object? cost = freezed,
    Object? monitoringProgram = freezed,
    Object? administrationGuidelines = freezed,
    Object? medicineClassification = freezed,
    Object? packaging = freezed,
    Object? drugCharacteristic = freezed,
    Object? contraindication = freezed,
    Object? regulatory = freezed,
    Object? kinetics = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      doseForm: freezed == doseForm
          ? _value.doseForm
          : doseForm // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      synonym: freezed == synonym
          ? _value.synonym
          : synonym // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      synonymElement: freezed == synonymElement
          ? _value.synonymElement
          : synonymElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      relatedMedicationKnowledge: freezed == relatedMedicationKnowledge
          ? _value.relatedMedicationKnowledge
          : relatedMedicationKnowledge // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeRelatedMedicationKnowledge>?,
      associatedMedication: freezed == associatedMedication
          ? _value.associatedMedication
          : associatedMedication // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      monograph: freezed == monograph
          ? _value.monograph
          : monograph // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeMonograph>?,
      ingredient: freezed == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeIngredient>?,
      preparationInstruction: freezed == preparationInstruction
          ? _value.preparationInstruction
          : preparationInstruction // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      preparationInstructionElement: freezed == preparationInstructionElement
          ? _value.preparationInstructionElement
          : preparationInstructionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      intendedRoute: freezed == intendedRoute
          ? _value.intendedRoute
          : intendedRoute // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeCost>?,
      monitoringProgram: freezed == monitoringProgram
          ? _value.monitoringProgram
          : monitoringProgram // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeMonitoringProgram>?,
      administrationGuidelines: freezed == administrationGuidelines
          ? _value.administrationGuidelines
          : administrationGuidelines // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeAdministrationGuidelines>?,
      medicineClassification: freezed == medicineClassification
          ? _value.medicineClassification
          : medicineClassification // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeMedicineClassification>?,
      packaging: freezed == packaging
          ? _value.packaging
          : packaging // ignore: cast_nullable_to_non_nullable
              as MedicationKnowledgePackaging?,
      drugCharacteristic: freezed == drugCharacteristic
          ? _value.drugCharacteristic
          : drugCharacteristic // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeDrugCharacteristic>?,
      contraindication: freezed == contraindication
          ? _value.contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      regulatory: freezed == regulatory
          ? _value.regulatory
          : regulatory // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeRegulatory>?,
      kinetics: freezed == kinetics
          ? _value.kinetics
          : kinetics // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeKinetics>?,
    ) as $Val);
  }

  /// Create a copy of MedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationKnowledgePackagingCopyWith<$Res>? get packaging {
    if (_value.packaging == null) {
      return null;
    }

    return $MedicationKnowledgePackagingCopyWith<$Res>(_value.packaging!,
        (value) {
      return _then(_value.copyWith(packaging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeImplCopyWith<$Res>
    implements $MedicationKnowledgeCopyWith<$Res> {
  factory _$$MedicationKnowledgeImplCopyWith(_$MedicationKnowledgeImpl value,
          $Res Function(_$MedicationKnowledgeImpl) then) =
      __$$MedicationKnowledgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MedicationKnowledge)
      R4ResourceType resourceType,
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
      CodeableConcept? code,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      Reference? manufacturer,
      CodeableConcept? doseForm,
      Quantity? amount,
      List<String>? synonym,
      @JsonKey(name: '_synonym') List<PrimitiveElement>? synonymElement,
      List<MedicationKnowledgeRelatedMedicationKnowledge>?
          relatedMedicationKnowledge,
      List<Reference>? associatedMedication,
      List<CodeableConcept>? productType,
      List<MedicationKnowledgeMonograph>? monograph,
      List<MedicationKnowledgeIngredient>? ingredient,
      FhirMarkdown? preparationInstruction,
      @JsonKey(name: '_preparationInstruction')
      PrimitiveElement? preparationInstructionElement,
      List<CodeableConcept>? intendedRoute,
      List<MedicationKnowledgeCost>? cost,
      List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,
      List<MedicationKnowledgeAdministrationGuidelines>?
          administrationGuidelines,
      List<MedicationKnowledgeMedicineClassification>? medicineClassification,
      MedicationKnowledgePackaging? packaging,
      List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
      List<Reference>? contraindication,
      List<MedicationKnowledgeRegulatory>? regulatory,
      List<MedicationKnowledgeKinetics>? kinetics});

  @override
  $MedicationKnowledgePackagingCopyWith<$Res>? get packaging;
}

/// @nodoc
class __$$MedicationKnowledgeImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeCopyWithImpl<$Res, _$MedicationKnowledgeImpl>
    implements _$$MedicationKnowledgeImplCopyWith<$Res> {
  __$$MedicationKnowledgeImplCopyWithImpl(_$MedicationKnowledgeImpl _value,
      $Res Function(_$MedicationKnowledgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
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
    Object? code = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? manufacturer = freezed,
    Object? doseForm = freezed,
    Object? amount = freezed,
    Object? synonym = freezed,
    Object? synonymElement = freezed,
    Object? relatedMedicationKnowledge = freezed,
    Object? associatedMedication = freezed,
    Object? productType = freezed,
    Object? monograph = freezed,
    Object? ingredient = freezed,
    Object? preparationInstruction = freezed,
    Object? preparationInstructionElement = freezed,
    Object? intendedRoute = freezed,
    Object? cost = freezed,
    Object? monitoringProgram = freezed,
    Object? administrationGuidelines = freezed,
    Object? medicineClassification = freezed,
    Object? packaging = freezed,
    Object? drugCharacteristic = freezed,
    Object? contraindication = freezed,
    Object? regulatory = freezed,
    Object? kinetics = freezed,
  }) {
    return _then(_$MedicationKnowledgeImpl(
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      doseForm: freezed == doseForm
          ? _value.doseForm
          : doseForm // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      synonym: freezed == synonym
          ? _value._synonym
          : synonym // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      synonymElement: freezed == synonymElement
          ? _value._synonymElement
          : synonymElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      relatedMedicationKnowledge: freezed == relatedMedicationKnowledge
          ? _value._relatedMedicationKnowledge
          : relatedMedicationKnowledge // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeRelatedMedicationKnowledge>?,
      associatedMedication: freezed == associatedMedication
          ? _value._associatedMedication
          : associatedMedication // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      productType: freezed == productType
          ? _value._productType
          : productType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      monograph: freezed == monograph
          ? _value._monograph
          : monograph // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeMonograph>?,
      ingredient: freezed == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeIngredient>?,
      preparationInstruction: freezed == preparationInstruction
          ? _value.preparationInstruction
          : preparationInstruction // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      preparationInstructionElement: freezed == preparationInstructionElement
          ? _value.preparationInstructionElement
          : preparationInstructionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      intendedRoute: freezed == intendedRoute
          ? _value._intendedRoute
          : intendedRoute // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      cost: freezed == cost
          ? _value._cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeCost>?,
      monitoringProgram: freezed == monitoringProgram
          ? _value._monitoringProgram
          : monitoringProgram // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeMonitoringProgram>?,
      administrationGuidelines: freezed == administrationGuidelines
          ? _value._administrationGuidelines
          : administrationGuidelines // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeAdministrationGuidelines>?,
      medicineClassification: freezed == medicineClassification
          ? _value._medicineClassification
          : medicineClassification // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeMedicineClassification>?,
      packaging: freezed == packaging
          ? _value.packaging
          : packaging // ignore: cast_nullable_to_non_nullable
              as MedicationKnowledgePackaging?,
      drugCharacteristic: freezed == drugCharacteristic
          ? _value._drugCharacteristic
          : drugCharacteristic // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeDrugCharacteristic>?,
      contraindication: freezed == contraindication
          ? _value._contraindication
          : contraindication // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      regulatory: freezed == regulatory
          ? _value._regulatory
          : regulatory // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeRegulatory>?,
      kinetics: freezed == kinetics
          ? _value._kinetics
          : kinetics // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeKinetics>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeImpl extends _MedicationKnowledge {
  _$MedicationKnowledgeImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.MedicationKnowledge)
      this.resourceType = R4ResourceType.MedicationKnowledge,
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
      this.code,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.manufacturer,
      this.doseForm,
      this.amount,
      final List<String>? synonym,
      @JsonKey(name: '_synonym') final List<PrimitiveElement>? synonymElement,
      final List<MedicationKnowledgeRelatedMedicationKnowledge>?
          relatedMedicationKnowledge,
      final List<Reference>? associatedMedication,
      final List<CodeableConcept>? productType,
      final List<MedicationKnowledgeMonograph>? monograph,
      final List<MedicationKnowledgeIngredient>? ingredient,
      this.preparationInstruction,
      @JsonKey(name: '_preparationInstruction')
      this.preparationInstructionElement,
      final List<CodeableConcept>? intendedRoute,
      final List<MedicationKnowledgeCost>? cost,
      final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,
      final List<MedicationKnowledgeAdministrationGuidelines>?
          administrationGuidelines,
      final List<MedicationKnowledgeMedicineClassification>?
          medicineClassification,
      this.packaging,
      final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
      final List<Reference>? contraindication,
      final List<MedicationKnowledgeRegulatory>? regulatory,
      final List<MedicationKnowledgeKinetics>? kinetics})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _synonym = synonym,
        _synonymElement = synonymElement,
        _relatedMedicationKnowledge = relatedMedicationKnowledge,
        _associatedMedication = associatedMedication,
        _productType = productType,
        _monograph = monograph,
        _ingredient = ingredient,
        _intendedRoute = intendedRoute,
        _cost = cost,
        _monitoringProgram = monitoringProgram,
        _administrationGuidelines = administrationGuidelines,
        _medicineClassification = medicineClassification,
        _drugCharacteristic = drugCharacteristic,
        _contraindication = contraindication,
        _regulatory = regulatory,
        _kinetics = kinetics,
        super._();

  factory _$MedicationKnowledgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationKnowledgeImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MedicationKnowledge)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] A code that specifies this medication, or a textual description if
  /// no code is available. Usage note: This could be a standard medication code
  /// such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  /// national or local formulary code, optionally with translations to other
  ///  code systems.
  @override
  final CodeableConcept? code;

  /// [status] A code to indicate if the medication is in active use.  The
  /// status refers to the validity about the information of the medication and
  ///  not to its medicinal properties.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [manufacturer] Describes the details of the manufacturer of the
  /// medication product.  This is not intended to represent the distributor of
  ///  a medication product.
  @override
  final Reference? manufacturer;

  /// [doseForm] Describes the form of the item.  Powder; tablets; capsule.
  @override
  final CodeableConcept? doseForm;

  /// [amount] Specific amount of the drug in the packaged product.  For
  /// example, when specifying a product that has the same strength (For
  /// example, Insulin glargine 100 unit per mL solution for injection), this
  /// attribute provides additional clarification of the package amount (For
  ///  example, 3 mL, 10mL, etc.).
  @override
  final Quantity? amount;

  /// [synonym] Additional names for a medication, for example, the name(s)
  /// given to a medication in different countries.  For example, acetaminophen
  ///  and paracetamol or salbutamol and albuterol.
  final List<String>? _synonym;

  /// [synonym] Additional names for a medication, for example, the name(s)
  /// given to a medication in different countries.  For example, acetaminophen
  ///  and paracetamol or salbutamol and albuterol.
  @override
  List<String>? get synonym {
    final value = _synonym;
    if (value == null) return null;
    if (_synonym is EqualUnmodifiableListView) return _synonym;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [synonymElement] Extensions for synonym
  final List<PrimitiveElement>? _synonymElement;

  /// [synonymElement] Extensions for synonym
  @override
  @JsonKey(name: '_synonym')
  List<PrimitiveElement>? get synonymElement {
    final value = _synonymElement;
    if (value == null) return null;
    if (_synonymElement is EqualUnmodifiableListView) return _synonymElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MedicationKnowledgeRelatedMedicationKnowledge>?
      _relatedMedicationKnowledge;
  @override
  List<MedicationKnowledgeRelatedMedicationKnowledge>?
      get relatedMedicationKnowledge {
    final value = _relatedMedicationKnowledge;
    if (value == null) return null;
    if (_relatedMedicationKnowledge is EqualUnmodifiableListView)
      return _relatedMedicationKnowledge;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [associatedMedication] Associated or related medications.  For example,
  /// if the medication is a branded product (e.g. Crestor), this is the
  /// Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication
  ///  (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor).
  final List<Reference>? _associatedMedication;

  /// [associatedMedication] Associated or related medications.  For example,
  /// if the medication is a branded product (e.g. Crestor), this is the
  /// Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication
  ///  (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor).
  @override
  List<Reference>? get associatedMedication {
    final value = _associatedMedication;
    if (value == null) return null;
    if (_associatedMedication is EqualUnmodifiableListView)
      return _associatedMedication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [productType] Category of the medication or product (e.g. branded
  ///  product, therapeutic moeity, generic product, innovator product, etc.).
  final List<CodeableConcept>? _productType;

  /// [productType] Category of the medication or product (e.g. branded
  ///  product, therapeutic moeity, generic product, innovator product, etc.).
  @override
  List<CodeableConcept>? get productType {
    final value = _productType;
    if (value == null) return null;
    if (_productType is EqualUnmodifiableListView) return _productType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [monograph] Associated documentation about the medication.
  final List<MedicationKnowledgeMonograph>? _monograph;

  /// [monograph] Associated documentation about the medication.
  @override
  List<MedicationKnowledgeMonograph>? get monograph {
    final value = _monograph;
    if (value == null) return null;
    if (_monograph is EqualUnmodifiableListView) return _monograph;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [ingredient] Identifies a particular constituent of interest in the
  ///  product.
  final List<MedicationKnowledgeIngredient>? _ingredient;

  /// [ingredient] Identifies a particular constituent of interest in the
  ///  product.
  @override
  List<MedicationKnowledgeIngredient>? get ingredient {
    final value = _ingredient;
    if (value == null) return null;
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [preparationInstruction] The instructions for preparing the medication.
  @override
  final FhirMarkdown? preparationInstruction;
  @override
  @JsonKey(name: '_preparationInstruction')
  final PrimitiveElement? preparationInstructionElement;

  /// [intendedRoute] The intended or approved route of administration.
  final List<CodeableConcept>? _intendedRoute;

  /// [intendedRoute] The intended or approved route of administration.
  @override
  List<CodeableConcept>? get intendedRoute {
    final value = _intendedRoute;
    if (value == null) return null;
    if (_intendedRoute is EqualUnmodifiableListView) return _intendedRoute;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [cost] The price of the medication.
  final List<MedicationKnowledgeCost>? _cost;

  /// [cost] The price of the medication.
  @override
  List<MedicationKnowledgeCost>? get cost {
    final value = _cost;
    if (value == null) return null;
    if (_cost is EqualUnmodifiableListView) return _cost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [monitoringProgram] The program under which the medication is reviewed.
  final List<MedicationKnowledgeMonitoringProgram>? _monitoringProgram;

  /// [monitoringProgram] The program under which the medication is reviewed.
  @override
  List<MedicationKnowledgeMonitoringProgram>? get monitoringProgram {
    final value = _monitoringProgram;
    if (value == null) return null;
    if (_monitoringProgram is EqualUnmodifiableListView)
      return _monitoringProgram;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [administrationGuidelines] Guidelines for the administration of the
  ///  medication.
  final List<MedicationKnowledgeAdministrationGuidelines>?
      _administrationGuidelines;

  /// [administrationGuidelines] Guidelines for the administration of the
  ///  medication.
  @override
  List<MedicationKnowledgeAdministrationGuidelines>?
      get administrationGuidelines {
    final value = _administrationGuidelines;
    if (value == null) return null;
    if (_administrationGuidelines is EqualUnmodifiableListView)
      return _administrationGuidelines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [medicineClassification] Categorization of the medication within a
  ///  formulary or classification system.
  final List<MedicationKnowledgeMedicineClassification>?
      _medicineClassification;

  /// [medicineClassification] Categorization of the medication within a
  ///  formulary or classification system.
  @override
  List<MedicationKnowledgeMedicineClassification>? get medicineClassification {
    final value = _medicineClassification;
    if (value == null) return null;
    if (_medicineClassification is EqualUnmodifiableListView)
      return _medicineClassification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [packaging] Information that only applies to packages (not products).
  @override
  final MedicationKnowledgePackaging? packaging;

  /// [drugCharacteristic] Specifies descriptive properties of the medicine,
  ///  such as color, shape, imprints, etc.
  final List<MedicationKnowledgeDrugCharacteristic>? _drugCharacteristic;

  /// [drugCharacteristic] Specifies descriptive properties of the medicine,
  ///  such as color, shape, imprints, etc.
  @override
  List<MedicationKnowledgeDrugCharacteristic>? get drugCharacteristic {
    final value = _drugCharacteristic;
    if (value == null) return null;
    if (_drugCharacteristic is EqualUnmodifiableListView)
      return _drugCharacteristic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contraindication] Potential clinical issue with or between medication(s)
  /// (for example, drug-drug interaction, drug-disease contraindication,
  ///  drug-allergy interaction, etc.).
  final List<Reference>? _contraindication;

  /// [contraindication] Potential clinical issue with or between medication(s)
  /// (for example, drug-drug interaction, drug-disease contraindication,
  ///  drug-allergy interaction, etc.).
  @override
  List<Reference>? get contraindication {
    final value = _contraindication;
    if (value == null) return null;
    if (_contraindication is EqualUnmodifiableListView)
      return _contraindication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [regulatory] Regulatory information about a medication.
  final List<MedicationKnowledgeRegulatory>? _regulatory;

  /// [regulatory] Regulatory information about a medication.
  @override
  List<MedicationKnowledgeRegulatory>? get regulatory {
    final value = _regulatory;
    if (value == null) return null;
    if (_regulatory is EqualUnmodifiableListView) return _regulatory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [kinetics] The time course of drug absorption, distribution, metabolism
  ///  and excretion of a medication from the body.
  final List<MedicationKnowledgeKinetics>? _kinetics;

  /// [kinetics] The time course of drug absorption, distribution, metabolism
  ///  and excretion of a medication from the body.
  @override
  List<MedicationKnowledgeKinetics>? get kinetics {
    final value = _kinetics;
    if (value == null) return null;
    if (_kinetics is EqualUnmodifiableListView) return _kinetics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MedicationKnowledge(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, status: $status, statusElement: $statusElement, manufacturer: $manufacturer, doseForm: $doseForm, amount: $amount, synonym: $synonym, synonymElement: $synonymElement, relatedMedicationKnowledge: $relatedMedicationKnowledge, associatedMedication: $associatedMedication, productType: $productType, monograph: $monograph, ingredient: $ingredient, preparationInstruction: $preparationInstruction, preparationInstructionElement: $preparationInstructionElement, intendedRoute: $intendedRoute, cost: $cost, monitoringProgram: $monitoringProgram, administrationGuidelines: $administrationGuidelines, medicineClassification: $medicineClassification, packaging: $packaging, drugCharacteristic: $drugCharacteristic, contraindication: $contraindication, regulatory: $regulatory, kinetics: $kinetics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            const DeepCollectionEquality()
                .equals(other.manufacturer, manufacturer) &&
            const DeepCollectionEquality().equals(other.doseForm, doseForm) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other._synonym, _synonym) &&
            const DeepCollectionEquality()
                .equals(other._synonymElement, _synonymElement) &&
            const DeepCollectionEquality().equals(
                other._relatedMedicationKnowledge,
                _relatedMedicationKnowledge) &&
            const DeepCollectionEquality()
                .equals(other._associatedMedication, _associatedMedication) &&
            const DeepCollectionEquality()
                .equals(other._productType, _productType) &&
            const DeepCollectionEquality()
                .equals(other._monograph, _monograph) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            (identical(other.preparationInstruction, preparationInstruction) ||
                other.preparationInstruction == preparationInstruction) &&
            (identical(other.preparationInstructionElement,
                    preparationInstructionElement) ||
                other.preparationInstructionElement ==
                    preparationInstructionElement) &&
            const DeepCollectionEquality()
                .equals(other._intendedRoute, _intendedRoute) &&
            const DeepCollectionEquality().equals(other._cost, _cost) &&
            const DeepCollectionEquality()
                .equals(other._monitoringProgram, _monitoringProgram) &&
            const DeepCollectionEquality().equals(
                other._administrationGuidelines, _administrationGuidelines) &&
            const DeepCollectionEquality().equals(
                other._medicineClassification, _medicineClassification) &&
            (identical(other.packaging, packaging) ||
                other.packaging == packaging) &&
            const DeepCollectionEquality()
                .equals(other._drugCharacteristic, _drugCharacteristic) &&
            const DeepCollectionEquality()
                .equals(other._contraindication, _contraindication) &&
            const DeepCollectionEquality()
                .equals(other._regulatory, _regulatory) &&
            const DeepCollectionEquality().equals(other._kinetics, _kinetics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        const DeepCollectionEquality().hash(meta),
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(code),
        status,
        statusElement,
        const DeepCollectionEquality().hash(manufacturer),
        const DeepCollectionEquality().hash(doseForm),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(_synonym),
        const DeepCollectionEquality().hash(_synonymElement),
        const DeepCollectionEquality().hash(_relatedMedicationKnowledge),
        const DeepCollectionEquality().hash(_associatedMedication),
        const DeepCollectionEquality().hash(_productType),
        const DeepCollectionEquality().hash(_monograph),
        const DeepCollectionEquality().hash(_ingredient),
        preparationInstruction,
        preparationInstructionElement,
        const DeepCollectionEquality().hash(_intendedRoute),
        const DeepCollectionEquality().hash(_cost),
        const DeepCollectionEquality().hash(_monitoringProgram),
        const DeepCollectionEquality().hash(_administrationGuidelines),
        const DeepCollectionEquality().hash(_medicineClassification),
        packaging,
        const DeepCollectionEquality().hash(_drugCharacteristic),
        const DeepCollectionEquality().hash(_contraindication),
        const DeepCollectionEquality().hash(_regulatory),
        const DeepCollectionEquality().hash(_kinetics)
      ]);

  /// Create a copy of MedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeImplCopyWith<_$MedicationKnowledgeImpl> get copyWith =>
      __$$MedicationKnowledgeImplCopyWithImpl<_$MedicationKnowledgeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledge extends MedicationKnowledge {
  factory _MedicationKnowledge(
      {@JsonKey(unknownEnumValue: R4ResourceType.MedicationKnowledge)
      final R4ResourceType resourceType,
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
      final CodeableConcept? code,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final Reference? manufacturer,
      final CodeableConcept? doseForm,
      final Quantity? amount,
      final List<String>? synonym,
      @JsonKey(name: '_synonym') final List<PrimitiveElement>? synonymElement,
      final List<MedicationKnowledgeRelatedMedicationKnowledge>?
          relatedMedicationKnowledge,
      final List<Reference>? associatedMedication,
      final List<CodeableConcept>? productType,
      final List<MedicationKnowledgeMonograph>? monograph,
      final List<MedicationKnowledgeIngredient>? ingredient,
      final FhirMarkdown? preparationInstruction,
      @JsonKey(name: '_preparationInstruction')
      final PrimitiveElement? preparationInstructionElement,
      final List<CodeableConcept>? intendedRoute,
      final List<MedicationKnowledgeCost>? cost,
      final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,
      final List<MedicationKnowledgeAdministrationGuidelines>?
          administrationGuidelines,
      final List<MedicationKnowledgeMedicineClassification>?
          medicineClassification,
      final MedicationKnowledgePackaging? packaging,
      final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
      final List<Reference>? contraindication,
      final List<MedicationKnowledgeRegulatory>? regulatory,
      final List<MedicationKnowledgeKinetics>?
          kinetics}) = _$MedicationKnowledgeImpl;
  _MedicationKnowledge._() : super._();

  factory _MedicationKnowledge.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MedicationKnowledge)
  R4ResourceType get resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  String? get id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  FhirMeta? get meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  FhirUri? get implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  FhirCode? get language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  Narrative? get text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [code] A code that specifies this medication, or a textual description if
  /// no code is available. Usage note: This could be a standard medication code
  /// such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  /// national or local formulary code, optionally with translations to other
  ///  code systems.
  @override
  CodeableConcept? get code;

  /// [status] A code to indicate if the medication is in active use.  The
  /// status refers to the validity about the information of the medication and
  ///  not to its medicinal properties.
  @override
  FhirCode? get status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;

  /// [manufacturer] Describes the details of the manufacturer of the
  /// medication product.  This is not intended to represent the distributor of
  ///  a medication product.
  @override
  Reference? get manufacturer;

  /// [doseForm] Describes the form of the item.  Powder; tablets; capsule.
  @override
  CodeableConcept? get doseForm;

  /// [amount] Specific amount of the drug in the packaged product.  For
  /// example, when specifying a product that has the same strength (For
  /// example, Insulin glargine 100 unit per mL solution for injection), this
  /// attribute provides additional clarification of the package amount (For
  ///  example, 3 mL, 10mL, etc.).
  @override
  Quantity? get amount;

  /// [synonym] Additional names for a medication, for example, the name(s)
  /// given to a medication in different countries.  For example, acetaminophen
  ///  and paracetamol or salbutamol and albuterol.
  @override
  List<String>? get synonym;

  /// [synonymElement] Extensions for synonym
  @override
  @JsonKey(name: '_synonym')
  List<PrimitiveElement>? get synonymElement;
  @override
  List<MedicationKnowledgeRelatedMedicationKnowledge>?
      get relatedMedicationKnowledge;

  /// [associatedMedication] Associated or related medications.  For example,
  /// if the medication is a branded product (e.g. Crestor), this is the
  /// Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication
  ///  (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor).
  @override
  List<Reference>? get associatedMedication;

  /// [productType] Category of the medication or product (e.g. branded
  ///  product, therapeutic moeity, generic product, innovator product, etc.).
  @override
  List<CodeableConcept>? get productType;

  /// [monograph] Associated documentation about the medication.
  @override
  List<MedicationKnowledgeMonograph>? get monograph;

  /// [ingredient] Identifies a particular constituent of interest in the
  ///  product.
  @override
  List<MedicationKnowledgeIngredient>? get ingredient;

  /// [preparationInstruction] The instructions for preparing the medication.
  @override
  FhirMarkdown? get preparationInstruction;
  @override
  @JsonKey(name: '_preparationInstruction')
  PrimitiveElement? get preparationInstructionElement;

  /// [intendedRoute] The intended or approved route of administration.
  @override
  List<CodeableConcept>? get intendedRoute;

  /// [cost] The price of the medication.
  @override
  List<MedicationKnowledgeCost>? get cost;

  /// [monitoringProgram] The program under which the medication is reviewed.
  @override
  List<MedicationKnowledgeMonitoringProgram>? get monitoringProgram;

  /// [administrationGuidelines] Guidelines for the administration of the
  ///  medication.
  @override
  List<MedicationKnowledgeAdministrationGuidelines>?
      get administrationGuidelines;

  /// [medicineClassification] Categorization of the medication within a
  ///  formulary or classification system.
  @override
  List<MedicationKnowledgeMedicineClassification>? get medicineClassification;

  /// [packaging] Information that only applies to packages (not products).
  @override
  MedicationKnowledgePackaging? get packaging;

  /// [drugCharacteristic] Specifies descriptive properties of the medicine,
  ///  such as color, shape, imprints, etc.
  @override
  List<MedicationKnowledgeDrugCharacteristic>? get drugCharacteristic;

  /// [contraindication] Potential clinical issue with or between medication(s)
  /// (for example, drug-drug interaction, drug-disease contraindication,
  ///  drug-allergy interaction, etc.).
  @override
  List<Reference>? get contraindication;

  /// [regulatory] Regulatory information about a medication.
  @override
  List<MedicationKnowledgeRegulatory>? get regulatory;

  /// [kinetics] The time course of drug absorption, distribution, metabolism
  ///  and excretion of a medication from the body.
  @override
  List<MedicationKnowledgeKinetics>? get kinetics;

  /// Create a copy of MedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeImplCopyWith<_$MedicationKnowledgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicationKnowledgeRelatedMedicationKnowledge
    _$MedicationKnowledgeRelatedMedicationKnowledgeFromJson(
        Map<String, dynamic> json) {
  return _MedicationKnowledgeRelatedMedicationKnowledge.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeRelatedMedicationKnowledge {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The category of the associated medication knowledge reference.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [reference] Associated documentation about the associated medication
  ///  knowledge.
  List<Reference> get reference => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeRelatedMedicationKnowledge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeRelatedMedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<
          MedicationKnowledgeRelatedMedicationKnowledge>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<$Res> {
  factory $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith(
          MedicationKnowledgeRelatedMedicationKnowledge value,
          $Res Function(MedicationKnowledgeRelatedMedicationKnowledge) then) =
      _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl<$Res,
          MedicationKnowledgeRelatedMedicationKnowledge>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<Reference> reference});
}

/// @nodoc
class _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeRelatedMedicationKnowledge>
    implements $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<$Res> {
  _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeRelatedMedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? reference = null,
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
              as CodeableConcept,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWith<
        $Res>
    implements $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<$Res> {
  factory _$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWith(
          _$MedicationKnowledgeRelatedMedicationKnowledgeImpl value,
          $Res Function(_$MedicationKnowledgeRelatedMedicationKnowledgeImpl)
              then) =
      __$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<Reference> reference});
}

/// @nodoc
class __$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl<$Res,
        _$MedicationKnowledgeRelatedMedicationKnowledgeImpl>
    implements
        _$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWith<$Res> {
  __$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWithImpl(
      _$MedicationKnowledgeRelatedMedicationKnowledgeImpl _value,
      $Res Function(_$MedicationKnowledgeRelatedMedicationKnowledgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeRelatedMedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? reference = null,
  }) {
    return _then(_$MedicationKnowledgeRelatedMedicationKnowledgeImpl(
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
              as CodeableConcept,
      reference: null == reference
          ? _value._reference
          : reference // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeRelatedMedicationKnowledgeImpl
    extends _MedicationKnowledgeRelatedMedicationKnowledge {
  _$MedicationKnowledgeRelatedMedicationKnowledgeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      required final List<Reference> reference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _reference = reference,
        super._();

  factory _$MedicationKnowledgeRelatedMedicationKnowledgeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeRelatedMedicationKnowledgeImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The category of the associated medication knowledge reference.
  @override
  final CodeableConcept type;

  /// [reference] Associated documentation about the associated medication
  ///  knowledge.
  final List<Reference> _reference;

  /// [reference] Associated documentation about the associated medication
  ///  knowledge.
  @override
  List<Reference> get reference {
    if (_reference is EqualUnmodifiableListView) return _reference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reference);
  }

  @override
  String toString() {
    return 'MedicationKnowledgeRelatedMedicationKnowledge(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, reference: $reference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeRelatedMedicationKnowledgeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other._reference, _reference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_reference));

  /// Create a copy of MedicationKnowledgeRelatedMedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWith<
          _$MedicationKnowledgeRelatedMedicationKnowledgeImpl>
      get copyWith =>
          __$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWithImpl<
                  _$MedicationKnowledgeRelatedMedicationKnowledgeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeRelatedMedicationKnowledgeImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeRelatedMedicationKnowledge
    extends MedicationKnowledgeRelatedMedicationKnowledge {
  factory _MedicationKnowledgeRelatedMedicationKnowledge(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          required final List<Reference> reference}) =
      _$MedicationKnowledgeRelatedMedicationKnowledgeImpl;
  _MedicationKnowledgeRelatedMedicationKnowledge._() : super._();

  factory _MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
          Map<String, dynamic> json) =
      _$MedicationKnowledgeRelatedMedicationKnowledgeImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] The category of the associated medication knowledge reference.
  @override
  CodeableConcept get type;

  /// [reference] Associated documentation about the associated medication
  ///  knowledge.
  @override
  List<Reference> get reference;

  /// Create a copy of MedicationKnowledgeRelatedMedicationKnowledge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeRelatedMedicationKnowledgeImplCopyWith<
          _$MedicationKnowledgeRelatedMedicationKnowledgeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeMonograph _$MedicationKnowledgeMonographFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeMonograph.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeMonograph {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The category of documentation about the medication. (e.g.
  ///  professional monograph, patient education monograph).
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [source] Associated documentation about the medication.
  Reference? get source => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeMonograph to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeMonograph
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeMonographCopyWith<MedicationKnowledgeMonograph>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeMonographCopyWith<$Res> {
  factory $MedicationKnowledgeMonographCopyWith(
          MedicationKnowledgeMonograph value,
          $Res Function(MedicationKnowledgeMonograph) then) =
      _$MedicationKnowledgeMonographCopyWithImpl<$Res,
          MedicationKnowledgeMonograph>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Reference? source});
}

/// @nodoc
class _$MedicationKnowledgeMonographCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeMonograph>
    implements $MedicationKnowledgeMonographCopyWith<$Res> {
  _$MedicationKnowledgeMonographCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeMonograph
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? source = freezed,
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeMonographImplCopyWith<$Res>
    implements $MedicationKnowledgeMonographCopyWith<$Res> {
  factory _$$MedicationKnowledgeMonographImplCopyWith(
          _$MedicationKnowledgeMonographImpl value,
          $Res Function(_$MedicationKnowledgeMonographImpl) then) =
      __$$MedicationKnowledgeMonographImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Reference? source});
}

/// @nodoc
class __$$MedicationKnowledgeMonographImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeMonographCopyWithImpl<$Res,
        _$MedicationKnowledgeMonographImpl>
    implements _$$MedicationKnowledgeMonographImplCopyWith<$Res> {
  __$$MedicationKnowledgeMonographImplCopyWithImpl(
      _$MedicationKnowledgeMonographImpl _value,
      $Res Function(_$MedicationKnowledgeMonographImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeMonograph
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? source = freezed,
  }) {
    return _then(_$MedicationKnowledgeMonographImpl(
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeMonographImpl extends _MedicationKnowledgeMonograph {
  _$MedicationKnowledgeMonographImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.source})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgeMonographImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeMonographImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The category of documentation about the medication. (e.g.
  ///  professional monograph, patient education monograph).
  @override
  final CodeableConcept? type;

  /// [source] Associated documentation about the medication.
  @override
  final Reference? source;

  @override
  String toString() {
    return 'MedicationKnowledgeMonograph(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeMonographImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(source));

  /// Create a copy of MedicationKnowledgeMonograph
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeMonographImplCopyWith<
          _$MedicationKnowledgeMonographImpl>
      get copyWith => __$$MedicationKnowledgeMonographImplCopyWithImpl<
          _$MedicationKnowledgeMonographImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeMonographImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeMonograph
    extends MedicationKnowledgeMonograph {
  factory _MedicationKnowledgeMonograph(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? type,
      final Reference? source}) = _$MedicationKnowledgeMonographImpl;
  _MedicationKnowledgeMonograph._() : super._();

  factory _MedicationKnowledgeMonograph.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeMonographImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] The category of documentation about the medication. (e.g.
  ///  professional monograph, patient education monograph).
  @override
  CodeableConcept? get type;

  /// [source] Associated documentation about the medication.
  @override
  Reference? get source;

  /// Create a copy of MedicationKnowledgeMonograph
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeMonographImplCopyWith<
          _$MedicationKnowledgeMonographImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeIngredient _$MedicationKnowledgeIngredientFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeIngredient.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeIngredient {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [itemCodeableConcept] The actual ingredient - either a substance (simple
  ///  ingredient) or another medication.
  CodeableConcept? get itemCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [itemReference] The actual ingredient - either a substance (simple
  ///  ingredient) or another medication.
  Reference? get itemReference => throw _privateConstructorUsedError;

  /// [isActive] Indication of whether this ingredient affects the therapeutic
  ///  action of the drug.
  FhirBoolean? get isActive => throw _privateConstructorUsedError;

  /// [isActiveElement] Extensions for isActive
  @JsonKey(name: '_isActive')
  PrimitiveElement? get isActiveElement => throw _privateConstructorUsedError;

  /// [strength] Specifies how many (or how much) of the items there are in
  /// this Medication.  For example, 250 mg per tablet.  This is expressed as a
  ///  ratio where the numerator is 250mg and the denominator is 1 tablet.
  Ratio? get strength => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeIngredient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeIngredient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeIngredientCopyWith<MedicationKnowledgeIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeIngredientCopyWith<$Res> {
  factory $MedicationKnowledgeIngredientCopyWith(
          MedicationKnowledgeIngredient value,
          $Res Function(MedicationKnowledgeIngredient) then) =
      _$MedicationKnowledgeIngredientCopyWithImpl<$Res,
          MedicationKnowledgeIngredient>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? itemCodeableConcept,
      Reference? itemReference,
      FhirBoolean? isActive,
      @JsonKey(name: '_isActive') PrimitiveElement? isActiveElement,
      Ratio? strength});
}

/// @nodoc
class _$MedicationKnowledgeIngredientCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeIngredient>
    implements $MedicationKnowledgeIngredientCopyWith<$Res> {
  _$MedicationKnowledgeIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeIngredient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemCodeableConcept = freezed,
    Object? itemReference = freezed,
    Object? isActive = freezed,
    Object? isActiveElement = freezed,
    Object? strength = freezed,
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
      itemCodeableConcept: freezed == itemCodeableConcept
          ? _value.itemCodeableConcept
          : itemCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      itemReference: freezed == itemReference
          ? _value.itemReference
          : itemReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isActiveElement: freezed == isActiveElement
          ? _value.isActiveElement
          : isActiveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      strength: freezed == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as Ratio?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeIngredientImplCopyWith<$Res>
    implements $MedicationKnowledgeIngredientCopyWith<$Res> {
  factory _$$MedicationKnowledgeIngredientImplCopyWith(
          _$MedicationKnowledgeIngredientImpl value,
          $Res Function(_$MedicationKnowledgeIngredientImpl) then) =
      __$$MedicationKnowledgeIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? itemCodeableConcept,
      Reference? itemReference,
      FhirBoolean? isActive,
      @JsonKey(name: '_isActive') PrimitiveElement? isActiveElement,
      Ratio? strength});
}

/// @nodoc
class __$$MedicationKnowledgeIngredientImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeIngredientCopyWithImpl<$Res,
        _$MedicationKnowledgeIngredientImpl>
    implements _$$MedicationKnowledgeIngredientImplCopyWith<$Res> {
  __$$MedicationKnowledgeIngredientImplCopyWithImpl(
      _$MedicationKnowledgeIngredientImpl _value,
      $Res Function(_$MedicationKnowledgeIngredientImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeIngredient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? itemCodeableConcept = freezed,
    Object? itemReference = freezed,
    Object? isActive = freezed,
    Object? isActiveElement = freezed,
    Object? strength = freezed,
  }) {
    return _then(_$MedicationKnowledgeIngredientImpl(
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
      itemCodeableConcept: freezed == itemCodeableConcept
          ? _value.itemCodeableConcept
          : itemCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      itemReference: freezed == itemReference
          ? _value.itemReference
          : itemReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isActiveElement: freezed == isActiveElement
          ? _value.isActiveElement
          : isActiveElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      strength: freezed == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as Ratio?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeIngredientImpl
    extends _MedicationKnowledgeIngredient {
  _$MedicationKnowledgeIngredientImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.itemCodeableConcept,
      this.itemReference,
      this.isActive,
      @JsonKey(name: '_isActive') this.isActiveElement,
      this.strength})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgeIngredientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeIngredientImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [itemCodeableConcept] The actual ingredient - either a substance (simple
  ///  ingredient) or another medication.
  @override
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] The actual ingredient - either a substance (simple
  ///  ingredient) or another medication.
  @override
  final Reference? itemReference;

  /// [isActive] Indication of whether this ingredient affects the therapeutic
  ///  action of the drug.
  @override
  final FhirBoolean? isActive;

  /// [isActiveElement] Extensions for isActive
  @override
  @JsonKey(name: '_isActive')
  final PrimitiveElement? isActiveElement;

  /// [strength] Specifies how many (or how much) of the items there are in
  /// this Medication.  For example, 250 mg per tablet.  This is expressed as a
  ///  ratio where the numerator is 250mg and the denominator is 1 tablet.
  @override
  final Ratio? strength;

  @override
  String toString() {
    return 'MedicationKnowledgeIngredient(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, itemCodeableConcept: $itemCodeableConcept, itemReference: $itemReference, isActive: $isActive, isActiveElement: $isActiveElement, strength: $strength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeIngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other.itemCodeableConcept, itemCodeableConcept) &&
            const DeepCollectionEquality()
                .equals(other.itemReference, itemReference) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isActiveElement, isActiveElement) ||
                other.isActiveElement == isActiveElement) &&
            const DeepCollectionEquality().equals(other.strength, strength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(itemCodeableConcept),
      const DeepCollectionEquality().hash(itemReference),
      isActive,
      isActiveElement,
      const DeepCollectionEquality().hash(strength));

  /// Create a copy of MedicationKnowledgeIngredient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeIngredientImplCopyWith<
          _$MedicationKnowledgeIngredientImpl>
      get copyWith => __$$MedicationKnowledgeIngredientImplCopyWithImpl<
          _$MedicationKnowledgeIngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeIngredientImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeIngredient
    extends MedicationKnowledgeIngredient {
  factory _MedicationKnowledgeIngredient(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? itemCodeableConcept,
      final Reference? itemReference,
      final FhirBoolean? isActive,
      @JsonKey(name: '_isActive') final PrimitiveElement? isActiveElement,
      final Ratio? strength}) = _$MedicationKnowledgeIngredientImpl;
  _MedicationKnowledgeIngredient._() : super._();

  factory _MedicationKnowledgeIngredient.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeIngredientImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [itemCodeableConcept] The actual ingredient - either a substance (simple
  ///  ingredient) or another medication.
  @override
  CodeableConcept? get itemCodeableConcept;

  /// [itemReference] The actual ingredient - either a substance (simple
  ///  ingredient) or another medication.
  @override
  Reference? get itemReference;

  /// [isActive] Indication of whether this ingredient affects the therapeutic
  ///  action of the drug.
  @override
  FhirBoolean? get isActive;

  /// [isActiveElement] Extensions for isActive
  @override
  @JsonKey(name: '_isActive')
  PrimitiveElement? get isActiveElement;

  /// [strength] Specifies how many (or how much) of the items there are in
  /// this Medication.  For example, 250 mg per tablet.  This is expressed as a
  ///  ratio where the numerator is 250mg and the denominator is 1 tablet.
  @override
  Ratio? get strength;

  /// Create a copy of MedicationKnowledgeIngredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeIngredientImplCopyWith<
          _$MedicationKnowledgeIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeCost _$MedicationKnowledgeCostFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeCost.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeCost {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The category of the cost information.  For example, manufacturers'
  ///  cost, patient cost, claim reimbursement cost, actual acquisition cost.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [source] The source or owner that assigns the price to the medication.
  String? get source => throw _privateConstructorUsedError;

  /// [sourceElement] Extensions for source
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement => throw _privateConstructorUsedError;

  /// [cost] The price of the medication.
  Money get cost => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeCost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeCostCopyWith<MedicationKnowledgeCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeCostCopyWith<$Res> {
  factory $MedicationKnowledgeCostCopyWith(MedicationKnowledgeCost value,
          $Res Function(MedicationKnowledgeCost) then) =
      _$MedicationKnowledgeCostCopyWithImpl<$Res, MedicationKnowledgeCost>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      String? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      Money cost});
}

/// @nodoc
class _$MedicationKnowledgeCostCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeCost>
    implements $MedicationKnowledgeCostCopyWith<$Res> {
  _$MedicationKnowledgeCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? cost = freezed,
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
              as CodeableConcept,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Money,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeCostImplCopyWith<$Res>
    implements $MedicationKnowledgeCostCopyWith<$Res> {
  factory _$$MedicationKnowledgeCostImplCopyWith(
          _$MedicationKnowledgeCostImpl value,
          $Res Function(_$MedicationKnowledgeCostImpl) then) =
      __$$MedicationKnowledgeCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      String? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      Money cost});
}

/// @nodoc
class __$$MedicationKnowledgeCostImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeCostCopyWithImpl<$Res,
        _$MedicationKnowledgeCostImpl>
    implements _$$MedicationKnowledgeCostImplCopyWith<$Res> {
  __$$MedicationKnowledgeCostImplCopyWithImpl(
      _$MedicationKnowledgeCostImpl _value,
      $Res Function(_$MedicationKnowledgeCostImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$MedicationKnowledgeCostImpl(
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
              as CodeableConcept,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Money,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeCostImpl extends _MedicationKnowledgeCost {
  _$MedicationKnowledgeCostImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.source,
      @JsonKey(name: '_source') this.sourceElement,
      required this.cost})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgeCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationKnowledgeCostImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The category of the cost information.  For example, manufacturers'
  ///  cost, patient cost, claim reimbursement cost, actual acquisition cost.
  @override
  final CodeableConcept type;

  /// [source] The source or owner that assigns the price to the medication.
  @override
  final String? source;

  /// [sourceElement] Extensions for source
  @override
  @JsonKey(name: '_source')
  final PrimitiveElement? sourceElement;

  /// [cost] The price of the medication.
  @override
  final Money cost;

  @override
  String toString() {
    return 'MedicationKnowledgeCost(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, source: $source, sourceElement: $sourceElement, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeCostImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceElement, sourceElement) ||
                other.sourceElement == sourceElement) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      source,
      sourceElement,
      const DeepCollectionEquality().hash(cost));

  /// Create a copy of MedicationKnowledgeCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeCostImplCopyWith<_$MedicationKnowledgeCostImpl>
      get copyWith => __$$MedicationKnowledgeCostImplCopyWithImpl<
          _$MedicationKnowledgeCostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeCostImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeCost extends MedicationKnowledgeCost {
  factory _MedicationKnowledgeCost(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final String? source,
      @JsonKey(name: '_source') final PrimitiveElement? sourceElement,
      required final Money cost}) = _$MedicationKnowledgeCostImpl;
  _MedicationKnowledgeCost._() : super._();

  factory _MedicationKnowledgeCost.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeCostImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] The category of the cost information.  For example, manufacturers'
  ///  cost, patient cost, claim reimbursement cost, actual acquisition cost.
  @override
  CodeableConcept get type;

  /// [source] The source or owner that assigns the price to the medication.
  @override
  String? get source;

  /// [sourceElement] Extensions for source
  @override
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement;

  /// [cost] The price of the medication.
  @override
  Money get cost;

  /// Create a copy of MedicationKnowledgeCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeCostImplCopyWith<_$MedicationKnowledgeCostImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeMonitoringProgram
    _$MedicationKnowledgeMonitoringProgramFromJson(Map<String, dynamic> json) {
  return _MedicationKnowledgeMonitoringProgram.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeMonitoringProgram {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Type of program under which the medication is monitored.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [name] Name of the reviewing program.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeMonitoringProgram to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeMonitoringProgram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeMonitoringProgramCopyWith<
          MedicationKnowledgeMonitoringProgram>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeMonitoringProgramCopyWith<$Res> {
  factory $MedicationKnowledgeMonitoringProgramCopyWith(
          MedicationKnowledgeMonitoringProgram value,
          $Res Function(MedicationKnowledgeMonitoringProgram) then) =
      _$MedicationKnowledgeMonitoringProgramCopyWithImpl<$Res,
          MedicationKnowledgeMonitoringProgram>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement});
}

/// @nodoc
class _$MedicationKnowledgeMonitoringProgramCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeMonitoringProgram>
    implements $MedicationKnowledgeMonitoringProgramCopyWith<$Res> {
  _$MedicationKnowledgeMonitoringProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeMonitoringProgram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeMonitoringProgramImplCopyWith<$Res>
    implements $MedicationKnowledgeMonitoringProgramCopyWith<$Res> {
  factory _$$MedicationKnowledgeMonitoringProgramImplCopyWith(
          _$MedicationKnowledgeMonitoringProgramImpl value,
          $Res Function(_$MedicationKnowledgeMonitoringProgramImpl) then) =
      __$$MedicationKnowledgeMonitoringProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement});
}

/// @nodoc
class __$$MedicationKnowledgeMonitoringProgramImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeMonitoringProgramCopyWithImpl<$Res,
        _$MedicationKnowledgeMonitoringProgramImpl>
    implements _$$MedicationKnowledgeMonitoringProgramImplCopyWith<$Res> {
  __$$MedicationKnowledgeMonitoringProgramImplCopyWithImpl(
      _$MedicationKnowledgeMonitoringProgramImpl _value,
      $Res Function(_$MedicationKnowledgeMonitoringProgramImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeMonitoringProgram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
  }) {
    return _then(_$MedicationKnowledgeMonitoringProgramImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeMonitoringProgramImpl
    extends _MedicationKnowledgeMonitoringProgram {
  _$MedicationKnowledgeMonitoringProgramImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.name,
      @JsonKey(name: '_name') this.nameElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgeMonitoringProgramImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeMonitoringProgramImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Type of program under which the medication is monitored.
  @override
  final CodeableConcept? type;

  /// [name] Name of the reviewing program.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  @override
  String toString() {
    return 'MedicationKnowledgeMonitoringProgram(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, name: $name, nameElement: $nameElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeMonitoringProgramImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      name,
      nameElement);

  /// Create a copy of MedicationKnowledgeMonitoringProgram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeMonitoringProgramImplCopyWith<
          _$MedicationKnowledgeMonitoringProgramImpl>
      get copyWith => __$$MedicationKnowledgeMonitoringProgramImplCopyWithImpl<
          _$MedicationKnowledgeMonitoringProgramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeMonitoringProgramImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeMonitoringProgram
    extends MedicationKnowledgeMonitoringProgram {
  factory _MedicationKnowledgeMonitoringProgram(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement}) =
      _$MedicationKnowledgeMonitoringProgramImpl;
  _MedicationKnowledgeMonitoringProgram._() : super._();

  factory _MedicationKnowledgeMonitoringProgram.fromJson(
          Map<String, dynamic> json) =
      _$MedicationKnowledgeMonitoringProgramImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] Type of program under which the medication is monitored.
  @override
  CodeableConcept? get type;

  /// [name] Name of the reviewing program.
  @override
  String? get name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;

  /// Create a copy of MedicationKnowledgeMonitoringProgram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeMonitoringProgramImplCopyWith<
          _$MedicationKnowledgeMonitoringProgramImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeAdministrationGuidelines
    _$MedicationKnowledgeAdministrationGuidelinesFromJson(
        Map<String, dynamic> json) {
  return _MedicationKnowledgeAdministrationGuidelines.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeAdministrationGuidelines {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [dosage] Dosage for the medication for the specific guidelines.
  List<MedicationKnowledgeDosage>? get dosage =>
      throw _privateConstructorUsedError;

  /// [indicationCodeableConcept] Indication for use that apply to the specific
  ///  administration guidelines.
  CodeableConcept? get indicationCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [indicationReference] Indication for use that apply to the specific
  ///  administration guidelines.
  Reference? get indicationReference => throw _privateConstructorUsedError;

  /// [patientCharacteristics] Characteristics of the patient that are relevant
  /// to the administration guidelines (for example, height, weight, gender,
  ///  etc.).
  List<MedicationKnowledgePatientCharacteristics>? get patientCharacteristics =>
      throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeAdministrationGuidelines to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeAdministrationGuidelines
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeAdministrationGuidelinesCopyWith<
          MedicationKnowledgeAdministrationGuidelines>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeAdministrationGuidelinesCopyWith<$Res> {
  factory $MedicationKnowledgeAdministrationGuidelinesCopyWith(
          MedicationKnowledgeAdministrationGuidelines value,
          $Res Function(MedicationKnowledgeAdministrationGuidelines) then) =
      _$MedicationKnowledgeAdministrationGuidelinesCopyWithImpl<$Res,
          MedicationKnowledgeAdministrationGuidelines>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<MedicationKnowledgeDosage>? dosage,
      CodeableConcept? indicationCodeableConcept,
      Reference? indicationReference,
      List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics});
}

/// @nodoc
class _$MedicationKnowledgeAdministrationGuidelinesCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeAdministrationGuidelines>
    implements $MedicationKnowledgeAdministrationGuidelinesCopyWith<$Res> {
  _$MedicationKnowledgeAdministrationGuidelinesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeAdministrationGuidelines
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? dosage = freezed,
    Object? indicationCodeableConcept = freezed,
    Object? indicationReference = freezed,
    Object? patientCharacteristics = freezed,
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
      dosage: freezed == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeDosage>?,
      indicationCodeableConcept: freezed == indicationCodeableConcept
          ? _value.indicationCodeableConcept
          : indicationCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      indicationReference: freezed == indicationReference
          ? _value.indicationReference
          : indicationReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      patientCharacteristics: freezed == patientCharacteristics
          ? _value.patientCharacteristics
          : patientCharacteristics // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgePatientCharacteristics>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeAdministrationGuidelinesImplCopyWith<$Res>
    implements $MedicationKnowledgeAdministrationGuidelinesCopyWith<$Res> {
  factory _$$MedicationKnowledgeAdministrationGuidelinesImplCopyWith(
          _$MedicationKnowledgeAdministrationGuidelinesImpl value,
          $Res Function(_$MedicationKnowledgeAdministrationGuidelinesImpl)
              then) =
      __$$MedicationKnowledgeAdministrationGuidelinesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<MedicationKnowledgeDosage>? dosage,
      CodeableConcept? indicationCodeableConcept,
      Reference? indicationReference,
      List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics});
}

/// @nodoc
class __$$MedicationKnowledgeAdministrationGuidelinesImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeAdministrationGuidelinesCopyWithImpl<$Res,
        _$MedicationKnowledgeAdministrationGuidelinesImpl>
    implements
        _$$MedicationKnowledgeAdministrationGuidelinesImplCopyWith<$Res> {
  __$$MedicationKnowledgeAdministrationGuidelinesImplCopyWithImpl(
      _$MedicationKnowledgeAdministrationGuidelinesImpl _value,
      $Res Function(_$MedicationKnowledgeAdministrationGuidelinesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeAdministrationGuidelines
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? dosage = freezed,
    Object? indicationCodeableConcept = freezed,
    Object? indicationReference = freezed,
    Object? patientCharacteristics = freezed,
  }) {
    return _then(_$MedicationKnowledgeAdministrationGuidelinesImpl(
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
      dosage: freezed == dosage
          ? _value._dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeDosage>?,
      indicationCodeableConcept: freezed == indicationCodeableConcept
          ? _value.indicationCodeableConcept
          : indicationCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      indicationReference: freezed == indicationReference
          ? _value.indicationReference
          : indicationReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      patientCharacteristics: freezed == patientCharacteristics
          ? _value._patientCharacteristics
          : patientCharacteristics // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgePatientCharacteristics>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeAdministrationGuidelinesImpl
    extends _MedicationKnowledgeAdministrationGuidelines {
  _$MedicationKnowledgeAdministrationGuidelinesImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<MedicationKnowledgeDosage>? dosage,
      this.indicationCodeableConcept,
      this.indicationReference,
      final List<MedicationKnowledgePatientCharacteristics>?
          patientCharacteristics})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _dosage = dosage,
        _patientCharacteristics = patientCharacteristics,
        super._();

  factory _$MedicationKnowledgeAdministrationGuidelinesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeAdministrationGuidelinesImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [dosage] Dosage for the medication for the specific guidelines.
  final List<MedicationKnowledgeDosage>? _dosage;

  /// [dosage] Dosage for the medication for the specific guidelines.
  @override
  List<MedicationKnowledgeDosage>? get dosage {
    final value = _dosage;
    if (value == null) return null;
    if (_dosage is EqualUnmodifiableListView) return _dosage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [indicationCodeableConcept] Indication for use that apply to the specific
  ///  administration guidelines.
  @override
  final CodeableConcept? indicationCodeableConcept;

  /// [indicationReference] Indication for use that apply to the specific
  ///  administration guidelines.
  @override
  final Reference? indicationReference;

  /// [patientCharacteristics] Characteristics of the patient that are relevant
  /// to the administration guidelines (for example, height, weight, gender,
  ///  etc.).
  final List<MedicationKnowledgePatientCharacteristics>?
      _patientCharacteristics;

  /// [patientCharacteristics] Characteristics of the patient that are relevant
  /// to the administration guidelines (for example, height, weight, gender,
  ///  etc.).
  @override
  List<MedicationKnowledgePatientCharacteristics>? get patientCharacteristics {
    final value = _patientCharacteristics;
    if (value == null) return null;
    if (_patientCharacteristics is EqualUnmodifiableListView)
      return _patientCharacteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MedicationKnowledgeAdministrationGuidelines(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, dosage: $dosage, indicationCodeableConcept: $indicationCodeableConcept, indicationReference: $indicationReference, patientCharacteristics: $patientCharacteristics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeAdministrationGuidelinesImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._dosage, _dosage) &&
            const DeepCollectionEquality().equals(
                other.indicationCodeableConcept, indicationCodeableConcept) &&
            const DeepCollectionEquality()
                .equals(other.indicationReference, indicationReference) &&
            const DeepCollectionEquality().equals(
                other._patientCharacteristics, _patientCharacteristics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_dosage),
      const DeepCollectionEquality().hash(indicationCodeableConcept),
      const DeepCollectionEquality().hash(indicationReference),
      const DeepCollectionEquality().hash(_patientCharacteristics));

  /// Create a copy of MedicationKnowledgeAdministrationGuidelines
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeAdministrationGuidelinesImplCopyWith<
          _$MedicationKnowledgeAdministrationGuidelinesImpl>
      get copyWith =>
          __$$MedicationKnowledgeAdministrationGuidelinesImplCopyWithImpl<
                  _$MedicationKnowledgeAdministrationGuidelinesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeAdministrationGuidelinesImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeAdministrationGuidelines
    extends MedicationKnowledgeAdministrationGuidelines {
  factory _MedicationKnowledgeAdministrationGuidelines(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<MedicationKnowledgeDosage>? dosage,
          final CodeableConcept? indicationCodeableConcept,
          final Reference? indicationReference,
          final List<MedicationKnowledgePatientCharacteristics>?
              patientCharacteristics}) =
      _$MedicationKnowledgeAdministrationGuidelinesImpl;
  _MedicationKnowledgeAdministrationGuidelines._() : super._();

  factory _MedicationKnowledgeAdministrationGuidelines.fromJson(
          Map<String, dynamic> json) =
      _$MedicationKnowledgeAdministrationGuidelinesImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [dosage] Dosage for the medication for the specific guidelines.
  @override
  List<MedicationKnowledgeDosage>? get dosage;

  /// [indicationCodeableConcept] Indication for use that apply to the specific
  ///  administration guidelines.
  @override
  CodeableConcept? get indicationCodeableConcept;

  /// [indicationReference] Indication for use that apply to the specific
  ///  administration guidelines.
  @override
  Reference? get indicationReference;

  /// [patientCharacteristics] Characteristics of the patient that are relevant
  /// to the administration guidelines (for example, height, weight, gender,
  ///  etc.).
  @override
  List<MedicationKnowledgePatientCharacteristics>? get patientCharacteristics;

  /// Create a copy of MedicationKnowledgeAdministrationGuidelines
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeAdministrationGuidelinesImplCopyWith<
          _$MedicationKnowledgeAdministrationGuidelinesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeDosage _$MedicationKnowledgeDosageFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeDosage.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeDosage {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The type of dosage (for example, prophylaxis, maintenance,
  ///  therapeutic, etc.).
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [dosage] Dosage for the medication for the specific guidelines.
  List<Dosage> get dosage => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeDosage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeDosage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeDosageCopyWith<MedicationKnowledgeDosage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeDosageCopyWith<$Res> {
  factory $MedicationKnowledgeDosageCopyWith(MedicationKnowledgeDosage value,
          $Res Function(MedicationKnowledgeDosage) then) =
      _$MedicationKnowledgeDosageCopyWithImpl<$Res, MedicationKnowledgeDosage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<Dosage> dosage});
}

/// @nodoc
class _$MedicationKnowledgeDosageCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeDosage>
    implements $MedicationKnowledgeDosageCopyWith<$Res> {
  _$MedicationKnowledgeDosageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeDosage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? dosage = null,
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
              as CodeableConcept,
      dosage: null == dosage
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as List<Dosage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeDosageImplCopyWith<$Res>
    implements $MedicationKnowledgeDosageCopyWith<$Res> {
  factory _$$MedicationKnowledgeDosageImplCopyWith(
          _$MedicationKnowledgeDosageImpl value,
          $Res Function(_$MedicationKnowledgeDosageImpl) then) =
      __$$MedicationKnowledgeDosageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<Dosage> dosage});
}

/// @nodoc
class __$$MedicationKnowledgeDosageImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeDosageCopyWithImpl<$Res,
        _$MedicationKnowledgeDosageImpl>
    implements _$$MedicationKnowledgeDosageImplCopyWith<$Res> {
  __$$MedicationKnowledgeDosageImplCopyWithImpl(
      _$MedicationKnowledgeDosageImpl _value,
      $Res Function(_$MedicationKnowledgeDosageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeDosage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? dosage = null,
  }) {
    return _then(_$MedicationKnowledgeDosageImpl(
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
              as CodeableConcept,
      dosage: null == dosage
          ? _value._dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as List<Dosage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeDosageImpl extends _MedicationKnowledgeDosage {
  _$MedicationKnowledgeDosageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      required final List<Dosage> dosage})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _dosage = dosage,
        super._();

  factory _$MedicationKnowledgeDosageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicationKnowledgeDosageImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type of dosage (for example, prophylaxis, maintenance,
  ///  therapeutic, etc.).
  @override
  final CodeableConcept type;

  /// [dosage] Dosage for the medication for the specific guidelines.
  final List<Dosage> _dosage;

  /// [dosage] Dosage for the medication for the specific guidelines.
  @override
  List<Dosage> get dosage {
    if (_dosage is EqualUnmodifiableListView) return _dosage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dosage);
  }

  @override
  String toString() {
    return 'MedicationKnowledgeDosage(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, dosage: $dosage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeDosageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other._dosage, _dosage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_dosage));

  /// Create a copy of MedicationKnowledgeDosage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeDosageImplCopyWith<_$MedicationKnowledgeDosageImpl>
      get copyWith => __$$MedicationKnowledgeDosageImplCopyWithImpl<
          _$MedicationKnowledgeDosageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeDosageImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeDosage extends MedicationKnowledgeDosage {
  factory _MedicationKnowledgeDosage(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      required final List<Dosage> dosage}) = _$MedicationKnowledgeDosageImpl;
  _MedicationKnowledgeDosage._() : super._();

  factory _MedicationKnowledgeDosage.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeDosageImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] The type of dosage (for example, prophylaxis, maintenance,
  ///  therapeutic, etc.).
  @override
  CodeableConcept get type;

  /// [dosage] Dosage for the medication for the specific guidelines.
  @override
  List<Dosage> get dosage;

  /// Create a copy of MedicationKnowledgeDosage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeDosageImplCopyWith<_$MedicationKnowledgeDosageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgePatientCharacteristics
    _$MedicationKnowledgePatientCharacteristicsFromJson(
        Map<String, dynamic> json) {
  return _MedicationKnowledgePatientCharacteristics.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgePatientCharacteristics {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [characteristicCodeableConcept] Specific characteristic that is relevant
  ///  to the administration guideline (e.g. height, weight, gender).
  CodeableConcept? get characteristicCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [characteristicQuantity] Specific characteristic that is relevant to the
  ///  administration guideline (e.g. height, weight, gender).
  Quantity? get characteristicQuantity => throw _privateConstructorUsedError;

  /// [value] The specific characteristic (e.g. height, weight, gender, etc.).
  List<String>? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  List<PrimitiveElement>? get valueElement =>
      throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgePatientCharacteristics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgePatientCharacteristics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgePatientCharacteristicsCopyWith<
          MedicationKnowledgePatientCharacteristics>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgePatientCharacteristicsCopyWith<$Res> {
  factory $MedicationKnowledgePatientCharacteristicsCopyWith(
          MedicationKnowledgePatientCharacteristics value,
          $Res Function(MedicationKnowledgePatientCharacteristics) then) =
      _$MedicationKnowledgePatientCharacteristicsCopyWithImpl<$Res,
          MedicationKnowledgePatientCharacteristics>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? characteristicCodeableConcept,
      Quantity? characteristicQuantity,
      List<String>? value,
      @JsonKey(name: '_value') List<PrimitiveElement>? valueElement});
}

/// @nodoc
class _$MedicationKnowledgePatientCharacteristicsCopyWithImpl<$Res,
        $Val extends MedicationKnowledgePatientCharacteristics>
    implements $MedicationKnowledgePatientCharacteristicsCopyWith<$Res> {
  _$MedicationKnowledgePatientCharacteristicsCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgePatientCharacteristics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? characteristicCodeableConcept = freezed,
    Object? characteristicQuantity = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
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
      characteristicCodeableConcept: freezed == characteristicCodeableConcept
          ? _value.characteristicCodeableConcept
          : characteristicCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      characteristicQuantity: freezed == characteristicQuantity
          ? _value.characteristicQuantity
          : characteristicQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgePatientCharacteristicsImplCopyWith<$Res>
    implements $MedicationKnowledgePatientCharacteristicsCopyWith<$Res> {
  factory _$$MedicationKnowledgePatientCharacteristicsImplCopyWith(
          _$MedicationKnowledgePatientCharacteristicsImpl value,
          $Res Function(_$MedicationKnowledgePatientCharacteristicsImpl) then) =
      __$$MedicationKnowledgePatientCharacteristicsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? characteristicCodeableConcept,
      Quantity? characteristicQuantity,
      List<String>? value,
      @JsonKey(name: '_value') List<PrimitiveElement>? valueElement});
}

/// @nodoc
class __$$MedicationKnowledgePatientCharacteristicsImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgePatientCharacteristicsCopyWithImpl<$Res,
        _$MedicationKnowledgePatientCharacteristicsImpl>
    implements _$$MedicationKnowledgePatientCharacteristicsImplCopyWith<$Res> {
  __$$MedicationKnowledgePatientCharacteristicsImplCopyWithImpl(
      _$MedicationKnowledgePatientCharacteristicsImpl _value,
      $Res Function(_$MedicationKnowledgePatientCharacteristicsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgePatientCharacteristics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? characteristicCodeableConcept = freezed,
    Object? characteristicQuantity = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
  }) {
    return _then(_$MedicationKnowledgePatientCharacteristicsImpl(
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
      characteristicCodeableConcept: freezed == characteristicCodeableConcept
          ? _value.characteristicCodeableConcept
          : characteristicCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      characteristicQuantity: freezed == characteristicQuantity
          ? _value.characteristicQuantity
          : characteristicQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      valueElement: freezed == valueElement
          ? _value._valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgePatientCharacteristicsImpl
    extends _MedicationKnowledgePatientCharacteristics {
  _$MedicationKnowledgePatientCharacteristicsImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.characteristicCodeableConcept,
      this.characteristicQuantity,
      final List<String>? value,
      @JsonKey(name: '_value') final List<PrimitiveElement>? valueElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _value = value,
        _valueElement = valueElement,
        super._();

  factory _$MedicationKnowledgePatientCharacteristicsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgePatientCharacteristicsImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [characteristicCodeableConcept] Specific characteristic that is relevant
  ///  to the administration guideline (e.g. height, weight, gender).
  @override
  final CodeableConcept? characteristicCodeableConcept;

  /// [characteristicQuantity] Specific characteristic that is relevant to the
  ///  administration guideline (e.g. height, weight, gender).
  @override
  final Quantity? characteristicQuantity;

  /// [value] The specific characteristic (e.g. height, weight, gender, etc.).
  final List<String>? _value;

  /// [value] The specific characteristic (e.g. height, weight, gender, etc.).
  @override
  List<String>? get value {
    final value = _value;
    if (value == null) return null;
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [valueElement] Extensions for value
  final List<PrimitiveElement>? _valueElement;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  List<PrimitiveElement>? get valueElement {
    final value = _valueElement;
    if (value == null) return null;
    if (_valueElement is EqualUnmodifiableListView) return _valueElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MedicationKnowledgePatientCharacteristics(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, characteristicCodeableConcept: $characteristicCodeableConcept, characteristicQuantity: $characteristicQuantity, value: $value, valueElement: $valueElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgePatientCharacteristicsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(
                other.characteristicCodeableConcept,
                characteristicCodeableConcept) &&
            const DeepCollectionEquality()
                .equals(other.characteristicQuantity, characteristicQuantity) &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            const DeepCollectionEquality()
                .equals(other._valueElement, _valueElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(characteristicCodeableConcept),
      const DeepCollectionEquality().hash(characteristicQuantity),
      const DeepCollectionEquality().hash(_value),
      const DeepCollectionEquality().hash(_valueElement));

  /// Create a copy of MedicationKnowledgePatientCharacteristics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgePatientCharacteristicsImplCopyWith<
          _$MedicationKnowledgePatientCharacteristicsImpl>
      get copyWith =>
          __$$MedicationKnowledgePatientCharacteristicsImplCopyWithImpl<
                  _$MedicationKnowledgePatientCharacteristicsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgePatientCharacteristicsImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgePatientCharacteristics
    extends MedicationKnowledgePatientCharacteristics {
  factory _MedicationKnowledgePatientCharacteristics(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? characteristicCodeableConcept,
          final Quantity? characteristicQuantity,
          final List<String>? value,
          @JsonKey(name: '_value')
          final List<PrimitiveElement>? valueElement}) =
      _$MedicationKnowledgePatientCharacteristicsImpl;
  _MedicationKnowledgePatientCharacteristics._() : super._();

  factory _MedicationKnowledgePatientCharacteristics.fromJson(
          Map<String, dynamic> json) =
      _$MedicationKnowledgePatientCharacteristicsImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [characteristicCodeableConcept] Specific characteristic that is relevant
  ///  to the administration guideline (e.g. height, weight, gender).
  @override
  CodeableConcept? get characteristicCodeableConcept;

  /// [characteristicQuantity] Specific characteristic that is relevant to the
  ///  administration guideline (e.g. height, weight, gender).
  @override
  Quantity? get characteristicQuantity;

  /// [value] The specific characteristic (e.g. height, weight, gender, etc.).
  @override
  List<String>? get value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  List<PrimitiveElement>? get valueElement;

  /// Create a copy of MedicationKnowledgePatientCharacteristics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgePatientCharacteristicsImplCopyWith<
          _$MedicationKnowledgePatientCharacteristicsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeMedicineClassification
    _$MedicationKnowledgeMedicineClassificationFromJson(
        Map<String, dynamic> json) {
  return _MedicationKnowledgeMedicineClassification.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeMedicineClassification {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The type of category for the medication (for example, therapeutic
  ///  classification, therapeutic sub-classification).
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [classification] Specific category assigned to the medication (e.g.
  ///  anti-infective, anti-hypertensive, antibiotic, etc.).
  List<CodeableConcept>? get classification =>
      throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeMedicineClassification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeMedicineClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeMedicineClassificationCopyWith<
          MedicationKnowledgeMedicineClassification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeMedicineClassificationCopyWith<$Res> {
  factory $MedicationKnowledgeMedicineClassificationCopyWith(
          MedicationKnowledgeMedicineClassification value,
          $Res Function(MedicationKnowledgeMedicineClassification) then) =
      _$MedicationKnowledgeMedicineClassificationCopyWithImpl<$Res,
          MedicationKnowledgeMedicineClassification>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<CodeableConcept>? classification});
}

/// @nodoc
class _$MedicationKnowledgeMedicineClassificationCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeMedicineClassification>
    implements $MedicationKnowledgeMedicineClassificationCopyWith<$Res> {
  _$MedicationKnowledgeMedicineClassificationCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeMedicineClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? classification = freezed,
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
              as CodeableConcept,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeMedicineClassificationImplCopyWith<$Res>
    implements $MedicationKnowledgeMedicineClassificationCopyWith<$Res> {
  factory _$$MedicationKnowledgeMedicineClassificationImplCopyWith(
          _$MedicationKnowledgeMedicineClassificationImpl value,
          $Res Function(_$MedicationKnowledgeMedicineClassificationImpl) then) =
      __$$MedicationKnowledgeMedicineClassificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      List<CodeableConcept>? classification});
}

/// @nodoc
class __$$MedicationKnowledgeMedicineClassificationImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeMedicineClassificationCopyWithImpl<$Res,
        _$MedicationKnowledgeMedicineClassificationImpl>
    implements _$$MedicationKnowledgeMedicineClassificationImplCopyWith<$Res> {
  __$$MedicationKnowledgeMedicineClassificationImplCopyWithImpl(
      _$MedicationKnowledgeMedicineClassificationImpl _value,
      $Res Function(_$MedicationKnowledgeMedicineClassificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeMedicineClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? classification = freezed,
  }) {
    return _then(_$MedicationKnowledgeMedicineClassificationImpl(
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
              as CodeableConcept,
      classification: freezed == classification
          ? _value._classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeMedicineClassificationImpl
    extends _MedicationKnowledgeMedicineClassification {
  _$MedicationKnowledgeMedicineClassificationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      final List<CodeableConcept>? classification})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _classification = classification,
        super._();

  factory _$MedicationKnowledgeMedicineClassificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeMedicineClassificationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type of category for the medication (for example, therapeutic
  ///  classification, therapeutic sub-classification).
  @override
  final CodeableConcept type;

  /// [classification] Specific category assigned to the medication (e.g.
  ///  anti-infective, anti-hypertensive, antibiotic, etc.).
  final List<CodeableConcept>? _classification;

  /// [classification] Specific category assigned to the medication (e.g.
  ///  anti-infective, anti-hypertensive, antibiotic, etc.).
  @override
  List<CodeableConcept>? get classification {
    final value = _classification;
    if (value == null) return null;
    if (_classification is EqualUnmodifiableListView) return _classification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MedicationKnowledgeMedicineClassification(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, classification: $classification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeMedicineClassificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other._classification, _classification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_classification));

  /// Create a copy of MedicationKnowledgeMedicineClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeMedicineClassificationImplCopyWith<
          _$MedicationKnowledgeMedicineClassificationImpl>
      get copyWith =>
          __$$MedicationKnowledgeMedicineClassificationImplCopyWithImpl<
                  _$MedicationKnowledgeMedicineClassificationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeMedicineClassificationImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeMedicineClassification
    extends MedicationKnowledgeMedicineClassification {
  factory _MedicationKnowledgeMedicineClassification(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          final List<CodeableConcept>? classification}) =
      _$MedicationKnowledgeMedicineClassificationImpl;
  _MedicationKnowledgeMedicineClassification._() : super._();

  factory _MedicationKnowledgeMedicineClassification.fromJson(
          Map<String, dynamic> json) =
      _$MedicationKnowledgeMedicineClassificationImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] The type of category for the medication (for example, therapeutic
  ///  classification, therapeutic sub-classification).
  @override
  CodeableConcept get type;

  /// [classification] Specific category assigned to the medication (e.g.
  ///  anti-infective, anti-hypertensive, antibiotic, etc.).
  @override
  List<CodeableConcept>? get classification;

  /// Create a copy of MedicationKnowledgeMedicineClassification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeMedicineClassificationImplCopyWith<
          _$MedicationKnowledgeMedicineClassificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgePackaging _$MedicationKnowledgePackagingFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgePackaging.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgePackaging {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] A code that defines the specific type of packaging that the
  ///  medication can be found in (e.g. blister sleeve, tube, bottle).
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [quantity] The number of product units the package would contain if fully
  ///  loaded.
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgePackaging to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgePackaging
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgePackagingCopyWith<MedicationKnowledgePackaging>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgePackagingCopyWith<$Res> {
  factory $MedicationKnowledgePackagingCopyWith(
          MedicationKnowledgePackaging value,
          $Res Function(MedicationKnowledgePackaging) then) =
      _$MedicationKnowledgePackagingCopyWithImpl<$Res,
          MedicationKnowledgePackaging>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Quantity? quantity});
}

/// @nodoc
class _$MedicationKnowledgePackagingCopyWithImpl<$Res,
        $Val extends MedicationKnowledgePackaging>
    implements $MedicationKnowledgePackagingCopyWith<$Res> {
  _$MedicationKnowledgePackagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgePackaging
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgePackagingImplCopyWith<$Res>
    implements $MedicationKnowledgePackagingCopyWith<$Res> {
  factory _$$MedicationKnowledgePackagingImplCopyWith(
          _$MedicationKnowledgePackagingImpl value,
          $Res Function(_$MedicationKnowledgePackagingImpl) then) =
      __$$MedicationKnowledgePackagingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      Quantity? quantity});
}

/// @nodoc
class __$$MedicationKnowledgePackagingImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgePackagingCopyWithImpl<$Res,
        _$MedicationKnowledgePackagingImpl>
    implements _$$MedicationKnowledgePackagingImplCopyWith<$Res> {
  __$$MedicationKnowledgePackagingImplCopyWithImpl(
      _$MedicationKnowledgePackagingImpl _value,
      $Res Function(_$MedicationKnowledgePackagingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgePackaging
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$MedicationKnowledgePackagingImpl(
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgePackagingImpl extends _MedicationKnowledgePackaging {
  _$MedicationKnowledgePackagingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.quantity})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgePackagingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgePackagingImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] A code that defines the specific type of packaging that the
  ///  medication can be found in (e.g. blister sleeve, tube, bottle).
  @override
  final CodeableConcept? type;

  /// [quantity] The number of product units the package would contain if fully
  ///  loaded.
  @override
  final Quantity? quantity;

  @override
  String toString() {
    return 'MedicationKnowledgePackaging(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgePackagingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(quantity));

  /// Create a copy of MedicationKnowledgePackaging
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgePackagingImplCopyWith<
          _$MedicationKnowledgePackagingImpl>
      get copyWith => __$$MedicationKnowledgePackagingImplCopyWithImpl<
          _$MedicationKnowledgePackagingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgePackagingImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgePackaging
    extends MedicationKnowledgePackaging {
  factory _MedicationKnowledgePackaging(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? type,
      final Quantity? quantity}) = _$MedicationKnowledgePackagingImpl;
  _MedicationKnowledgePackaging._() : super._();

  factory _MedicationKnowledgePackaging.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgePackagingImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] A code that defines the specific type of packaging that the
  ///  medication can be found in (e.g. blister sleeve, tube, bottle).
  @override
  CodeableConcept? get type;

  /// [quantity] The number of product units the package would contain if fully
  ///  loaded.
  @override
  Quantity? get quantity;

  /// Create a copy of MedicationKnowledgePackaging
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgePackagingImplCopyWith<
          _$MedicationKnowledgePackagingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeDrugCharacteristic
    _$MedicationKnowledgeDrugCharacteristicFromJson(Map<String, dynamic> json) {
  return _MedicationKnowledgeDrugCharacteristic.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeDrugCharacteristic {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] A code specifying which characteristic of the medicine is being
  ///  described (for example, colour, shape, imprint).
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [valueCodeableConcept] Description of the characteristic.
  CodeableConcept? get valueCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [valueString] Description of the characteristic.
  String? get valueString => throw _privateConstructorUsedError;

  /// [valueStringElement] Extensions for valueString
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement =>
      throw _privateConstructorUsedError;

  /// [valueQuantity] Description of the characteristic.
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueBase64Binary] Description of the characteristic.
  FhirBase64Binary? get valueBase64Binary => throw _privateConstructorUsedError;

  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  @JsonKey(name: '_valueBase64Binary')
  PrimitiveElement? get valueBase64BinaryElement =>
      throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeDrugCharacteristic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeDrugCharacteristic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeDrugCharacteristicCopyWith<
          MedicationKnowledgeDrugCharacteristic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeDrugCharacteristicCopyWith<$Res> {
  factory $MedicationKnowledgeDrugCharacteristicCopyWith(
          MedicationKnowledgeDrugCharacteristic value,
          $Res Function(MedicationKnowledgeDrugCharacteristic) then) =
      _$MedicationKnowledgeDrugCharacteristicCopyWithImpl<$Res,
          MedicationKnowledgeDrugCharacteristic>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? valueCodeableConcept,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      Quantity? valueQuantity,
      FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      PrimitiveElement? valueBase64BinaryElement});
}

/// @nodoc
class _$MedicationKnowledgeDrugCharacteristicCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeDrugCharacteristic>
    implements $MedicationKnowledgeDrugCharacteristicCopyWith<$Res> {
  _$MedicationKnowledgeDrugCharacteristicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeDrugCharacteristic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? valueCodeableConcept = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueQuantity = freezed,
    Object? valueBase64Binary = freezed,
    Object? valueBase64BinaryElement = freezed,
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
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueBase64Binary: freezed == valueBase64Binary
          ? _value.valueBase64Binary
          : valueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      valueBase64BinaryElement: freezed == valueBase64BinaryElement
          ? _value.valueBase64BinaryElement
          : valueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeDrugCharacteristicImplCopyWith<$Res>
    implements $MedicationKnowledgeDrugCharacteristicCopyWith<$Res> {
  factory _$$MedicationKnowledgeDrugCharacteristicImplCopyWith(
          _$MedicationKnowledgeDrugCharacteristicImpl value,
          $Res Function(_$MedicationKnowledgeDrugCharacteristicImpl) then) =
      __$$MedicationKnowledgeDrugCharacteristicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? valueCodeableConcept,
      String? valueString,
      @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
      Quantity? valueQuantity,
      FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      PrimitiveElement? valueBase64BinaryElement});
}

/// @nodoc
class __$$MedicationKnowledgeDrugCharacteristicImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeDrugCharacteristicCopyWithImpl<$Res,
        _$MedicationKnowledgeDrugCharacteristicImpl>
    implements _$$MedicationKnowledgeDrugCharacteristicImplCopyWith<$Res> {
  __$$MedicationKnowledgeDrugCharacteristicImplCopyWithImpl(
      _$MedicationKnowledgeDrugCharacteristicImpl _value,
      $Res Function(_$MedicationKnowledgeDrugCharacteristicImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeDrugCharacteristic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? valueCodeableConcept = freezed,
    Object? valueString = freezed,
    Object? valueStringElement = freezed,
    Object? valueQuantity = freezed,
    Object? valueBase64Binary = freezed,
    Object? valueBase64BinaryElement = freezed,
  }) {
    return _then(_$MedicationKnowledgeDrugCharacteristicImpl(
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
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueString: freezed == valueString
          ? _value.valueString
          : valueString // ignore: cast_nullable_to_non_nullable
              as String?,
      valueStringElement: freezed == valueStringElement
          ? _value.valueStringElement
          : valueStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueBase64Binary: freezed == valueBase64Binary
          ? _value.valueBase64Binary
          : valueBase64Binary // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      valueBase64BinaryElement: freezed == valueBase64BinaryElement
          ? _value.valueBase64BinaryElement
          : valueBase64BinaryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeDrugCharacteristicImpl
    extends _MedicationKnowledgeDrugCharacteristic {
  _$MedicationKnowledgeDrugCharacteristicImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.valueCodeableConcept,
      this.valueString,
      @JsonKey(name: '_valueString') this.valueStringElement,
      this.valueQuantity,
      this.valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary') this.valueBase64BinaryElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgeDrugCharacteristicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeDrugCharacteristicImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] A code specifying which characteristic of the medicine is being
  ///  described (for example, colour, shape, imprint).
  @override
  final CodeableConcept? type;

  /// [valueCodeableConcept] Description of the characteristic.
  @override
  final CodeableConcept? valueCodeableConcept;

  /// [valueString] Description of the characteristic.
  @override
  final String? valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  final PrimitiveElement? valueStringElement;

  /// [valueQuantity] Description of the characteristic.
  @override
  final Quantity? valueQuantity;

  /// [valueBase64Binary] Description of the characteristic.
  @override
  final FhirBase64Binary? valueBase64Binary;

  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  @override
  @JsonKey(name: '_valueBase64Binary')
  final PrimitiveElement? valueBase64BinaryElement;

  @override
  String toString() {
    return 'MedicationKnowledgeDrugCharacteristic(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, valueCodeableConcept: $valueCodeableConcept, valueString: $valueString, valueStringElement: $valueStringElement, valueQuantity: $valueQuantity, valueBase64Binary: $valueBase64Binary, valueBase64BinaryElement: $valueBase64BinaryElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeDrugCharacteristicImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.valueCodeableConcept, valueCodeableConcept) &&
            (identical(other.valueString, valueString) ||
                other.valueString == valueString) &&
            (identical(other.valueStringElement, valueStringElement) ||
                other.valueStringElement == valueStringElement) &&
            const DeepCollectionEquality()
                .equals(other.valueQuantity, valueQuantity) &&
            (identical(other.valueBase64Binary, valueBase64Binary) ||
                other.valueBase64Binary == valueBase64Binary) &&
            (identical(
                    other.valueBase64BinaryElement, valueBase64BinaryElement) ||
                other.valueBase64BinaryElement == valueBase64BinaryElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(valueCodeableConcept),
      valueString,
      valueStringElement,
      const DeepCollectionEquality().hash(valueQuantity),
      valueBase64Binary,
      valueBase64BinaryElement);

  /// Create a copy of MedicationKnowledgeDrugCharacteristic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeDrugCharacteristicImplCopyWith<
          _$MedicationKnowledgeDrugCharacteristicImpl>
      get copyWith => __$$MedicationKnowledgeDrugCharacteristicImplCopyWithImpl<
          _$MedicationKnowledgeDrugCharacteristicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeDrugCharacteristicImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeDrugCharacteristic
    extends MedicationKnowledgeDrugCharacteristic {
  factory _MedicationKnowledgeDrugCharacteristic(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? type,
      final CodeableConcept? valueCodeableConcept,
      final String? valueString,
      @JsonKey(name: '_valueString') final PrimitiveElement? valueStringElement,
      final Quantity? valueQuantity,
      final FhirBase64Binary? valueBase64Binary,
      @JsonKey(name: '_valueBase64Binary')
      final PrimitiveElement?
          valueBase64BinaryElement}) = _$MedicationKnowledgeDrugCharacteristicImpl;
  _MedicationKnowledgeDrugCharacteristic._() : super._();

  factory _MedicationKnowledgeDrugCharacteristic.fromJson(
          Map<String, dynamic> json) =
      _$MedicationKnowledgeDrugCharacteristicImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] A code specifying which characteristic of the medicine is being
  ///  described (for example, colour, shape, imprint).
  @override
  CodeableConcept? get type;

  /// [valueCodeableConcept] Description of the characteristic.
  @override
  CodeableConcept? get valueCodeableConcept;

  /// [valueString] Description of the characteristic.
  @override
  String? get valueString;

  /// [valueStringElement] Extensions for valueString
  @override
  @JsonKey(name: '_valueString')
  PrimitiveElement? get valueStringElement;

  /// [valueQuantity] Description of the characteristic.
  @override
  Quantity? get valueQuantity;

  /// [valueBase64Binary] Description of the characteristic.
  @override
  FhirBase64Binary? get valueBase64Binary;

  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  @override
  @JsonKey(name: '_valueBase64Binary')
  PrimitiveElement? get valueBase64BinaryElement;

  /// Create a copy of MedicationKnowledgeDrugCharacteristic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeDrugCharacteristicImplCopyWith<
          _$MedicationKnowledgeDrugCharacteristicImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeRegulatory _$MedicationKnowledgeRegulatoryFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeRegulatory.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeRegulatory {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [regulatoryAuthority] The authority that is specifying the regulations.
  Reference get regulatoryAuthority => throw _privateConstructorUsedError;

  /// [substitution] Specifies if changes are allowed when dispensing a
  ///  medication from a regulatory perspective.
  List<MedicationKnowledgeSubstitution>? get substitution =>
      throw _privateConstructorUsedError;

  /// [schedule] Specifies the schedule of a medication in jurisdiction.
  List<MedicationKnowledgeSchedule>? get schedule =>
      throw _privateConstructorUsedError;

  /// [maxDispense] The maximum number of units of the medication that can be
  ///  dispensed in a period.
  MedicationKnowledgeMaxDispense? get maxDispense =>
      throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeRegulatory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeRegulatory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeRegulatoryCopyWith<MedicationKnowledgeRegulatory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeRegulatoryCopyWith<$Res> {
  factory $MedicationKnowledgeRegulatoryCopyWith(
          MedicationKnowledgeRegulatory value,
          $Res Function(MedicationKnowledgeRegulatory) then) =
      _$MedicationKnowledgeRegulatoryCopyWithImpl<$Res,
          MedicationKnowledgeRegulatory>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference regulatoryAuthority,
      List<MedicationKnowledgeSubstitution>? substitution,
      List<MedicationKnowledgeSchedule>? schedule,
      MedicationKnowledgeMaxDispense? maxDispense});

  $MedicationKnowledgeMaxDispenseCopyWith<$Res>? get maxDispense;
}

/// @nodoc
class _$MedicationKnowledgeRegulatoryCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeRegulatory>
    implements $MedicationKnowledgeRegulatoryCopyWith<$Res> {
  _$MedicationKnowledgeRegulatoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeRegulatory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? regulatoryAuthority = freezed,
    Object? substitution = freezed,
    Object? schedule = freezed,
    Object? maxDispense = freezed,
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
      regulatoryAuthority: freezed == regulatoryAuthority
          ? _value.regulatoryAuthority
          : regulatoryAuthority // ignore: cast_nullable_to_non_nullable
              as Reference,
      substitution: freezed == substitution
          ? _value.substitution
          : substitution // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeSubstitution>?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeSchedule>?,
      maxDispense: freezed == maxDispense
          ? _value.maxDispense
          : maxDispense // ignore: cast_nullable_to_non_nullable
              as MedicationKnowledgeMaxDispense?,
    ) as $Val);
  }

  /// Create a copy of MedicationKnowledgeRegulatory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationKnowledgeMaxDispenseCopyWith<$Res>? get maxDispense {
    if (_value.maxDispense == null) {
      return null;
    }

    return $MedicationKnowledgeMaxDispenseCopyWith<$Res>(_value.maxDispense!,
        (value) {
      return _then(_value.copyWith(maxDispense: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeRegulatoryImplCopyWith<$Res>
    implements $MedicationKnowledgeRegulatoryCopyWith<$Res> {
  factory _$$MedicationKnowledgeRegulatoryImplCopyWith(
          _$MedicationKnowledgeRegulatoryImpl value,
          $Res Function(_$MedicationKnowledgeRegulatoryImpl) then) =
      __$$MedicationKnowledgeRegulatoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference regulatoryAuthority,
      List<MedicationKnowledgeSubstitution>? substitution,
      List<MedicationKnowledgeSchedule>? schedule,
      MedicationKnowledgeMaxDispense? maxDispense});

  @override
  $MedicationKnowledgeMaxDispenseCopyWith<$Res>? get maxDispense;
}

/// @nodoc
class __$$MedicationKnowledgeRegulatoryImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeRegulatoryCopyWithImpl<$Res,
        _$MedicationKnowledgeRegulatoryImpl>
    implements _$$MedicationKnowledgeRegulatoryImplCopyWith<$Res> {
  __$$MedicationKnowledgeRegulatoryImplCopyWithImpl(
      _$MedicationKnowledgeRegulatoryImpl _value,
      $Res Function(_$MedicationKnowledgeRegulatoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeRegulatory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? regulatoryAuthority = freezed,
    Object? substitution = freezed,
    Object? schedule = freezed,
    Object? maxDispense = freezed,
  }) {
    return _then(_$MedicationKnowledgeRegulatoryImpl(
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
      regulatoryAuthority: freezed == regulatoryAuthority
          ? _value.regulatoryAuthority
          : regulatoryAuthority // ignore: cast_nullable_to_non_nullable
              as Reference,
      substitution: freezed == substitution
          ? _value._substitution
          : substitution // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeSubstitution>?,
      schedule: freezed == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<MedicationKnowledgeSchedule>?,
      maxDispense: freezed == maxDispense
          ? _value.maxDispense
          : maxDispense // ignore: cast_nullable_to_non_nullable
              as MedicationKnowledgeMaxDispense?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeRegulatoryImpl
    extends _MedicationKnowledgeRegulatory {
  _$MedicationKnowledgeRegulatoryImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.regulatoryAuthority,
      final List<MedicationKnowledgeSubstitution>? substitution,
      final List<MedicationKnowledgeSchedule>? schedule,
      this.maxDispense})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _substitution = substitution,
        _schedule = schedule,
        super._();

  factory _$MedicationKnowledgeRegulatoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeRegulatoryImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [regulatoryAuthority] The authority that is specifying the regulations.
  @override
  final Reference regulatoryAuthority;

  /// [substitution] Specifies if changes are allowed when dispensing a
  ///  medication from a regulatory perspective.
  final List<MedicationKnowledgeSubstitution>? _substitution;

  /// [substitution] Specifies if changes are allowed when dispensing a
  ///  medication from a regulatory perspective.
  @override
  List<MedicationKnowledgeSubstitution>? get substitution {
    final value = _substitution;
    if (value == null) return null;
    if (_substitution is EqualUnmodifiableListView) return _substitution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [schedule] Specifies the schedule of a medication in jurisdiction.
  final List<MedicationKnowledgeSchedule>? _schedule;

  /// [schedule] Specifies the schedule of a medication in jurisdiction.
  @override
  List<MedicationKnowledgeSchedule>? get schedule {
    final value = _schedule;
    if (value == null) return null;
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [maxDispense] The maximum number of units of the medication that can be
  ///  dispensed in a period.
  @override
  final MedicationKnowledgeMaxDispense? maxDispense;

  @override
  String toString() {
    return 'MedicationKnowledgeRegulatory(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, regulatoryAuthority: $regulatoryAuthority, substitution: $substitution, schedule: $schedule, maxDispense: $maxDispense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeRegulatoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other.regulatoryAuthority, regulatoryAuthority) &&
            const DeepCollectionEquality()
                .equals(other._substitution, _substitution) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            (identical(other.maxDispense, maxDispense) ||
                other.maxDispense == maxDispense));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(regulatoryAuthority),
      const DeepCollectionEquality().hash(_substitution),
      const DeepCollectionEquality().hash(_schedule),
      maxDispense);

  /// Create a copy of MedicationKnowledgeRegulatory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeRegulatoryImplCopyWith<
          _$MedicationKnowledgeRegulatoryImpl>
      get copyWith => __$$MedicationKnowledgeRegulatoryImplCopyWithImpl<
          _$MedicationKnowledgeRegulatoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeRegulatoryImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeRegulatory
    extends MedicationKnowledgeRegulatory {
  factory _MedicationKnowledgeRegulatory(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final Reference regulatoryAuthority,
          final List<MedicationKnowledgeSubstitution>? substitution,
          final List<MedicationKnowledgeSchedule>? schedule,
          final MedicationKnowledgeMaxDispense? maxDispense}) =
      _$MedicationKnowledgeRegulatoryImpl;
  _MedicationKnowledgeRegulatory._() : super._();

  factory _MedicationKnowledgeRegulatory.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeRegulatoryImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [regulatoryAuthority] The authority that is specifying the regulations.
  @override
  Reference get regulatoryAuthority;

  /// [substitution] Specifies if changes are allowed when dispensing a
  ///  medication from a regulatory perspective.
  @override
  List<MedicationKnowledgeSubstitution>? get substitution;

  /// [schedule] Specifies the schedule of a medication in jurisdiction.
  @override
  List<MedicationKnowledgeSchedule>? get schedule;

  /// [maxDispense] The maximum number of units of the medication that can be
  ///  dispensed in a period.
  @override
  MedicationKnowledgeMaxDispense? get maxDispense;

  /// Create a copy of MedicationKnowledgeRegulatory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeRegulatoryImplCopyWith<
          _$MedicationKnowledgeRegulatoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeSubstitution _$MedicationKnowledgeSubstitutionFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeSubstitution.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeSubstitution {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Specifies the type of substitution allowed.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [allowed] Specifies if regulation allows for changes in the medication
  ///  when dispensing.
  FhirBoolean? get allowed => throw _privateConstructorUsedError;

  /// [allowedElement] Extensions for allowed
  @JsonKey(name: '_allowed')
  PrimitiveElement? get allowedElement => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeSubstitution to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeSubstitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeSubstitutionCopyWith<MedicationKnowledgeSubstitution>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeSubstitutionCopyWith<$Res> {
  factory $MedicationKnowledgeSubstitutionCopyWith(
          MedicationKnowledgeSubstitution value,
          $Res Function(MedicationKnowledgeSubstitution) then) =
      _$MedicationKnowledgeSubstitutionCopyWithImpl<$Res,
          MedicationKnowledgeSubstitution>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirBoolean? allowed,
      @JsonKey(name: '_allowed') PrimitiveElement? allowedElement});
}

/// @nodoc
class _$MedicationKnowledgeSubstitutionCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeSubstitution>
    implements $MedicationKnowledgeSubstitutionCopyWith<$Res> {
  _$MedicationKnowledgeSubstitutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeSubstitution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? allowed = freezed,
    Object? allowedElement = freezed,
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
              as CodeableConcept,
      allowed: freezed == allowed
          ? _value.allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      allowedElement: freezed == allowedElement
          ? _value.allowedElement
          : allowedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeSubstitutionImplCopyWith<$Res>
    implements $MedicationKnowledgeSubstitutionCopyWith<$Res> {
  factory _$$MedicationKnowledgeSubstitutionImplCopyWith(
          _$MedicationKnowledgeSubstitutionImpl value,
          $Res Function(_$MedicationKnowledgeSubstitutionImpl) then) =
      __$$MedicationKnowledgeSubstitutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirBoolean? allowed,
      @JsonKey(name: '_allowed') PrimitiveElement? allowedElement});
}

/// @nodoc
class __$$MedicationKnowledgeSubstitutionImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeSubstitutionCopyWithImpl<$Res,
        _$MedicationKnowledgeSubstitutionImpl>
    implements _$$MedicationKnowledgeSubstitutionImplCopyWith<$Res> {
  __$$MedicationKnowledgeSubstitutionImplCopyWithImpl(
      _$MedicationKnowledgeSubstitutionImpl _value,
      $Res Function(_$MedicationKnowledgeSubstitutionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeSubstitution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? allowed = freezed,
    Object? allowedElement = freezed,
  }) {
    return _then(_$MedicationKnowledgeSubstitutionImpl(
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
              as CodeableConcept,
      allowed: freezed == allowed
          ? _value.allowed
          : allowed // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      allowedElement: freezed == allowedElement
          ? _value.allowedElement
          : allowedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeSubstitutionImpl
    extends _MedicationKnowledgeSubstitution {
  _$MedicationKnowledgeSubstitutionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.allowed,
      @JsonKey(name: '_allowed') this.allowedElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgeSubstitutionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeSubstitutionImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Specifies the type of substitution allowed.
  @override
  final CodeableConcept type;

  /// [allowed] Specifies if regulation allows for changes in the medication
  ///  when dispensing.
  @override
  final FhirBoolean? allowed;

  /// [allowedElement] Extensions for allowed
  @override
  @JsonKey(name: '_allowed')
  final PrimitiveElement? allowedElement;

  @override
  String toString() {
    return 'MedicationKnowledgeSubstitution(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, allowed: $allowed, allowedElement: $allowedElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeSubstitutionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.allowed, allowed) || other.allowed == allowed) &&
            (identical(other.allowedElement, allowedElement) ||
                other.allowedElement == allowedElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(type),
      allowed,
      allowedElement);

  /// Create a copy of MedicationKnowledgeSubstitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeSubstitutionImplCopyWith<
          _$MedicationKnowledgeSubstitutionImpl>
      get copyWith => __$$MedicationKnowledgeSubstitutionImplCopyWithImpl<
          _$MedicationKnowledgeSubstitutionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeSubstitutionImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeSubstitution
    extends MedicationKnowledgeSubstitution {
  factory _MedicationKnowledgeSubstitution(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          final FhirBoolean? allowed,
          @JsonKey(name: '_allowed') final PrimitiveElement? allowedElement}) =
      _$MedicationKnowledgeSubstitutionImpl;
  _MedicationKnowledgeSubstitution._() : super._();

  factory _MedicationKnowledgeSubstitution.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeSubstitutionImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] Specifies the type of substitution allowed.
  @override
  CodeableConcept get type;

  /// [allowed] Specifies if regulation allows for changes in the medication
  ///  when dispensing.
  @override
  FhirBoolean? get allowed;

  /// [allowedElement] Extensions for allowed
  @override
  @JsonKey(name: '_allowed')
  PrimitiveElement? get allowedElement;

  /// Create a copy of MedicationKnowledgeSubstitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeSubstitutionImplCopyWith<
          _$MedicationKnowledgeSubstitutionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeSchedule _$MedicationKnowledgeScheduleFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeSchedule.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeSchedule {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [schedule] Specifies the specific drug schedule.
  CodeableConcept get schedule => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeScheduleCopyWith<MedicationKnowledgeSchedule>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeScheduleCopyWith<$Res> {
  factory $MedicationKnowledgeScheduleCopyWith(
          MedicationKnowledgeSchedule value,
          $Res Function(MedicationKnowledgeSchedule) then) =
      _$MedicationKnowledgeScheduleCopyWithImpl<$Res,
          MedicationKnowledgeSchedule>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept schedule});
}

/// @nodoc
class _$MedicationKnowledgeScheduleCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeSchedule>
    implements $MedicationKnowledgeScheduleCopyWith<$Res> {
  _$MedicationKnowledgeScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? schedule = freezed,
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
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeScheduleImplCopyWith<$Res>
    implements $MedicationKnowledgeScheduleCopyWith<$Res> {
  factory _$$MedicationKnowledgeScheduleImplCopyWith(
          _$MedicationKnowledgeScheduleImpl value,
          $Res Function(_$MedicationKnowledgeScheduleImpl) then) =
      __$$MedicationKnowledgeScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept schedule});
}

/// @nodoc
class __$$MedicationKnowledgeScheduleImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeScheduleCopyWithImpl<$Res,
        _$MedicationKnowledgeScheduleImpl>
    implements _$$MedicationKnowledgeScheduleImplCopyWith<$Res> {
  __$$MedicationKnowledgeScheduleImplCopyWithImpl(
      _$MedicationKnowledgeScheduleImpl _value,
      $Res Function(_$MedicationKnowledgeScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_$MedicationKnowledgeScheduleImpl(
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
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeScheduleImpl extends _MedicationKnowledgeSchedule {
  _$MedicationKnowledgeScheduleImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.schedule})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgeScheduleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeScheduleImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [schedule] Specifies the specific drug schedule.
  @override
  final CodeableConcept schedule;

  @override
  String toString() {
    return 'MedicationKnowledgeSchedule(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.schedule, schedule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(schedule));

  /// Create a copy of MedicationKnowledgeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeScheduleImplCopyWith<_$MedicationKnowledgeScheduleImpl>
      get copyWith => __$$MedicationKnowledgeScheduleImplCopyWithImpl<
          _$MedicationKnowledgeScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeScheduleImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeSchedule
    extends MedicationKnowledgeSchedule {
  factory _MedicationKnowledgeSchedule(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept schedule}) =
      _$MedicationKnowledgeScheduleImpl;
  _MedicationKnowledgeSchedule._() : super._();

  factory _MedicationKnowledgeSchedule.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeScheduleImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [schedule] Specifies the specific drug schedule.
  @override
  CodeableConcept get schedule;

  /// Create a copy of MedicationKnowledgeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeScheduleImplCopyWith<_$MedicationKnowledgeScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeMaxDispense _$MedicationKnowledgeMaxDispenseFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeMaxDispense.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeMaxDispense {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [quantity] The maximum number of units of the medication that can be
  ///  dispensed.
  Quantity get quantity => throw _privateConstructorUsedError;

  /// [period] The period that applies to the maximum number of units.
  FhirDuration? get period => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeMaxDispense to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeMaxDispense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeMaxDispenseCopyWith<MedicationKnowledgeMaxDispense>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeMaxDispenseCopyWith<$Res> {
  factory $MedicationKnowledgeMaxDispenseCopyWith(
          MedicationKnowledgeMaxDispense value,
          $Res Function(MedicationKnowledgeMaxDispense) then) =
      _$MedicationKnowledgeMaxDispenseCopyWithImpl<$Res,
          MedicationKnowledgeMaxDispense>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Quantity quantity,
      FhirDuration? period});
}

/// @nodoc
class _$MedicationKnowledgeMaxDispenseCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeMaxDispense>
    implements $MedicationKnowledgeMaxDispenseCopyWith<$Res> {
  _$MedicationKnowledgeMaxDispenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeMaxDispense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? quantity = freezed,
    Object? period = freezed,
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeMaxDispenseImplCopyWith<$Res>
    implements $MedicationKnowledgeMaxDispenseCopyWith<$Res> {
  factory _$$MedicationKnowledgeMaxDispenseImplCopyWith(
          _$MedicationKnowledgeMaxDispenseImpl value,
          $Res Function(_$MedicationKnowledgeMaxDispenseImpl) then) =
      __$$MedicationKnowledgeMaxDispenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Quantity quantity,
      FhirDuration? period});
}

/// @nodoc
class __$$MedicationKnowledgeMaxDispenseImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeMaxDispenseCopyWithImpl<$Res,
        _$MedicationKnowledgeMaxDispenseImpl>
    implements _$$MedicationKnowledgeMaxDispenseImplCopyWith<$Res> {
  __$$MedicationKnowledgeMaxDispenseImplCopyWithImpl(
      _$MedicationKnowledgeMaxDispenseImpl _value,
      $Res Function(_$MedicationKnowledgeMaxDispenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeMaxDispense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? quantity = freezed,
    Object? period = freezed,
  }) {
    return _then(_$MedicationKnowledgeMaxDispenseImpl(
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeMaxDispenseImpl
    extends _MedicationKnowledgeMaxDispense {
  _$MedicationKnowledgeMaxDispenseImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.quantity,
      this.period})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MedicationKnowledgeMaxDispenseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeMaxDispenseImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [quantity] The maximum number of units of the medication that can be
  ///  dispensed.
  @override
  final Quantity quantity;

  /// [period] The period that applies to the maximum number of units.
  @override
  final FhirDuration? period;

  @override
  String toString() {
    return 'MedicationKnowledgeMaxDispense(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, quantity: $quantity, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeMaxDispenseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.period, period));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(period));

  /// Create a copy of MedicationKnowledgeMaxDispense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeMaxDispenseImplCopyWith<
          _$MedicationKnowledgeMaxDispenseImpl>
      get copyWith => __$$MedicationKnowledgeMaxDispenseImplCopyWithImpl<
          _$MedicationKnowledgeMaxDispenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeMaxDispenseImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeMaxDispense
    extends MedicationKnowledgeMaxDispense {
  factory _MedicationKnowledgeMaxDispense(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final Quantity quantity,
      final FhirDuration? period}) = _$MedicationKnowledgeMaxDispenseImpl;
  _MedicationKnowledgeMaxDispense._() : super._();

  factory _MedicationKnowledgeMaxDispense.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeMaxDispenseImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [quantity] The maximum number of units of the medication that can be
  ///  dispensed.
  @override
  Quantity get quantity;

  /// [period] The period that applies to the maximum number of units.
  @override
  FhirDuration? get period;

  /// Create a copy of MedicationKnowledgeMaxDispense
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeMaxDispenseImplCopyWith<
          _$MedicationKnowledgeMaxDispenseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MedicationKnowledgeKinetics _$MedicationKnowledgeKineticsFromJson(
    Map<String, dynamic> json) {
  return _MedicationKnowledgeKinetics.fromJson(json);
}

/// @nodoc
mixin _$MedicationKnowledgeKinetics {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [areaUnderCurve] The drug concentration measured at certain discrete
  ///  points in time.
  List<Quantity>? get areaUnderCurve => throw _privateConstructorUsedError;

  /// [lethalDose50] The median lethal dose of a drug.
  List<Quantity>? get lethalDose50 => throw _privateConstructorUsedError;

  /// [halfLifePeriod] The time required for any specified property (e.g., the
  ///  concentration of a substance in the body) to decrease by half.
  FhirDuration? get halfLifePeriod => throw _privateConstructorUsedError;

  /// Serializes this MedicationKnowledgeKinetics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicationKnowledgeKinetics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicationKnowledgeKineticsCopyWith<MedicationKnowledgeKinetics>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationKnowledgeKineticsCopyWith<$Res> {
  factory $MedicationKnowledgeKineticsCopyWith(
          MedicationKnowledgeKinetics value,
          $Res Function(MedicationKnowledgeKinetics) then) =
      _$MedicationKnowledgeKineticsCopyWithImpl<$Res,
          MedicationKnowledgeKinetics>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Quantity>? areaUnderCurve,
      List<Quantity>? lethalDose50,
      FhirDuration? halfLifePeriod});
}

/// @nodoc
class _$MedicationKnowledgeKineticsCopyWithImpl<$Res,
        $Val extends MedicationKnowledgeKinetics>
    implements $MedicationKnowledgeKineticsCopyWith<$Res> {
  _$MedicationKnowledgeKineticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicationKnowledgeKinetics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? areaUnderCurve = freezed,
    Object? lethalDose50 = freezed,
    Object? halfLifePeriod = freezed,
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
      areaUnderCurve: freezed == areaUnderCurve
          ? _value.areaUnderCurve
          : areaUnderCurve // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      lethalDose50: freezed == lethalDose50
          ? _value.lethalDose50
          : lethalDose50 // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      halfLifePeriod: freezed == halfLifePeriod
          ? _value.halfLifePeriod
          : halfLifePeriod // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicationKnowledgeKineticsImplCopyWith<$Res>
    implements $MedicationKnowledgeKineticsCopyWith<$Res> {
  factory _$$MedicationKnowledgeKineticsImplCopyWith(
          _$MedicationKnowledgeKineticsImpl value,
          $Res Function(_$MedicationKnowledgeKineticsImpl) then) =
      __$$MedicationKnowledgeKineticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Quantity>? areaUnderCurve,
      List<Quantity>? lethalDose50,
      FhirDuration? halfLifePeriod});
}

/// @nodoc
class __$$MedicationKnowledgeKineticsImplCopyWithImpl<$Res>
    extends _$MedicationKnowledgeKineticsCopyWithImpl<$Res,
        _$MedicationKnowledgeKineticsImpl>
    implements _$$MedicationKnowledgeKineticsImplCopyWith<$Res> {
  __$$MedicationKnowledgeKineticsImplCopyWithImpl(
      _$MedicationKnowledgeKineticsImpl _value,
      $Res Function(_$MedicationKnowledgeKineticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicationKnowledgeKinetics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? areaUnderCurve = freezed,
    Object? lethalDose50 = freezed,
    Object? halfLifePeriod = freezed,
  }) {
    return _then(_$MedicationKnowledgeKineticsImpl(
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
      areaUnderCurve: freezed == areaUnderCurve
          ? _value._areaUnderCurve
          : areaUnderCurve // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      lethalDose50: freezed == lethalDose50
          ? _value._lethalDose50
          : lethalDose50 // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      halfLifePeriod: freezed == halfLifePeriod
          ? _value.halfLifePeriod
          : halfLifePeriod // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicationKnowledgeKineticsImpl extends _MedicationKnowledgeKinetics {
  _$MedicationKnowledgeKineticsImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Quantity>? areaUnderCurve,
      final List<Quantity>? lethalDose50,
      this.halfLifePeriod})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _areaUnderCurve = areaUnderCurve,
        _lethalDose50 = lethalDose50,
        super._();

  factory _$MedicationKnowledgeKineticsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicationKnowledgeKineticsImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [areaUnderCurve] The drug concentration measured at certain discrete
  ///  points in time.
  final List<Quantity>? _areaUnderCurve;

  /// [areaUnderCurve] The drug concentration measured at certain discrete
  ///  points in time.
  @override
  List<Quantity>? get areaUnderCurve {
    final value = _areaUnderCurve;
    if (value == null) return null;
    if (_areaUnderCurve is EqualUnmodifiableListView) return _areaUnderCurve;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [lethalDose50] The median lethal dose of a drug.
  final List<Quantity>? _lethalDose50;

  /// [lethalDose50] The median lethal dose of a drug.
  @override
  List<Quantity>? get lethalDose50 {
    final value = _lethalDose50;
    if (value == null) return null;
    if (_lethalDose50 is EqualUnmodifiableListView) return _lethalDose50;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [halfLifePeriod] The time required for any specified property (e.g., the
  ///  concentration of a substance in the body) to decrease by half.
  @override
  final FhirDuration? halfLifePeriod;

  @override
  String toString() {
    return 'MedicationKnowledgeKinetics(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, areaUnderCurve: $areaUnderCurve, lethalDose50: $lethalDose50, halfLifePeriod: $halfLifePeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicationKnowledgeKineticsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._areaUnderCurve, _areaUnderCurve) &&
            const DeepCollectionEquality()
                .equals(other._lethalDose50, _lethalDose50) &&
            const DeepCollectionEquality()
                .equals(other.halfLifePeriod, halfLifePeriod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_areaUnderCurve),
      const DeepCollectionEquality().hash(_lethalDose50),
      const DeepCollectionEquality().hash(halfLifePeriod));

  /// Create a copy of MedicationKnowledgeKinetics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicationKnowledgeKineticsImplCopyWith<_$MedicationKnowledgeKineticsImpl>
      get copyWith => __$$MedicationKnowledgeKineticsImplCopyWithImpl<
          _$MedicationKnowledgeKineticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicationKnowledgeKineticsImplToJson(
      this,
    );
  }
}

abstract class _MedicationKnowledgeKinetics
    extends MedicationKnowledgeKinetics {
  factory _MedicationKnowledgeKinetics(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Quantity>? areaUnderCurve,
      final List<Quantity>? lethalDose50,
      final FhirDuration? halfLifePeriod}) = _$MedicationKnowledgeKineticsImpl;
  _MedicationKnowledgeKinetics._() : super._();

  factory _MedicationKnowledgeKinetics.fromJson(Map<String, dynamic> json) =
      _$MedicationKnowledgeKineticsImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension;

  /// [areaUnderCurve] The drug concentration measured at certain discrete
  ///  points in time.
  @override
  List<Quantity>? get areaUnderCurve;

  /// [lethalDose50] The median lethal dose of a drug.
  @override
  List<Quantity>? get lethalDose50;

  /// [halfLifePeriod] The time required for any specified property (e.g., the
  ///  concentration of a substance in the body) to decrease by half.
  @override
  FhirDuration? get halfLifePeriod;

  /// Create a copy of MedicationKnowledgeKinetics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicationKnowledgeKineticsImplCopyWith<_$MedicationKnowledgeKineticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
