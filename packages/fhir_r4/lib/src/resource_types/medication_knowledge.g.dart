// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'medication_knowledge.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MedicationKnowledgeCopyWith<T>
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
    CodeableConcept? code,
    MedicationKnowledgeStatusCodes? status,
    Reference? manufacturer,
    CodeableConcept? doseForm,
    Quantity? amount,
    List<FhirString>? synonym,
    List<MedicationKnowledgeRelatedMedicationKnowledge>?
        relatedMedicationKnowledge,
    List<Reference>? associatedMedication,
    List<CodeableConcept>? productType,
    List<MedicationKnowledgeMonograph>? monograph,
    List<MedicationKnowledgeIngredient>? ingredient,
    FhirMarkdown? preparationInstruction,
    List<CodeableConcept>? intendedRoute,
    List<MedicationKnowledgeCost>? cost,
    List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,
    List<MedicationKnowledgeAdministrationGuidelines>? administrationGuidelines,
    List<MedicationKnowledgeMedicineClassification>? medicineClassification,
    MedicationKnowledgePackaging? packaging,
    List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
    List<Reference>? contraindication,
    List<MedicationKnowledgeRegulatory>? regulatory,
    List<MedicationKnowledgeKinetics>? kinetics,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeCopyWithImpl<T>
    implements $MedicationKnowledgeCopyWith<T> {
  final MedicationKnowledge _value;
  final T Function(MedicationKnowledge) _then;

  _$MedicationKnowledgeCopyWithImpl(this._value, this._then);

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
    Object? code = fhirSentinel,
    Object? status = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? doseForm = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? synonym = fhirSentinel,
    Object? relatedMedicationKnowledge = fhirSentinel,
    Object? associatedMedication = fhirSentinel,
    Object? productType = fhirSentinel,
    Object? monograph = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? preparationInstruction = fhirSentinel,
    Object? intendedRoute = fhirSentinel,
    Object? cost = fhirSentinel,
    Object? monitoringProgram = fhirSentinel,
    Object? administrationGuidelines = fhirSentinel,
    Object? medicineClassification = fhirSentinel,
    Object? packaging = fhirSentinel,
    Object? drugCharacteristic = fhirSentinel,
    Object? contraindication = fhirSentinel,
    Object? regulatory = fhirSentinel,
    Object? kinetics = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledge(
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
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as MedicationKnowledgeStatusCodes?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as Reference?,
        doseForm: identical(doseForm, fhirSentinel)
            ? _value.doseForm
            : doseForm as CodeableConcept?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as Quantity?,
        synonym: identical(synonym, fhirSentinel)
            ? _value.synonym
            : synonym as List<FhirString>?,
        relatedMedicationKnowledge:
            identical(relatedMedicationKnowledge, fhirSentinel)
                ? _value.relatedMedicationKnowledge
                : relatedMedicationKnowledge
                    as List<MedicationKnowledgeRelatedMedicationKnowledge>?,
        associatedMedication: identical(associatedMedication, fhirSentinel)
            ? _value.associatedMedication
            : associatedMedication as List<Reference>?,
        productType: identical(productType, fhirSentinel)
            ? _value.productType
            : productType as List<CodeableConcept>?,
        monograph: identical(monograph, fhirSentinel)
            ? _value.monograph
            : monograph as List<MedicationKnowledgeMonograph>?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<MedicationKnowledgeIngredient>?,
        preparationInstruction: identical(preparationInstruction, fhirSentinel)
            ? _value.preparationInstruction
            : preparationInstruction as FhirMarkdown?,
        intendedRoute: identical(intendedRoute, fhirSentinel)
            ? _value.intendedRoute
            : intendedRoute as List<CodeableConcept>?,
        cost: identical(cost, fhirSentinel)
            ? _value.cost
            : cost as List<MedicationKnowledgeCost>?,
        monitoringProgram: identical(monitoringProgram, fhirSentinel)
            ? _value.monitoringProgram
            : monitoringProgram as List<MedicationKnowledgeMonitoringProgram>?,
        administrationGuidelines:
            identical(administrationGuidelines, fhirSentinel)
                ? _value.administrationGuidelines
                : administrationGuidelines
                    as List<MedicationKnowledgeAdministrationGuidelines>?,
        medicineClassification: identical(medicineClassification, fhirSentinel)
            ? _value.medicineClassification
            : medicineClassification
                as List<MedicationKnowledgeMedicineClassification>?,
        packaging: identical(packaging, fhirSentinel)
            ? _value.packaging
            : packaging as MedicationKnowledgePackaging?,
        drugCharacteristic: identical(drugCharacteristic, fhirSentinel)
            ? _value.drugCharacteristic
            : drugCharacteristic
                as List<MedicationKnowledgeDrugCharacteristic>?,
        contraindication: identical(contraindication, fhirSentinel)
            ? _value.contraindication
            : contraindication as List<Reference>?,
        regulatory: identical(regulatory, fhirSentinel)
            ? _value.regulatory
            : regulatory as List<MedicationKnowledgeRegulatory>?,
        kinetics: identical(kinetics, fhirSentinel)
            ? _value.kinetics
            : kinetics as List<MedicationKnowledgeKinetics>?,
      ),
    );
  }
}

