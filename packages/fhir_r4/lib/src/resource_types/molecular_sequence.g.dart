// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'molecular_sequence.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MolecularSequenceCopyWith<T>
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
    SequenceType? type,
    FhirInteger? coordinateSystem,
    Reference? patient,
    Reference? specimen,
    Reference? device,
    Reference? performer,
    Quantity? quantity,
    MolecularSequenceReferenceSeq? referenceSeq,
    List<MolecularSequenceVariant>? variant,
    FhirString? observedSeq,
    List<MolecularSequenceQuality>? quality,
    FhirInteger? readCoverage,
    List<MolecularSequenceRepository>? repository,
    List<Reference>? pointer,
    List<MolecularSequenceStructureVariant>? structureVariant,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceCopyWithImpl<T>
    implements $MolecularSequenceCopyWith<T> {
  final MolecularSequence _value;
  final T Function(MolecularSequence) _then;

  _$MolecularSequenceCopyWithImpl(this._value, this._then);

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
    Object? coordinateSystem = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? specimen = fhirSentinel,
    Object? device = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? referenceSeq = fhirSentinel,
    Object? variant = fhirSentinel,
    Object? observedSeq = fhirSentinel,
    Object? quality = fhirSentinel,
    Object? readCoverage = fhirSentinel,
    Object? repository = fhirSentinel,
    Object? pointer = fhirSentinel,
    Object? structureVariant = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequence(
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
        type:
            identical(type, fhirSentinel) ? _value.type : type as SequenceType?,
        coordinateSystem: identical(coordinateSystem, fhirSentinel)
            ? _value.coordinateSystem
            : (coordinateSystem as FhirInteger?) ?? _value.coordinateSystem,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : patient as Reference?,
        specimen: identical(specimen, fhirSentinel)
            ? _value.specimen
            : specimen as Reference?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as Reference?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as Reference?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        referenceSeq: identical(referenceSeq, fhirSentinel)
            ? _value.referenceSeq
            : referenceSeq as MolecularSequenceReferenceSeq?,
        variant: identical(variant, fhirSentinel)
            ? _value.variant
            : variant as List<MolecularSequenceVariant>?,
        observedSeq: identical(observedSeq, fhirSentinel)
            ? _value.observedSeq
            : observedSeq as FhirString?,
        quality: identical(quality, fhirSentinel)
            ? _value.quality
            : quality as List<MolecularSequenceQuality>?,
        readCoverage: identical(readCoverage, fhirSentinel)
            ? _value.readCoverage
            : readCoverage as FhirInteger?,
        repository: identical(repository, fhirSentinel)
            ? _value.repository
            : repository as List<MolecularSequenceRepository>?,
        pointer: identical(pointer, fhirSentinel)
            ? _value.pointer
            : pointer as List<Reference>?,
        structureVariant: identical(structureVariant, fhirSentinel)
            ? _value.structureVariant
            : structureVariant as List<MolecularSequenceStructureVariant>?,
      ),
    );
  }
}

extension MolecularSequenceCopyWithExtension on MolecularSequence {
  $MolecularSequenceCopyWith<MolecularSequence> get copyWith =>
      _$MolecularSequenceCopyWithImpl<MolecularSequence>(
        this,
        (value) => value,
      );
}

abstract class $MolecularSequenceReferenceSeqCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? chromosome,
    FhirString? genomeBuild,
    OrientationType? orientation,
    CodeableConcept? referenceSeqId,
    Reference? referenceSeqPointer,
    FhirString? referenceSeqString,
    StrandType? strand,
    FhirInteger? windowStart,
    FhirInteger? windowEnd,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceReferenceSeqCopyWithImpl<T>
    implements $MolecularSequenceReferenceSeqCopyWith<T> {
  final MolecularSequenceReferenceSeq _value;
  final T Function(MolecularSequenceReferenceSeq) _then;

  _$MolecularSequenceReferenceSeqCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? chromosome = fhirSentinel,
    Object? genomeBuild = fhirSentinel,
    Object? orientation = fhirSentinel,
    Object? referenceSeqId = fhirSentinel,
    Object? referenceSeqPointer = fhirSentinel,
    Object? referenceSeqString = fhirSentinel,
    Object? strand = fhirSentinel,
    Object? windowStart = fhirSentinel,
    Object? windowEnd = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceReferenceSeq(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        chromosome: identical(chromosome, fhirSentinel)
            ? _value.chromosome
            : chromosome as CodeableConcept?,
        genomeBuild: identical(genomeBuild, fhirSentinel)
            ? _value.genomeBuild
            : genomeBuild as FhirString?,
        orientation: identical(orientation, fhirSentinel)
            ? _value.orientation
            : orientation as OrientationType?,
        referenceSeqId: identical(referenceSeqId, fhirSentinel)
            ? _value.referenceSeqId
            : referenceSeqId as CodeableConcept?,
        referenceSeqPointer: identical(referenceSeqPointer, fhirSentinel)
            ? _value.referenceSeqPointer
            : referenceSeqPointer as Reference?,
        referenceSeqString: identical(referenceSeqString, fhirSentinel)
            ? _value.referenceSeqString
            : referenceSeqString as FhirString?,
        strand: identical(strand, fhirSentinel)
            ? _value.strand
            : strand as StrandType?,
        windowStart: identical(windowStart, fhirSentinel)
            ? _value.windowStart
            : windowStart as FhirInteger?,
        windowEnd: identical(windowEnd, fhirSentinel)
            ? _value.windowEnd
            : windowEnd as FhirInteger?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceReferenceSeqCopyWithExtension
    on MolecularSequenceReferenceSeq {
  $MolecularSequenceReferenceSeqCopyWith<MolecularSequenceReferenceSeq>
      get copyWith => _$MolecularSequenceReferenceSeqCopyWithImpl<
              MolecularSequenceReferenceSeq>(
            this,
            (value) => value,
          );
}

abstract class $MolecularSequenceVariantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    FhirInteger? end,
    FhirString? observedAllele,
    FhirString? referenceAllele,
    FhirString? cigar,
    Reference? variantPointer,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceVariantCopyWithImpl<T>
    implements $MolecularSequenceVariantCopyWith<T> {
  final MolecularSequenceVariant _value;
  final T Function(MolecularSequenceVariant) _then;

  _$MolecularSequenceVariantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? observedAllele = fhirSentinel,
    Object? referenceAllele = fhirSentinel,
    Object? cigar = fhirSentinel,
    Object? variantPointer = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceVariant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirInteger?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInteger?,
        observedAllele: identical(observedAllele, fhirSentinel)
            ? _value.observedAllele
            : observedAllele as FhirString?,
        referenceAllele: identical(referenceAllele, fhirSentinel)
            ? _value.referenceAllele
            : referenceAllele as FhirString?,
        cigar: identical(cigar, fhirSentinel)
            ? _value.cigar
            : cigar as FhirString?,
        variantPointer: identical(variantPointer, fhirSentinel)
            ? _value.variantPointer
            : variantPointer as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceVariantCopyWithExtension
    on MolecularSequenceVariant {
  $MolecularSequenceVariantCopyWith<MolecularSequenceVariant> get copyWith =>
      _$MolecularSequenceVariantCopyWithImpl<MolecularSequenceVariant>(
        this,
        (value) => value,
      );
}

abstract class $MolecularSequenceQualityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    QualityType? type,
    CodeableConcept? standardSequence,
    FhirInteger? start,
    FhirInteger? end,
    Quantity? score,
    CodeableConcept? method,
    FhirDecimal? truthTP,
    FhirDecimal? queryTP,
    FhirDecimal? truthFN,
    FhirDecimal? queryFP,
    FhirDecimal? gtFP,
    FhirDecimal? precision,
    FhirDecimal? recall,
    FhirDecimal? fScore,
    MolecularSequenceRoc? roc,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceQualityCopyWithImpl<T>
    implements $MolecularSequenceQualityCopyWith<T> {
  final MolecularSequenceQuality _value;
  final T Function(MolecularSequenceQuality) _then;

  _$MolecularSequenceQualityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? standardSequence = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? score = fhirSentinel,
    Object? method = fhirSentinel,
    Object? truthTP = fhirSentinel,
    Object? queryTP = fhirSentinel,
    Object? truthFN = fhirSentinel,
    Object? queryFP = fhirSentinel,
    Object? gtFP = fhirSentinel,
    Object? precision = fhirSentinel,
    Object? recall = fhirSentinel,
    Object? fScore = fhirSentinel,
    Object? roc = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceQuality(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as QualityType?) ?? _value.type,
        standardSequence: identical(standardSequence, fhirSentinel)
            ? _value.standardSequence
            : standardSequence as CodeableConcept?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirInteger?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInteger?,
        score:
            identical(score, fhirSentinel) ? _value.score : score as Quantity?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        truthTP: identical(truthTP, fhirSentinel)
            ? _value.truthTP
            : truthTP as FhirDecimal?,
        queryTP: identical(queryTP, fhirSentinel)
            ? _value.queryTP
            : queryTP as FhirDecimal?,
        truthFN: identical(truthFN, fhirSentinel)
            ? _value.truthFN
            : truthFN as FhirDecimal?,
        queryFP: identical(queryFP, fhirSentinel)
            ? _value.queryFP
            : queryFP as FhirDecimal?,
        gtFP:
            identical(gtFP, fhirSentinel) ? _value.gtFP : gtFP as FhirDecimal?,
        precision: identical(precision, fhirSentinel)
            ? _value.precision
            : precision as FhirDecimal?,
        recall: identical(recall, fhirSentinel)
            ? _value.recall
            : recall as FhirDecimal?,
        fScore: identical(fScore, fhirSentinel)
            ? _value.fScore
            : fScore as FhirDecimal?,
        roc: identical(roc, fhirSentinel)
            ? _value.roc
            : roc as MolecularSequenceRoc?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceQualityCopyWithExtension
    on MolecularSequenceQuality {
  $MolecularSequenceQualityCopyWith<MolecularSequenceQuality> get copyWith =>
      _$MolecularSequenceQualityCopyWithImpl<MolecularSequenceQuality>(
        this,
        (value) => value,
      );
}

abstract class $MolecularSequenceRocCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirInteger>? score,
    List<FhirInteger>? numTP,
    List<FhirInteger>? numFP,
    List<FhirInteger>? numFN,
    List<FhirDecimal>? precision,
    List<FhirDecimal>? sensitivity,
    List<FhirDecimal>? fMeasure,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceRocCopyWithImpl<T>
    implements $MolecularSequenceRocCopyWith<T> {
  final MolecularSequenceRoc _value;
  final T Function(MolecularSequenceRoc) _then;

  _$MolecularSequenceRocCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? score = fhirSentinel,
    Object? numTP = fhirSentinel,
    Object? numFP = fhirSentinel,
    Object? numFN = fhirSentinel,
    Object? precision = fhirSentinel,
    Object? sensitivity = fhirSentinel,
    Object? fMeasure = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceRoc(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        score: identical(score, fhirSentinel)
            ? _value.score
            : score as List<FhirInteger>?,
        numTP: identical(numTP, fhirSentinel)
            ? _value.numTP
            : numTP as List<FhirInteger>?,
        numFP: identical(numFP, fhirSentinel)
            ? _value.numFP
            : numFP as List<FhirInteger>?,
        numFN: identical(numFN, fhirSentinel)
            ? _value.numFN
            : numFN as List<FhirInteger>?,
        precision: identical(precision, fhirSentinel)
            ? _value.precision
            : precision as List<FhirDecimal>?,
        sensitivity: identical(sensitivity, fhirSentinel)
            ? _value.sensitivity
            : sensitivity as List<FhirDecimal>?,
        fMeasure: identical(fMeasure, fhirSentinel)
            ? _value.fMeasure
            : fMeasure as List<FhirDecimal>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceRocCopyWithExtension on MolecularSequenceRoc {
  $MolecularSequenceRocCopyWith<MolecularSequenceRoc> get copyWith =>
      _$MolecularSequenceRocCopyWithImpl<MolecularSequenceRoc>(
        this,
        (value) => value,
      );
}

abstract class $MolecularSequenceRepositoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    RepositoryType? type,
    FhirUri? url,
    FhirString? name,
    FhirString? datasetId,
    FhirString? variantsetId,
    FhirString? readsetId,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceRepositoryCopyWithImpl<T>
    implements $MolecularSequenceRepositoryCopyWith<T> {
  final MolecularSequenceRepository _value;
  final T Function(MolecularSequenceRepository) _then;

  _$MolecularSequenceRepositoryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? url = fhirSentinel,
    Object? name = fhirSentinel,
    Object? datasetId = fhirSentinel,
    Object? variantsetId = fhirSentinel,
    Object? readsetId = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceRepository(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as RepositoryType?) ?? _value.type,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        datasetId: identical(datasetId, fhirSentinel)
            ? _value.datasetId
            : datasetId as FhirString?,
        variantsetId: identical(variantsetId, fhirSentinel)
            ? _value.variantsetId
            : variantsetId as FhirString?,
        readsetId: identical(readsetId, fhirSentinel)
            ? _value.readsetId
            : readsetId as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceRepositoryCopyWithExtension
    on MolecularSequenceRepository {
  $MolecularSequenceRepositoryCopyWith<MolecularSequenceRepository>
      get copyWith => _$MolecularSequenceRepositoryCopyWithImpl<
              MolecularSequenceRepository>(
            this,
            (value) => value,
          );
}

abstract class $MolecularSequenceStructureVariantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? variantType,
    FhirBoolean? exact,
    FhirInteger? length,
    MolecularSequenceOuter? outer,
    MolecularSequenceInner? inner,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceStructureVariantCopyWithImpl<T>
    implements $MolecularSequenceStructureVariantCopyWith<T> {
  final MolecularSequenceStructureVariant _value;
  final T Function(MolecularSequenceStructureVariant) _then;

  _$MolecularSequenceStructureVariantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? variantType = fhirSentinel,
    Object? exact = fhirSentinel,
    Object? length = fhirSentinel,
    Object? outer = fhirSentinel,
    Object? inner = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceStructureVariant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        variantType: identical(variantType, fhirSentinel)
            ? _value.variantType
            : variantType as CodeableConcept?,
        exact: identical(exact, fhirSentinel)
            ? _value.exact
            : exact as FhirBoolean?,
        length: identical(length, fhirSentinel)
            ? _value.length
            : length as FhirInteger?,
        outer: identical(outer, fhirSentinel)
            ? _value.outer
            : outer as MolecularSequenceOuter?,
        inner: identical(inner, fhirSentinel)
            ? _value.inner
            : inner as MolecularSequenceInner?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceStructureVariantCopyWithExtension
    on MolecularSequenceStructureVariant {
  $MolecularSequenceStructureVariantCopyWith<MolecularSequenceStructureVariant>
      get copyWith => _$MolecularSequenceStructureVariantCopyWithImpl<
              MolecularSequenceStructureVariant>(
            this,
            (value) => value,
          );
}

abstract class $MolecularSequenceOuterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    FhirInteger? end,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceOuterCopyWithImpl<T>
    implements $MolecularSequenceOuterCopyWith<T> {
  final MolecularSequenceOuter _value;
  final T Function(MolecularSequenceOuter) _then;

  _$MolecularSequenceOuterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceOuter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirInteger?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInteger?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceOuterCopyWithExtension on MolecularSequenceOuter {
  $MolecularSequenceOuterCopyWith<MolecularSequenceOuter> get copyWith =>
      _$MolecularSequenceOuterCopyWithImpl<MolecularSequenceOuter>(
        this,
        (value) => value,
      );
}

abstract class $MolecularSequenceInnerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    FhirInteger? end,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceInnerCopyWithImpl<T>
    implements $MolecularSequenceInnerCopyWith<T> {
  final MolecularSequenceInner _value;
  final T Function(MolecularSequenceInner) _then;

  _$MolecularSequenceInnerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceInner(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirInteger?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInteger?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceInnerCopyWithExtension on MolecularSequenceInner {
  $MolecularSequenceInnerCopyWith<MolecularSequenceInner> get copyWith =>
      _$MolecularSequenceInnerCopyWithImpl<MolecularSequenceInner>(
        this,
        (value) => value,
      );
}