extension MedicationKnowledgeCopyWithExtension on MedicationKnowledge {
  $MedicationKnowledgeCopyWith<MedicationKnowledge> get copyWith =>
      _$MedicationKnowledgeCopyWithImpl<MedicationKnowledge>(
        this,
        (value) => value,
      );
}

abstract class $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? reference,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl<T>
    implements $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<T> {
  final MedicationKnowledgeRelatedMedicationKnowledge _value;
  final T Function(MedicationKnowledgeRelatedMedicationKnowledge) _then;

  _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeRelatedMedicationKnowledge(
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
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as List<Reference>?) ?? _value.reference,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeRelatedMedicationKnowledgeCopyWithExtension
    on MedicationKnowledgeRelatedMedicationKnowledge {
  $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<
          MedicationKnowledgeRelatedMedicationKnowledge>
      get copyWith =>
          _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl<
              MedicationKnowledgeRelatedMedicationKnowledge>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeMonographCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? source,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeMonographCopyWithImpl<T>
    implements $MedicationKnowledgeMonographCopyWith<T> {
  final MedicationKnowledgeMonograph _value;
  final T Function(MedicationKnowledgeMonograph) _then;

  _$MedicationKnowledgeMonographCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeMonograph(
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
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeMonographCopyWithExtension
    on MedicationKnowledgeMonograph {
  $MedicationKnowledgeMonographCopyWith<MedicationKnowledgeMonograph>
      get copyWith => _$MedicationKnowledgeMonographCopyWithImpl<
              MedicationKnowledgeMonograph>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeIngredientCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemX,
    FhirBoolean? isActive,
    Ratio? strength,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeIngredientCopyWithImpl<T>
    implements $MedicationKnowledgeIngredientCopyWith<T> {
  final MedicationKnowledgeIngredient _value;
  final T Function(MedicationKnowledgeIngredient) _then;

  _$MedicationKnowledgeIngredientCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? itemX = fhirSentinel,
    Object? isActive = fhirSentinel,
    Object? strength = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeIngredient(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        itemX: identical(itemX, fhirSentinel)
            ? _value.itemX
            : (itemX as CodeableConcept?) ?? _value.itemX,
        isActive: identical(isActive, fhirSentinel)
            ? _value.isActive
            : isActive as FhirBoolean?,
        strength: identical(strength, fhirSentinel)
            ? _value.strength
            : strength as Ratio?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeIngredientCopyWithExtension
    on MedicationKnowledgeIngredient {
  $MedicationKnowledgeIngredientCopyWith<MedicationKnowledgeIngredient>
      get copyWith => _$MedicationKnowledgeIngredientCopyWithImpl<
              MedicationKnowledgeIngredient>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeCostCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? source,
    Money? cost,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeCostCopyWithImpl<T>
    implements $MedicationKnowledgeCostCopyWith<T> {
  final MedicationKnowledgeCost _value;
  final T Function(MedicationKnowledgeCost) _then;

  _$MedicationKnowledgeCostCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? source = fhirSentinel,
    Object? cost = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeCost(
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
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as FhirString?,
        cost: identical(cost, fhirSentinel)
            ? _value.cost
            : (cost as Money?) ?? _value.cost,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeCostCopyWithExtension on MedicationKnowledgeCost {
  $MedicationKnowledgeCostCopyWith<MedicationKnowledgeCost> get copyWith =>
      _$MedicationKnowledgeCostCopyWithImpl<MedicationKnowledgeCost>(
        this,
        (value) => value,
      );
}

abstract class $MedicationKnowledgeMonitoringProgramCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? name,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeMonitoringProgramCopyWithImpl<T>
    implements $MedicationKnowledgeMonitoringProgramCopyWith<T> {
  final MedicationKnowledgeMonitoringProgram _value;
  final T Function(MedicationKnowledgeMonitoringProgram) _then;

  _$MedicationKnowledgeMonitoringProgramCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? name = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeMonitoringProgram(
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
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeMonitoringProgramCopyWithExtension
    on MedicationKnowledgeMonitoringProgram {
  $MedicationKnowledgeMonitoringProgramCopyWith<
          MedicationKnowledgeMonitoringProgram>
      get copyWith => _$MedicationKnowledgeMonitoringProgramCopyWithImpl<
              MedicationKnowledgeMonitoringProgram>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeAdministrationGuidelinesCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<MedicationKnowledgeDosage>? dosage,
    CodeableConcept? indicationX,
    List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeAdministrationGuidelinesCopyWithImpl<T>
    implements $MedicationKnowledgeAdministrationGuidelinesCopyWith<T> {
  final MedicationKnowledgeAdministrationGuidelines _value;
  final T Function(MedicationKnowledgeAdministrationGuidelines) _then;

  _$MedicationKnowledgeAdministrationGuidelinesCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? dosage = fhirSentinel,
    Object? indicationX = fhirSentinel,
    Object? patientCharacteristics = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeAdministrationGuidelines(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        dosage: identical(dosage, fhirSentinel)
            ? _value.dosage
            : dosage as List<MedicationKnowledgeDosage>?,
        indicationX: identical(indicationX, fhirSentinel)
            ? _value.indicationX
            : indicationX as CodeableConcept?,
        patientCharacteristics: identical(patientCharacteristics, fhirSentinel)
            ? _value.patientCharacteristics
            : patientCharacteristics
                as List<MedicationKnowledgePatientCharacteristics>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeAdministrationGuidelinesCopyWithExtension
    on MedicationKnowledgeAdministrationGuidelines {
  $MedicationKnowledgeAdministrationGuidelinesCopyWith<
          MedicationKnowledgeAdministrationGuidelines>
      get copyWith => _$MedicationKnowledgeAdministrationGuidelinesCopyWithImpl<
              MedicationKnowledgeAdministrationGuidelines>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeDosageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Dosage>? dosage,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeDosageCopyWithImpl<T>
    implements $MedicationKnowledgeDosageCopyWith<T> {
  final MedicationKnowledgeDosage _value;
  final T Function(MedicationKnowledgeDosage) _then;

  _$MedicationKnowledgeDosageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? dosage = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeDosage(
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
        dosage: identical(dosage, fhirSentinel)
            ? _value.dosage
            : (dosage as List<Dosage>?) ?? _value.dosage,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeDosageCopyWithExtension
    on MedicationKnowledgeDosage {
  $MedicationKnowledgeDosageCopyWith<MedicationKnowledgeDosage> get copyWith =>
      _$MedicationKnowledgeDosageCopyWithImpl<MedicationKnowledgeDosage>(
        this,
        (value) => value,
      );
}

abstract class $MedicationKnowledgePatientCharacteristicsCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? characteristicX,
    List<FhirString>? value,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgePatientCharacteristicsCopyWithImpl<T>
    implements $MedicationKnowledgePatientCharacteristicsCopyWith<T> {
  final MedicationKnowledgePatientCharacteristics _value;
  final T Function(MedicationKnowledgePatientCharacteristics) _then;

  _$MedicationKnowledgePatientCharacteristicsCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? characteristicX = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgePatientCharacteristics(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        characteristicX: identical(characteristicX, fhirSentinel)
            ? _value.characteristicX
            : (characteristicX as CodeableConcept?) ?? _value.characteristicX,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgePatientCharacteristicsCopyWithExtension
    on MedicationKnowledgePatientCharacteristics {
  $MedicationKnowledgePatientCharacteristicsCopyWith<
          MedicationKnowledgePatientCharacteristics>
      get copyWith => _$MedicationKnowledgePatientCharacteristicsCopyWithImpl<
              MedicationKnowledgePatientCharacteristics>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeMedicineClassificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classification,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeMedicineClassificationCopyWithImpl<T>
    implements $MedicationKnowledgeMedicineClassificationCopyWith<T> {
  final MedicationKnowledgeMedicineClassification _value;
  final T Function(MedicationKnowledgeMedicineClassification) _then;

  _$MedicationKnowledgeMedicineClassificationCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeMedicineClassification(
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
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeMedicineClassificationCopyWithExtension
    on MedicationKnowledgeMedicineClassification {
  $MedicationKnowledgeMedicineClassificationCopyWith<
          MedicationKnowledgeMedicineClassification>
      get copyWith => _$MedicationKnowledgeMedicineClassificationCopyWithImpl<
              MedicationKnowledgeMedicineClassification>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgePackagingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? quantity,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgePackagingCopyWithImpl<T>
    implements $MedicationKnowledgePackagingCopyWith<T> {
  final MedicationKnowledgePackaging _value;
  final T Function(MedicationKnowledgePackaging) _then;

  _$MedicationKnowledgePackagingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgePackaging(
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
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgePackagingCopyWithExtension
    on MedicationKnowledgePackaging {
  $MedicationKnowledgePackagingCopyWith<MedicationKnowledgePackaging>
      get copyWith => _$MedicationKnowledgePackagingCopyWithImpl<
              MedicationKnowledgePackaging>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeDrugCharacteristicCopyWith<T>
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

class _$MedicationKnowledgeDrugCharacteristicCopyWithImpl<T>
    implements $MedicationKnowledgeDrugCharacteristicCopyWith<T> {
  final MedicationKnowledgeDrugCharacteristic _value;
  final T Function(MedicationKnowledgeDrugCharacteristic) _then;

  _$MedicationKnowledgeDrugCharacteristicCopyWithImpl(this._value, this._then);

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
      MedicationKnowledgeDrugCharacteristic(
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

extension MedicationKnowledgeDrugCharacteristicCopyWithExtension
    on MedicationKnowledgeDrugCharacteristic {
  $MedicationKnowledgeDrugCharacteristicCopyWith<
          MedicationKnowledgeDrugCharacteristic>
      get copyWith => _$MedicationKnowledgeDrugCharacteristicCopyWithImpl<
              MedicationKnowledgeDrugCharacteristic>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeRegulatoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? regulatoryAuthority,
    List<MedicationKnowledgeSubstitution>? substitution,
    List<MedicationKnowledgeSchedule>? schedule,
    MedicationKnowledgeMaxDispense? maxDispense,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeRegulatoryCopyWithImpl<T>
    implements $MedicationKnowledgeRegulatoryCopyWith<T> {
  final MedicationKnowledgeRegulatory _value;
  final T Function(MedicationKnowledgeRegulatory) _then;

  _$MedicationKnowledgeRegulatoryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? regulatoryAuthority = fhirSentinel,
    Object? substitution = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? maxDispense = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeRegulatory(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        regulatoryAuthority: identical(regulatoryAuthority, fhirSentinel)
            ? _value.regulatoryAuthority
            : (regulatoryAuthority as Reference?) ?? _value.regulatoryAuthority,
        substitution: identical(substitution, fhirSentinel)
            ? _value.substitution
            : substitution as List<MedicationKnowledgeSubstitution>?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : schedule as List<MedicationKnowledgeSchedule>?,
        maxDispense: identical(maxDispense, fhirSentinel)
            ? _value.maxDispense
            : maxDispense as MedicationKnowledgeMaxDispense?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeRegulatoryCopyWithExtension
    on MedicationKnowledgeRegulatory {
  $MedicationKnowledgeRegulatoryCopyWith<MedicationKnowledgeRegulatory>
      get copyWith => _$MedicationKnowledgeRegulatoryCopyWithImpl<
              MedicationKnowledgeRegulatory>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeSubstitutionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBoolean? allowed,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeSubstitutionCopyWithImpl<T>
    implements $MedicationKnowledgeSubstitutionCopyWith<T> {
  final MedicationKnowledgeSubstitution _value;
  final T Function(MedicationKnowledgeSubstitution) _then;

  _$MedicationKnowledgeSubstitutionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? allowed = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeSubstitution(
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
        allowed: identical(allowed, fhirSentinel)
            ? _value.allowed
            : (allowed as FhirBoolean?) ?? _value.allowed,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeSubstitutionCopyWithExtension
    on MedicationKnowledgeSubstitution {
  $MedicationKnowledgeSubstitutionCopyWith<MedicationKnowledgeSubstitution>
      get copyWith => _$MedicationKnowledgeSubstitutionCopyWithImpl<
              MedicationKnowledgeSubstitution>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeScheduleCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? schedule,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeScheduleCopyWithImpl<T>
    implements $MedicationKnowledgeScheduleCopyWith<T> {
  final MedicationKnowledgeSchedule _value;
  final T Function(MedicationKnowledgeSchedule) _then;

  _$MedicationKnowledgeScheduleCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? schedule = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeSchedule(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        schedule: identical(schedule, fhirSentinel)
            ? _value.schedule
            : (schedule as CodeableConcept?) ?? _value.schedule,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeScheduleCopyWithExtension
    on MedicationKnowledgeSchedule {
  $MedicationKnowledgeScheduleCopyWith<MedicationKnowledgeSchedule>
      get copyWith => _$MedicationKnowledgeScheduleCopyWithImpl<
              MedicationKnowledgeSchedule>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeMaxDispenseCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    FhirDuration? period,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeMaxDispenseCopyWithImpl<T>
    implements $MedicationKnowledgeMaxDispenseCopyWith<T> {
  final MedicationKnowledgeMaxDispense _value;
  final T Function(MedicationKnowledgeMaxDispense) _then;

  _$MedicationKnowledgeMaxDispenseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeMaxDispense(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : (quantity as Quantity?) ?? _value.quantity,
        period: identical(period, fhirSentinel)
            ? _value.period
            : period as FhirDuration?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeMaxDispenseCopyWithExtension
    on MedicationKnowledgeMaxDispense {
  $MedicationKnowledgeMaxDispenseCopyWith<MedicationKnowledgeMaxDispense>
      get copyWith => _$MedicationKnowledgeMaxDispenseCopyWithImpl<
              MedicationKnowledgeMaxDispense>(
            this,
            (value) => value,
          );
}

abstract class $MedicationKnowledgeKineticsCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Quantity>? areaUnderCurve,
    List<Quantity>? lethalDose50,
    FhirDuration? halfLifePeriod,
    bool? disallowExtensions,
  });
}

class _$MedicationKnowledgeKineticsCopyWithImpl<T>
    implements $MedicationKnowledgeKineticsCopyWith<T> {
  final MedicationKnowledgeKinetics _value;
  final T Function(MedicationKnowledgeKinetics) _then;

  _$MedicationKnowledgeKineticsCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? areaUnderCurve = fhirSentinel,
    Object? lethalDose50 = fhirSentinel,
    Object? halfLifePeriod = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationKnowledgeKinetics(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        areaUnderCurve: identical(areaUnderCurve, fhirSentinel)
            ? _value.areaUnderCurve
            : areaUnderCurve as List<Quantity>?,
        lethalDose50: identical(lethalDose50, fhirSentinel)
            ? _value.lethalDose50
            : lethalDose50 as List<Quantity>?,
        halfLifePeriod: identical(halfLifePeriod, fhirSentinel)
            ? _value.halfLifePeriod
            : halfLifePeriod as FhirDuration?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationKnowledgeKineticsCopyWithExtension
    on MedicationKnowledgeKinetics {
  $MedicationKnowledgeKineticsCopyWith<MedicationKnowledgeKinetics>
      get copyWith => _$MedicationKnowledgeKineticsCopyWithImpl<
              MedicationKnowledgeKinetics>(
            this,
            (value) => value,
          );
}
