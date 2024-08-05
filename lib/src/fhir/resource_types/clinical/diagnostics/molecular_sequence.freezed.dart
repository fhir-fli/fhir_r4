// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'molecular_sequence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MolecularSequence _$MolecularSequenceFromJson(Map<String, dynamic> json) {
  return _MolecularSequence.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequence {
  @JsonKey(unknownEnumValue: R4ResourceType.MolecularSequence)
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

  /// [identifier] A unique identifier for this particular sequence instance.
  ///  This is a FHIR-defined id.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [type] Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [coordinateSystem] Whether the sequence is numbered starting at 0
  /// (0-based numbering or coordinates, inclusive start, exclusive end) or
  ///  starting at 1 (1-based numbering, inclusive start and inclusive end).
  FhirInteger? get coordinateSystem => throw _privateConstructorUsedError;

  /// [coordinateSystemElement] Extensions for coordinateSystem
  @JsonKey(name: '_coordinateSystem')
  PrimitiveElement? get coordinateSystemElement =>
      throw _privateConstructorUsedError;

  /// [patient] The patient whose sequencing results are described by this
  ///  resource.
  Reference? get patient => throw _privateConstructorUsedError;

  /// [specimen] Specimen used for sequencing.
  Reference? get specimen => throw _privateConstructorUsedError;

  /// [device] The method for sequencing, for example, chip information.
  Reference? get device => throw _privateConstructorUsedError;

  /// [performer] The organization or lab that should be responsible for this
  ///  result.
  Reference? get performer => throw _privateConstructorUsedError;

  /// [quantity] The number of copies of the sequence of interest. (RNASeq).
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [referenceSeq] A sequence that is used as a reference to describe
  ///  variants that are present in a sequence analyzed.
  MolecularSequenceReferenceSeq? get referenceSeq =>
      throw _privateConstructorUsedError;

  /// [variant] The definition of variant here originates from Sequence
  /// ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This
  /// element can represent amino acid or nucleic sequence change(including
  /// insertion,deletion,SNP,etc.)  It can represent some complex mutation or
  ///  segment variation with the assist of CIGAR string.
  List<MolecularSequenceVariant>? get variant =>
      throw _privateConstructorUsedError;

  /// [observedSeq] Sequence that was observed. It is the result marked by
  /// referenceSeq along with variant records on referenceSeq. This shall start
  ///  from referenceSeq.windowStart and end by referenceSeq.windowEnd.
  String? get observedSeq => throw _privateConstructorUsedError;

  /// [observedSeqElement] Extensions for observedSeq
  @JsonKey(name: '_observedSeq')
  PrimitiveElement? get observedSeqElement =>
      throw _privateConstructorUsedError;

  /// [quality] An experimental feature attribute that defines the quality of
  /// the feature in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  List<MolecularSequenceQuality>? get quality =>
      throw _privateConstructorUsedError;

  /// [readCoverage] Coverage (read depth or depth) is the average number of
  ///  reads representing a given nucleotide in the reconstructed sequence.
  FhirInteger? get readCoverage => throw _privateConstructorUsedError;

  /// [readCoverageElement] Extensions for readCoverage
  @JsonKey(name: '_readCoverage')
  PrimitiveElement? get readCoverageElement =>
      throw _privateConstructorUsedError;

  /// [repository] Configurations of the external repository. The repository
  /// shall store target's observedSeq or records related with target's
  ///  observedSeq.
  List<MolecularSequenceRepository>? get repository =>
      throw _privateConstructorUsedError;

  /// [pointer] Pointer to next atomic sequence which at most contains one
  ///  variant.
  List<Reference>? get pointer => throw _privateConstructorUsedError;

  /// [structureVariant] Information about chromosome structure variation.
  List<MolecularSequenceStructureVariant>? get structureVariant =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceCopyWith<MolecularSequence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceCopyWith<$Res> {
  factory $MolecularSequenceCopyWith(
          MolecularSequence value, $Res Function(MolecularSequence) then) =
      _$MolecularSequenceCopyWithImpl<$Res, MolecularSequence>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MolecularSequence)
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
      List<Identifier>? identifier,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirInteger? coordinateSystem,
      @JsonKey(name: '_coordinateSystem')
      PrimitiveElement? coordinateSystemElement,
      Reference? patient,
      Reference? specimen,
      Reference? device,
      Reference? performer,
      Quantity? quantity,
      MolecularSequenceReferenceSeq? referenceSeq,
      List<MolecularSequenceVariant>? variant,
      String? observedSeq,
      @JsonKey(name: '_observedSeq') PrimitiveElement? observedSeqElement,
      List<MolecularSequenceQuality>? quality,
      FhirInteger? readCoverage,
      @JsonKey(name: '_readCoverage') PrimitiveElement? readCoverageElement,
      List<MolecularSequenceRepository>? repository,
      List<Reference>? pointer,
      List<MolecularSequenceStructureVariant>? structureVariant});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get patient;
  $ReferenceCopyWith<$Res>? get specimen;
  $ReferenceCopyWith<$Res>? get device;
  $ReferenceCopyWith<$Res>? get performer;
  $QuantityCopyWith<$Res>? get quantity;
  $MolecularSequenceReferenceSeqCopyWith<$Res>? get referenceSeq;
}

/// @nodoc
class _$MolecularSequenceCopyWithImpl<$Res, $Val extends MolecularSequence>
    implements $MolecularSequenceCopyWith<$Res> {
  _$MolecularSequenceCopyWithImpl(this._value, this._then);

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
    Object? typeElement = freezed,
    Object? coordinateSystem = freezed,
    Object? coordinateSystemElement = freezed,
    Object? patient = freezed,
    Object? specimen = freezed,
    Object? device = freezed,
    Object? performer = freezed,
    Object? quantity = freezed,
    Object? referenceSeq = freezed,
    Object? variant = freezed,
    Object? observedSeq = freezed,
    Object? observedSeqElement = freezed,
    Object? quality = freezed,
    Object? readCoverage = freezed,
    Object? readCoverageElement = freezed,
    Object? repository = freezed,
    Object? pointer = freezed,
    Object? structureVariant = freezed,
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
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      coordinateSystem: freezed == coordinateSystem
          ? _value.coordinateSystem
          : coordinateSystem // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      coordinateSystemElement: freezed == coordinateSystemElement
          ? _value.coordinateSystemElement
          : coordinateSystemElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference?,
      specimen: freezed == specimen
          ? _value.specimen
          : specimen // ignore: cast_nullable_to_non_nullable
              as Reference?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Reference?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      referenceSeq: freezed == referenceSeq
          ? _value.referenceSeq
          : referenceSeq // ignore: cast_nullable_to_non_nullable
              as MolecularSequenceReferenceSeq?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as List<MolecularSequenceVariant>?,
      observedSeq: freezed == observedSeq
          ? _value.observedSeq
          : observedSeq // ignore: cast_nullable_to_non_nullable
              as String?,
      observedSeqElement: freezed == observedSeqElement
          ? _value.observedSeqElement
          : observedSeqElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as List<MolecularSequenceQuality>?,
      readCoverage: freezed == readCoverage
          ? _value.readCoverage
          : readCoverage // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      readCoverageElement: freezed == readCoverageElement
          ? _value.readCoverageElement
          : readCoverageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as List<MolecularSequenceRepository>?,
      pointer: freezed == pointer
          ? _value.pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      structureVariant: freezed == structureVariant
          ? _value.structureVariant
          : structureVariant // ignore: cast_nullable_to_non_nullable
              as List<MolecularSequenceStructureVariant>?,
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
  $ReferenceCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get specimen {
    if (_value.specimen == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.specimen!, (value) {
      return _then(_value.copyWith(specimen: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get performer {
    if (_value.performer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.performer!, (value) {
      return _then(_value.copyWith(performer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MolecularSequenceReferenceSeqCopyWith<$Res>? get referenceSeq {
    if (_value.referenceSeq == null) {
      return null;
    }

    return $MolecularSequenceReferenceSeqCopyWith<$Res>(_value.referenceSeq!,
        (value) {
      return _then(_value.copyWith(referenceSeq: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MolecularSequenceImplCopyWith<$Res>
    implements $MolecularSequenceCopyWith<$Res> {
  factory _$$MolecularSequenceImplCopyWith(_$MolecularSequenceImpl value,
          $Res Function(_$MolecularSequenceImpl) then) =
      __$$MolecularSequenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.MolecularSequence)
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
      List<Identifier>? identifier,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirInteger? coordinateSystem,
      @JsonKey(name: '_coordinateSystem')
      PrimitiveElement? coordinateSystemElement,
      Reference? patient,
      Reference? specimen,
      Reference? device,
      Reference? performer,
      Quantity? quantity,
      MolecularSequenceReferenceSeq? referenceSeq,
      List<MolecularSequenceVariant>? variant,
      String? observedSeq,
      @JsonKey(name: '_observedSeq') PrimitiveElement? observedSeqElement,
      List<MolecularSequenceQuality>? quality,
      FhirInteger? readCoverage,
      @JsonKey(name: '_readCoverage') PrimitiveElement? readCoverageElement,
      List<MolecularSequenceRepository>? repository,
      List<Reference>? pointer,
      List<MolecularSequenceStructureVariant>? structureVariant});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get patient;
  @override
  $ReferenceCopyWith<$Res>? get specimen;
  @override
  $ReferenceCopyWith<$Res>? get device;
  @override
  $ReferenceCopyWith<$Res>? get performer;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $MolecularSequenceReferenceSeqCopyWith<$Res>? get referenceSeq;
}

/// @nodoc
class __$$MolecularSequenceImplCopyWithImpl<$Res>
    extends _$MolecularSequenceCopyWithImpl<$Res, _$MolecularSequenceImpl>
    implements _$$MolecularSequenceImplCopyWith<$Res> {
  __$$MolecularSequenceImplCopyWithImpl(_$MolecularSequenceImpl _value,
      $Res Function(_$MolecularSequenceImpl) _then)
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
    Object? typeElement = freezed,
    Object? coordinateSystem = freezed,
    Object? coordinateSystemElement = freezed,
    Object? patient = freezed,
    Object? specimen = freezed,
    Object? device = freezed,
    Object? performer = freezed,
    Object? quantity = freezed,
    Object? referenceSeq = freezed,
    Object? variant = freezed,
    Object? observedSeq = freezed,
    Object? observedSeqElement = freezed,
    Object? quality = freezed,
    Object? readCoverage = freezed,
    Object? readCoverageElement = freezed,
    Object? repository = freezed,
    Object? pointer = freezed,
    Object? structureVariant = freezed,
  }) {
    return _then(_$MolecularSequenceImpl(
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
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      coordinateSystem: freezed == coordinateSystem
          ? _value.coordinateSystem
          : coordinateSystem // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      coordinateSystemElement: freezed == coordinateSystemElement
          ? _value.coordinateSystemElement
          : coordinateSystemElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference?,
      specimen: freezed == specimen
          ? _value.specimen
          : specimen // ignore: cast_nullable_to_non_nullable
              as Reference?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Reference?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      referenceSeq: freezed == referenceSeq
          ? _value.referenceSeq
          : referenceSeq // ignore: cast_nullable_to_non_nullable
              as MolecularSequenceReferenceSeq?,
      variant: freezed == variant
          ? _value._variant
          : variant // ignore: cast_nullable_to_non_nullable
              as List<MolecularSequenceVariant>?,
      observedSeq: freezed == observedSeq
          ? _value.observedSeq
          : observedSeq // ignore: cast_nullable_to_non_nullable
              as String?,
      observedSeqElement: freezed == observedSeqElement
          ? _value.observedSeqElement
          : observedSeqElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      quality: freezed == quality
          ? _value._quality
          : quality // ignore: cast_nullable_to_non_nullable
              as List<MolecularSequenceQuality>?,
      readCoverage: freezed == readCoverage
          ? _value.readCoverage
          : readCoverage // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      readCoverageElement: freezed == readCoverageElement
          ? _value.readCoverageElement
          : readCoverageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      repository: freezed == repository
          ? _value._repository
          : repository // ignore: cast_nullable_to_non_nullable
              as List<MolecularSequenceRepository>?,
      pointer: freezed == pointer
          ? _value._pointer
          : pointer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      structureVariant: freezed == structureVariant
          ? _value._structureVariant
          : structureVariant // ignore: cast_nullable_to_non_nullable
              as List<MolecularSequenceStructureVariant>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceImpl extends _MolecularSequence {
  const _$MolecularSequenceImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.MolecularSequence)
      this.resourceType = R4ResourceType.MolecularSequence,
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
      @JsonKey(name: '_type') this.typeElement,
      this.coordinateSystem,
      @JsonKey(name: '_coordinateSystem') this.coordinateSystemElement,
      this.patient,
      this.specimen,
      this.device,
      this.performer,
      this.quantity,
      this.referenceSeq,
      final List<MolecularSequenceVariant>? variant,
      this.observedSeq,
      @JsonKey(name: '_observedSeq') this.observedSeqElement,
      final List<MolecularSequenceQuality>? quality,
      this.readCoverage,
      @JsonKey(name: '_readCoverage') this.readCoverageElement,
      final List<MolecularSequenceRepository>? repository,
      final List<Reference>? pointer,
      final List<MolecularSequenceStructureVariant>? structureVariant})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _variant = variant,
        _quality = quality,
        _repository = repository,
        _pointer = pointer,
        _structureVariant = structureVariant,
        super._();

  factory _$MolecularSequenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MolecularSequenceImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MolecularSequence)
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

  /// [identifier] A unique identifier for this particular sequence instance.
  ///  This is a FHIR-defined id.
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier for this particular sequence instance.
  ///  This is a FHIR-defined id.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [coordinateSystem] Whether the sequence is numbered starting at 0
  /// (0-based numbering or coordinates, inclusive start, exclusive end) or
  ///  starting at 1 (1-based numbering, inclusive start and inclusive end).
  @override
  final FhirInteger? coordinateSystem;

  /// [coordinateSystemElement] Extensions for coordinateSystem
  @override
  @JsonKey(name: '_coordinateSystem')
  final PrimitiveElement? coordinateSystemElement;

  /// [patient] The patient whose sequencing results are described by this
  ///  resource.
  @override
  final Reference? patient;

  /// [specimen] Specimen used for sequencing.
  @override
  final Reference? specimen;

  /// [device] The method for sequencing, for example, chip information.
  @override
  final Reference? device;

  /// [performer] The organization or lab that should be responsible for this
  ///  result.
  @override
  final Reference? performer;

  /// [quantity] The number of copies of the sequence of interest. (RNASeq).
  @override
  final Quantity? quantity;

  /// [referenceSeq] A sequence that is used as a reference to describe
  ///  variants that are present in a sequence analyzed.
  @override
  final MolecularSequenceReferenceSeq? referenceSeq;

  /// [variant] The definition of variant here originates from Sequence
  /// ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This
  /// element can represent amino acid or nucleic sequence change(including
  /// insertion,deletion,SNP,etc.)  It can represent some complex mutation or
  ///  segment variation with the assist of CIGAR string.
  final List<MolecularSequenceVariant>? _variant;

  /// [variant] The definition of variant here originates from Sequence
  /// ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This
  /// element can represent amino acid or nucleic sequence change(including
  /// insertion,deletion,SNP,etc.)  It can represent some complex mutation or
  ///  segment variation with the assist of CIGAR string.
  @override
  List<MolecularSequenceVariant>? get variant {
    final value = _variant;
    if (value == null) return null;
    if (_variant is EqualUnmodifiableListView) return _variant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [observedSeq] Sequence that was observed. It is the result marked by
  /// referenceSeq along with variant records on referenceSeq. This shall start
  ///  from referenceSeq.windowStart and end by referenceSeq.windowEnd.
  @override
  final String? observedSeq;

  /// [observedSeqElement] Extensions for observedSeq
  @override
  @JsonKey(name: '_observedSeq')
  final PrimitiveElement? observedSeqElement;

  /// [quality] An experimental feature attribute that defines the quality of
  /// the feature in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  final List<MolecularSequenceQuality>? _quality;

  /// [quality] An experimental feature attribute that defines the quality of
  /// the feature in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  @override
  List<MolecularSequenceQuality>? get quality {
    final value = _quality;
    if (value == null) return null;
    if (_quality is EqualUnmodifiableListView) return _quality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [readCoverage] Coverage (read depth or depth) is the average number of
  ///  reads representing a given nucleotide in the reconstructed sequence.
  @override
  final FhirInteger? readCoverage;

  /// [readCoverageElement] Extensions for readCoverage
  @override
  @JsonKey(name: '_readCoverage')
  final PrimitiveElement? readCoverageElement;

  /// [repository] Configurations of the external repository. The repository
  /// shall store target's observedSeq or records related with target's
  ///  observedSeq.
  final List<MolecularSequenceRepository>? _repository;

  /// [repository] Configurations of the external repository. The repository
  /// shall store target's observedSeq or records related with target's
  ///  observedSeq.
  @override
  List<MolecularSequenceRepository>? get repository {
    final value = _repository;
    if (value == null) return null;
    if (_repository is EqualUnmodifiableListView) return _repository;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [pointer] Pointer to next atomic sequence which at most contains one
  ///  variant.
  final List<Reference>? _pointer;

  /// [pointer] Pointer to next atomic sequence which at most contains one
  ///  variant.
  @override
  List<Reference>? get pointer {
    final value = _pointer;
    if (value == null) return null;
    if (_pointer is EqualUnmodifiableListView) return _pointer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [structureVariant] Information about chromosome structure variation.
  final List<MolecularSequenceStructureVariant>? _structureVariant;

  /// [structureVariant] Information about chromosome structure variation.
  @override
  List<MolecularSequenceStructureVariant>? get structureVariant {
    final value = _structureVariant;
    if (value == null) return null;
    if (_structureVariant is EqualUnmodifiableListView)
      return _structureVariant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceImpl &&
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
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.coordinateSystem, coordinateSystem) ||
                other.coordinateSystem == coordinateSystem) &&
            (identical(
                    other.coordinateSystemElement, coordinateSystemElement) ||
                other.coordinateSystemElement == coordinateSystemElement) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.specimen, specimen) ||
                other.specimen == specimen) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.performer, performer) ||
                other.performer == performer) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.referenceSeq, referenceSeq) ||
                other.referenceSeq == referenceSeq) &&
            const DeepCollectionEquality().equals(other._variant, _variant) &&
            (identical(other.observedSeq, observedSeq) ||
                other.observedSeq == observedSeq) &&
            (identical(other.observedSeqElement, observedSeqElement) ||
                other.observedSeqElement == observedSeqElement) &&
            const DeepCollectionEquality().equals(other._quality, _quality) &&
            (identical(other.readCoverage, readCoverage) ||
                other.readCoverage == readCoverage) &&
            (identical(other.readCoverageElement, readCoverageElement) ||
                other.readCoverageElement == readCoverageElement) &&
            const DeepCollectionEquality()
                .equals(other._repository, _repository) &&
            const DeepCollectionEquality().equals(other._pointer, _pointer) &&
            const DeepCollectionEquality()
                .equals(other._structureVariant, _structureVariant));
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
        typeElement,
        coordinateSystem,
        coordinateSystemElement,
        patient,
        specimen,
        device,
        performer,
        quantity,
        referenceSeq,
        const DeepCollectionEquality().hash(_variant),
        observedSeq,
        observedSeqElement,
        const DeepCollectionEquality().hash(_quality),
        readCoverage,
        readCoverageElement,
        const DeepCollectionEquality().hash(_repository),
        const DeepCollectionEquality().hash(_pointer),
        const DeepCollectionEquality().hash(_structureVariant)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceImplCopyWith<_$MolecularSequenceImpl> get copyWith =>
      __$$MolecularSequenceImplCopyWithImpl<_$MolecularSequenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequence extends MolecularSequence {
  factory _MolecularSequence(
      {@JsonKey(unknownEnumValue: R4ResourceType.MolecularSequence)
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
      final List<Identifier>? identifier,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final FhirInteger? coordinateSystem,
      @JsonKey(name: '_coordinateSystem')
      final PrimitiveElement? coordinateSystemElement,
      final Reference? patient,
      final Reference? specimen,
      final Reference? device,
      final Reference? performer,
      final Quantity? quantity,
      final MolecularSequenceReferenceSeq? referenceSeq,
      final List<MolecularSequenceVariant>? variant,
      final String? observedSeq,
      @JsonKey(name: '_observedSeq') final PrimitiveElement? observedSeqElement,
      final List<MolecularSequenceQuality>? quality,
      final FhirInteger? readCoverage,
      @JsonKey(name: '_readCoverage')
      final PrimitiveElement? readCoverageElement,
      final List<MolecularSequenceRepository>? repository,
      final List<Reference>? pointer,
      final List<MolecularSequenceStructureVariant>?
          structureVariant}) = _$MolecularSequenceImpl;
  const _MolecularSequence._() : super._();

  factory _MolecularSequence.fromJson(Map<String, dynamic> json) =
      _$MolecularSequenceImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.MolecularSequence)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] A unique identifier for this particular sequence instance.
  ///  This is a FHIR-defined id.
  List<Identifier>? get identifier;
  @override

  /// [type] Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [coordinateSystem] Whether the sequence is numbered starting at 0
  /// (0-based numbering or coordinates, inclusive start, exclusive end) or
  ///  starting at 1 (1-based numbering, inclusive start and inclusive end).
  FhirInteger? get coordinateSystem;
  @override

  /// [coordinateSystemElement] Extensions for coordinateSystem
  @JsonKey(name: '_coordinateSystem')
  PrimitiveElement? get coordinateSystemElement;
  @override

  /// [patient] The patient whose sequencing results are described by this
  ///  resource.
  Reference? get patient;
  @override

  /// [specimen] Specimen used for sequencing.
  Reference? get specimen;
  @override

  /// [device] The method for sequencing, for example, chip information.
  Reference? get device;
  @override

  /// [performer] The organization or lab that should be responsible for this
  ///  result.
  Reference? get performer;
  @override

  /// [quantity] The number of copies of the sequence of interest. (RNASeq).
  Quantity? get quantity;
  @override

  /// [referenceSeq] A sequence that is used as a reference to describe
  ///  variants that are present in a sequence analyzed.
  MolecularSequenceReferenceSeq? get referenceSeq;
  @override

  /// [variant] The definition of variant here originates from Sequence
  /// ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This
  /// element can represent amino acid or nucleic sequence change(including
  /// insertion,deletion,SNP,etc.)  It can represent some complex mutation or
  ///  segment variation with the assist of CIGAR string.
  List<MolecularSequenceVariant>? get variant;
  @override

  /// [observedSeq] Sequence that was observed. It is the result marked by
  /// referenceSeq along with variant records on referenceSeq. This shall start
  ///  from referenceSeq.windowStart and end by referenceSeq.windowEnd.
  String? get observedSeq;
  @override

  /// [observedSeqElement] Extensions for observedSeq
  @JsonKey(name: '_observedSeq')
  PrimitiveElement? get observedSeqElement;
  @override

  /// [quality] An experimental feature attribute that defines the quality of
  /// the feature in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  List<MolecularSequenceQuality>? get quality;
  @override

  /// [readCoverage] Coverage (read depth or depth) is the average number of
  ///  reads representing a given nucleotide in the reconstructed sequence.
  FhirInteger? get readCoverage;
  @override

  /// [readCoverageElement] Extensions for readCoverage
  @JsonKey(name: '_readCoverage')
  PrimitiveElement? get readCoverageElement;
  @override

  /// [repository] Configurations of the external repository. The repository
  /// shall store target's observedSeq or records related with target's
  ///  observedSeq.
  List<MolecularSequenceRepository>? get repository;
  @override

  /// [pointer] Pointer to next atomic sequence which at most contains one
  ///  variant.
  List<Reference>? get pointer;
  @override

  /// [structureVariant] Information about chromosome structure variation.
  List<MolecularSequenceStructureVariant>? get structureVariant;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceImplCopyWith<_$MolecularSequenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MolecularSequenceReferenceSeq _$MolecularSequenceReferenceSeqFromJson(
    Map<String, dynamic> json) {
  return _MolecularSequenceReferenceSeq.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequenceReferenceSeq {
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

  /// [chromosome] Structural unit composed of a nucleic acid molecule which
  /// controls its own replication through the interaction of specific proteins
  /// at one or more origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  CodeableConcept? get chromosome => throw _privateConstructorUsedError;

  /// [genomeBuild] The Genome Build used for reference, following GRCh build
  /// versions e.g. 'GRCh 37'.  Version number must be included if a versioned
  ///  release of a primary build was used.
  String? get genomeBuild => throw _privateConstructorUsedError;

  /// [genomeBuildElement] Extensions for genomeBuild
  @JsonKey(name: '_genomeBuild')
  PrimitiveElement? get genomeBuildElement =>
      throw _privateConstructorUsedError;

  /// [orientation] A relative reference to a DNA strand based on gene
  /// orientation. The strand that contains the open reading frame of the gene
  /// is the "sense" strand, and the opposite complementary strand is the
  ///  "antisense" strand.
  FhirCode? get orientation => throw _privateConstructorUsedError;

  /// [orientationElement] Extensions for orientation
  @JsonKey(name: '_orientation')
  PrimitiveElement? get orientationElement =>
      throw _privateConstructorUsedError;

  /// [referenceSeqId] Reference identifier of reference sequence submitted to
  /// NCBI. It must match the type in the MolecularSequence.type field. For
  /// example, the prefix, “NG_” identifies reference sequence for genes, “NM_”
  ///  for messenger RNA transcripts, and “NP_” for amino acid sequences.
  CodeableConcept? get referenceSeqId => throw _privateConstructorUsedError;

  /// [referenceSeqPointer] A pointer to another MolecularSequence entity as
  ///  reference sequence.
  Reference? get referenceSeqPointer => throw _privateConstructorUsedError;

  /// [referenceSeqString] A string like "ACGT".
  String? get referenceSeqString => throw _privateConstructorUsedError;

  /// [referenceSeqStringElement] Extensions for referenceSeqString
  @JsonKey(name: '_referenceSeqString')
  PrimitiveElement? get referenceSeqStringElement =>
      throw _privateConstructorUsedError;

  /// [strand] An absolute reference to a strand. The Watson strand is the
  /// strand whose 5'-end is on the short arm of the chromosome, and the Crick
  ///  strand as the one whose 5'-end is on the long arm.
  FhirCode? get strand => throw _privateConstructorUsedError;

  /// [strandElement] Extensions for strand
  @JsonKey(name: '_strand')
  PrimitiveElement? get strandElement => throw _privateConstructorUsedError;

  /// [windowStart] Start position of the window on the reference sequence. If
  /// the coordinate system is either 0-based or 1-based, then start position is
  ///  inclusive.
  FhirInteger? get windowStart => throw _privateConstructorUsedError;

  /// [windowStartElement] Extensions for windowStart
  @JsonKey(name: '_windowStart')
  PrimitiveElement? get windowStartElement =>
      throw _privateConstructorUsedError;

  /// [windowEnd] End position of the window on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  ///  inclusive and includes the last position.
  FhirInteger? get windowEnd => throw _privateConstructorUsedError;

  /// [windowEndElement] Extensions for windowEnd
  @JsonKey(name: '_windowEnd')
  PrimitiveElement? get windowEndElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceReferenceSeqCopyWith<MolecularSequenceReferenceSeq>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceReferenceSeqCopyWith<$Res> {
  factory $MolecularSequenceReferenceSeqCopyWith(
          MolecularSequenceReferenceSeq value,
          $Res Function(MolecularSequenceReferenceSeq) then) =
      _$MolecularSequenceReferenceSeqCopyWithImpl<$Res,
          MolecularSequenceReferenceSeq>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? chromosome,
      String? genomeBuild,
      @JsonKey(name: '_genomeBuild') PrimitiveElement? genomeBuildElement,
      FhirCode? orientation,
      @JsonKey(name: '_orientation') PrimitiveElement? orientationElement,
      CodeableConcept? referenceSeqId,
      Reference? referenceSeqPointer,
      String? referenceSeqString,
      @JsonKey(name: '_referenceSeqString')
      PrimitiveElement? referenceSeqStringElement,
      FhirCode? strand,
      @JsonKey(name: '_strand') PrimitiveElement? strandElement,
      FhirInteger? windowStart,
      @JsonKey(name: '_windowStart') PrimitiveElement? windowStartElement,
      FhirInteger? windowEnd,
      @JsonKey(name: '_windowEnd') PrimitiveElement? windowEndElement});

  $CodeableConceptCopyWith<$Res>? get chromosome;
  $CodeableConceptCopyWith<$Res>? get referenceSeqId;
  $ReferenceCopyWith<$Res>? get referenceSeqPointer;
}

/// @nodoc
class _$MolecularSequenceReferenceSeqCopyWithImpl<$Res,
        $Val extends MolecularSequenceReferenceSeq>
    implements $MolecularSequenceReferenceSeqCopyWith<$Res> {
  _$MolecularSequenceReferenceSeqCopyWithImpl(this._value, this._then);

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
    Object? chromosome = freezed,
    Object? genomeBuild = freezed,
    Object? genomeBuildElement = freezed,
    Object? orientation = freezed,
    Object? orientationElement = freezed,
    Object? referenceSeqId = freezed,
    Object? referenceSeqPointer = freezed,
    Object? referenceSeqString = freezed,
    Object? referenceSeqStringElement = freezed,
    Object? strand = freezed,
    Object? strandElement = freezed,
    Object? windowStart = freezed,
    Object? windowStartElement = freezed,
    Object? windowEnd = freezed,
    Object? windowEndElement = freezed,
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
      chromosome: freezed == chromosome
          ? _value.chromosome
          : chromosome // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      genomeBuild: freezed == genomeBuild
          ? _value.genomeBuild
          : genomeBuild // ignore: cast_nullable_to_non_nullable
              as String?,
      genomeBuildElement: freezed == genomeBuildElement
          ? _value.genomeBuildElement
          : genomeBuildElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      orientationElement: freezed == orientationElement
          ? _value.orientationElement
          : orientationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      referenceSeqId: freezed == referenceSeqId
          ? _value.referenceSeqId
          : referenceSeqId // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      referenceSeqPointer: freezed == referenceSeqPointer
          ? _value.referenceSeqPointer
          : referenceSeqPointer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      referenceSeqString: freezed == referenceSeqString
          ? _value.referenceSeqString
          : referenceSeqString // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceSeqStringElement: freezed == referenceSeqStringElement
          ? _value.referenceSeqStringElement
          : referenceSeqStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      strand: freezed == strand
          ? _value.strand
          : strand // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      strandElement: freezed == strandElement
          ? _value.strandElement
          : strandElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      windowStart: freezed == windowStart
          ? _value.windowStart
          : windowStart // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      windowStartElement: freezed == windowStartElement
          ? _value.windowStartElement
          : windowStartElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      windowEnd: freezed == windowEnd
          ? _value.windowEnd
          : windowEnd // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      windowEndElement: freezed == windowEndElement
          ? _value.windowEndElement
          : windowEndElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get chromosome {
    if (_value.chromosome == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.chromosome!, (value) {
      return _then(_value.copyWith(chromosome: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get referenceSeqId {
    if (_value.referenceSeqId == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.referenceSeqId!, (value) {
      return _then(_value.copyWith(referenceSeqId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get referenceSeqPointer {
    if (_value.referenceSeqPointer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.referenceSeqPointer!, (value) {
      return _then(_value.copyWith(referenceSeqPointer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MolecularSequenceReferenceSeqImplCopyWith<$Res>
    implements $MolecularSequenceReferenceSeqCopyWith<$Res> {
  factory _$$MolecularSequenceReferenceSeqImplCopyWith(
          _$MolecularSequenceReferenceSeqImpl value,
          $Res Function(_$MolecularSequenceReferenceSeqImpl) then) =
      __$$MolecularSequenceReferenceSeqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? chromosome,
      String? genomeBuild,
      @JsonKey(name: '_genomeBuild') PrimitiveElement? genomeBuildElement,
      FhirCode? orientation,
      @JsonKey(name: '_orientation') PrimitiveElement? orientationElement,
      CodeableConcept? referenceSeqId,
      Reference? referenceSeqPointer,
      String? referenceSeqString,
      @JsonKey(name: '_referenceSeqString')
      PrimitiveElement? referenceSeqStringElement,
      FhirCode? strand,
      @JsonKey(name: '_strand') PrimitiveElement? strandElement,
      FhirInteger? windowStart,
      @JsonKey(name: '_windowStart') PrimitiveElement? windowStartElement,
      FhirInteger? windowEnd,
      @JsonKey(name: '_windowEnd') PrimitiveElement? windowEndElement});

  @override
  $CodeableConceptCopyWith<$Res>? get chromosome;
  @override
  $CodeableConceptCopyWith<$Res>? get referenceSeqId;
  @override
  $ReferenceCopyWith<$Res>? get referenceSeqPointer;
}

/// @nodoc
class __$$MolecularSequenceReferenceSeqImplCopyWithImpl<$Res>
    extends _$MolecularSequenceReferenceSeqCopyWithImpl<$Res,
        _$MolecularSequenceReferenceSeqImpl>
    implements _$$MolecularSequenceReferenceSeqImplCopyWith<$Res> {
  __$$MolecularSequenceReferenceSeqImplCopyWithImpl(
      _$MolecularSequenceReferenceSeqImpl _value,
      $Res Function(_$MolecularSequenceReferenceSeqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? chromosome = freezed,
    Object? genomeBuild = freezed,
    Object? genomeBuildElement = freezed,
    Object? orientation = freezed,
    Object? orientationElement = freezed,
    Object? referenceSeqId = freezed,
    Object? referenceSeqPointer = freezed,
    Object? referenceSeqString = freezed,
    Object? referenceSeqStringElement = freezed,
    Object? strand = freezed,
    Object? strandElement = freezed,
    Object? windowStart = freezed,
    Object? windowStartElement = freezed,
    Object? windowEnd = freezed,
    Object? windowEndElement = freezed,
  }) {
    return _then(_$MolecularSequenceReferenceSeqImpl(
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
      chromosome: freezed == chromosome
          ? _value.chromosome
          : chromosome // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      genomeBuild: freezed == genomeBuild
          ? _value.genomeBuild
          : genomeBuild // ignore: cast_nullable_to_non_nullable
              as String?,
      genomeBuildElement: freezed == genomeBuildElement
          ? _value.genomeBuildElement
          : genomeBuildElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      orientation: freezed == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      orientationElement: freezed == orientationElement
          ? _value.orientationElement
          : orientationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      referenceSeqId: freezed == referenceSeqId
          ? _value.referenceSeqId
          : referenceSeqId // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      referenceSeqPointer: freezed == referenceSeqPointer
          ? _value.referenceSeqPointer
          : referenceSeqPointer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      referenceSeqString: freezed == referenceSeqString
          ? _value.referenceSeqString
          : referenceSeqString // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceSeqStringElement: freezed == referenceSeqStringElement
          ? _value.referenceSeqStringElement
          : referenceSeqStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      strand: freezed == strand
          ? _value.strand
          : strand // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      strandElement: freezed == strandElement
          ? _value.strandElement
          : strandElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      windowStart: freezed == windowStart
          ? _value.windowStart
          : windowStart // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      windowStartElement: freezed == windowStartElement
          ? _value.windowStartElement
          : windowStartElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      windowEnd: freezed == windowEnd
          ? _value.windowEnd
          : windowEnd // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      windowEndElement: freezed == windowEndElement
          ? _value.windowEndElement
          : windowEndElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceReferenceSeqImpl
    extends _MolecularSequenceReferenceSeq {
  const _$MolecularSequenceReferenceSeqImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.chromosome,
      this.genomeBuild,
      @JsonKey(name: '_genomeBuild') this.genomeBuildElement,
      this.orientation,
      @JsonKey(name: '_orientation') this.orientationElement,
      this.referenceSeqId,
      this.referenceSeqPointer,
      this.referenceSeqString,
      @JsonKey(name: '_referenceSeqString') this.referenceSeqStringElement,
      this.strand,
      @JsonKey(name: '_strand') this.strandElement,
      this.windowStart,
      @JsonKey(name: '_windowStart') this.windowStartElement,
      this.windowEnd,
      @JsonKey(name: '_windowEnd') this.windowEndElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MolecularSequenceReferenceSeqImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MolecularSequenceReferenceSeqImplFromJson(json);

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

  /// [chromosome] Structural unit composed of a nucleic acid molecule which
  /// controls its own replication through the interaction of specific proteins
  /// at one or more origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  @override
  final CodeableConcept? chromosome;

  /// [genomeBuild] The Genome Build used for reference, following GRCh build
  /// versions e.g. 'GRCh 37'.  Version number must be included if a versioned
  ///  release of a primary build was used.
  @override
  final String? genomeBuild;

  /// [genomeBuildElement] Extensions for genomeBuild
  @override
  @JsonKey(name: '_genomeBuild')
  final PrimitiveElement? genomeBuildElement;

  /// [orientation] A relative reference to a DNA strand based on gene
  /// orientation. The strand that contains the open reading frame of the gene
  /// is the "sense" strand, and the opposite complementary strand is the
  ///  "antisense" strand.
  @override
  final FhirCode? orientation;

  /// [orientationElement] Extensions for orientation
  @override
  @JsonKey(name: '_orientation')
  final PrimitiveElement? orientationElement;

  /// [referenceSeqId] Reference identifier of reference sequence submitted to
  /// NCBI. It must match the type in the MolecularSequence.type field. For
  /// example, the prefix, “NG_” identifies reference sequence for genes, “NM_”
  ///  for messenger RNA transcripts, and “NP_” for amino acid sequences.
  @override
  final CodeableConcept? referenceSeqId;

  /// [referenceSeqPointer] A pointer to another MolecularSequence entity as
  ///  reference sequence.
  @override
  final Reference? referenceSeqPointer;

  /// [referenceSeqString] A string like "ACGT".
  @override
  final String? referenceSeqString;

  /// [referenceSeqStringElement] Extensions for referenceSeqString
  @override
  @JsonKey(name: '_referenceSeqString')
  final PrimitiveElement? referenceSeqStringElement;

  /// [strand] An absolute reference to a strand. The Watson strand is the
  /// strand whose 5'-end is on the short arm of the chromosome, and the Crick
  ///  strand as the one whose 5'-end is on the long arm.
  @override
  final FhirCode? strand;

  /// [strandElement] Extensions for strand
  @override
  @JsonKey(name: '_strand')
  final PrimitiveElement? strandElement;

  /// [windowStart] Start position of the window on the reference sequence. If
  /// the coordinate system is either 0-based or 1-based, then start position is
  ///  inclusive.
  @override
  final FhirInteger? windowStart;

  /// [windowStartElement] Extensions for windowStart
  @override
  @JsonKey(name: '_windowStart')
  final PrimitiveElement? windowStartElement;

  /// [windowEnd] End position of the window on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  ///  inclusive and includes the last position.
  @override
  final FhirInteger? windowEnd;

  /// [windowEndElement] Extensions for windowEnd
  @override
  @JsonKey(name: '_windowEnd')
  final PrimitiveElement? windowEndElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceReferenceSeqImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.chromosome, chromosome) ||
                other.chromosome == chromosome) &&
            (identical(other.genomeBuild, genomeBuild) ||
                other.genomeBuild == genomeBuild) &&
            (identical(other.genomeBuildElement, genomeBuildElement) ||
                other.genomeBuildElement == genomeBuildElement) &&
            (identical(other.orientation, orientation) ||
                other.orientation == orientation) &&
            (identical(other.orientationElement, orientationElement) ||
                other.orientationElement == orientationElement) &&
            (identical(other.referenceSeqId, referenceSeqId) ||
                other.referenceSeqId == referenceSeqId) &&
            (identical(other.referenceSeqPointer, referenceSeqPointer) ||
                other.referenceSeqPointer == referenceSeqPointer) &&
            (identical(other.referenceSeqString, referenceSeqString) ||
                other.referenceSeqString == referenceSeqString) &&
            (identical(other.referenceSeqStringElement,
                    referenceSeqStringElement) ||
                other.referenceSeqStringElement == referenceSeqStringElement) &&
            (identical(other.strand, strand) || other.strand == strand) &&
            (identical(other.strandElement, strandElement) ||
                other.strandElement == strandElement) &&
            (identical(other.windowStart, windowStart) ||
                other.windowStart == windowStart) &&
            (identical(other.windowStartElement, windowStartElement) ||
                other.windowStartElement == windowStartElement) &&
            (identical(other.windowEnd, windowEnd) ||
                other.windowEnd == windowEnd) &&
            (identical(other.windowEndElement, windowEndElement) ||
                other.windowEndElement == windowEndElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      chromosome,
      genomeBuild,
      genomeBuildElement,
      orientation,
      orientationElement,
      referenceSeqId,
      referenceSeqPointer,
      referenceSeqString,
      referenceSeqStringElement,
      strand,
      strandElement,
      windowStart,
      windowStartElement,
      windowEnd,
      windowEndElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceReferenceSeqImplCopyWith<
          _$MolecularSequenceReferenceSeqImpl>
      get copyWith => __$$MolecularSequenceReferenceSeqImplCopyWithImpl<
          _$MolecularSequenceReferenceSeqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceReferenceSeqImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequenceReferenceSeq
    extends MolecularSequenceReferenceSeq {
  factory _MolecularSequenceReferenceSeq(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? chromosome,
      final String? genomeBuild,
      @JsonKey(name: '_genomeBuild') final PrimitiveElement? genomeBuildElement,
      final FhirCode? orientation,
      @JsonKey(name: '_orientation') final PrimitiveElement? orientationElement,
      final CodeableConcept? referenceSeqId,
      final Reference? referenceSeqPointer,
      final String? referenceSeqString,
      @JsonKey(name: '_referenceSeqString')
      final PrimitiveElement? referenceSeqStringElement,
      final FhirCode? strand,
      @JsonKey(name: '_strand') final PrimitiveElement? strandElement,
      final FhirInteger? windowStart,
      @JsonKey(name: '_windowStart') final PrimitiveElement? windowStartElement,
      final FhirInteger? windowEnd,
      @JsonKey(name: '_windowEnd')
      final PrimitiveElement?
          windowEndElement}) = _$MolecularSequenceReferenceSeqImpl;
  const _MolecularSequenceReferenceSeq._() : super._();

  factory _MolecularSequenceReferenceSeq.fromJson(Map<String, dynamic> json) =
      _$MolecularSequenceReferenceSeqImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [chromosome] Structural unit composed of a nucleic acid molecule which
  /// controls its own replication through the interaction of specific proteins
  /// at one or more origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  CodeableConcept? get chromosome;
  @override

  /// [genomeBuild] The Genome Build used for reference, following GRCh build
  /// versions e.g. 'GRCh 37'.  Version number must be included if a versioned
  ///  release of a primary build was used.
  String? get genomeBuild;
  @override

  /// [genomeBuildElement] Extensions for genomeBuild
  @JsonKey(name: '_genomeBuild')
  PrimitiveElement? get genomeBuildElement;
  @override

  /// [orientation] A relative reference to a DNA strand based on gene
  /// orientation. The strand that contains the open reading frame of the gene
  /// is the "sense" strand, and the opposite complementary strand is the
  ///  "antisense" strand.
  FhirCode? get orientation;
  @override

  /// [orientationElement] Extensions for orientation
  @JsonKey(name: '_orientation')
  PrimitiveElement? get orientationElement;
  @override

  /// [referenceSeqId] Reference identifier of reference sequence submitted to
  /// NCBI. It must match the type in the MolecularSequence.type field. For
  /// example, the prefix, “NG_” identifies reference sequence for genes, “NM_”
  ///  for messenger RNA transcripts, and “NP_” for amino acid sequences.
  CodeableConcept? get referenceSeqId;
  @override

  /// [referenceSeqPointer] A pointer to another MolecularSequence entity as
  ///  reference sequence.
  Reference? get referenceSeqPointer;
  @override

  /// [referenceSeqString] A string like "ACGT".
  String? get referenceSeqString;
  @override

  /// [referenceSeqStringElement] Extensions for referenceSeqString
  @JsonKey(name: '_referenceSeqString')
  PrimitiveElement? get referenceSeqStringElement;
  @override

  /// [strand] An absolute reference to a strand. The Watson strand is the
  /// strand whose 5'-end is on the short arm of the chromosome, and the Crick
  ///  strand as the one whose 5'-end is on the long arm.
  FhirCode? get strand;
  @override

  /// [strandElement] Extensions for strand
  @JsonKey(name: '_strand')
  PrimitiveElement? get strandElement;
  @override

  /// [windowStart] Start position of the window on the reference sequence. If
  /// the coordinate system is either 0-based or 1-based, then start position is
  ///  inclusive.
  FhirInteger? get windowStart;
  @override

  /// [windowStartElement] Extensions for windowStart
  @JsonKey(name: '_windowStart')
  PrimitiveElement? get windowStartElement;
  @override

  /// [windowEnd] End position of the window on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  ///  inclusive and includes the last position.
  FhirInteger? get windowEnd;
  @override

  /// [windowEndElement] Extensions for windowEnd
  @JsonKey(name: '_windowEnd')
  PrimitiveElement? get windowEndElement;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceReferenceSeqImplCopyWith<
          _$MolecularSequenceReferenceSeqImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MolecularSequenceVariant _$MolecularSequenceVariantFromJson(
    Map<String, dynamic> json) {
  return _MolecularSequenceVariant.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequenceVariant {
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

  /// [start] Start position of the variant on the  reference sequence. If the
  /// coordinate system is either 0-based or 1-based, then start position is
  ///  inclusive.
  FhirInteger? get start => throw _privateConstructorUsedError;

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  PrimitiveElement? get startElement => throw _privateConstructorUsedError;

  /// [end] End position of the variant on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  ///  inclusive and includes the last position.
  FhirInteger? get end => throw _privateConstructorUsedError;

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  PrimitiveElement? get endElement => throw _privateConstructorUsedError;

  /// [observedAllele] An allele is one of a set of coexisting sequence
  /// variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the observed  sequence. When the
  /// sequence  type is DNA, it should be the sequence on the positive (+)
  ///  strand. This will lay in the range between variant.start and variant.end.
  String? get observedAllele => throw _privateConstructorUsedError;

  /// [observedAlleleElement] Extensions for observedAllele
  @JsonKey(name: '_observedAllele')
  PrimitiveElement? get observedAlleleElement =>
      throw _privateConstructorUsedError;

  /// [referenceAllele] An allele is one of a set of coexisting sequence
  /// variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the reference sequence. When the
  /// sequence  type is DNA, it should be the sequence on the positive (+)
  ///  strand. This will lay in the range between variant.start and variant.end.
  String? get referenceAllele => throw _privateConstructorUsedError;

  /// [referenceAlleleElement] Extensions for referenceAllele
  @JsonKey(name: '_referenceAllele')
  PrimitiveElement? get referenceAlleleElement =>
      throw _privateConstructorUsedError;

  /// [cigar] Extended CIGAR string for aligning the sequence with reference
  /// bases. See detailed documentation
  /// (http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  String? get cigar => throw _privateConstructorUsedError;

  /// [cigarElement] Extensions for cigar
  @JsonKey(name: '_cigar')
  PrimitiveElement? get cigarElement => throw _privateConstructorUsedError;

  /// [variantPointer] A pointer to an Observation containing variant
  ///  information.
  Reference? get variantPointer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceVariantCopyWith<MolecularSequenceVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceVariantCopyWith<$Res> {
  factory $MolecularSequenceVariantCopyWith(MolecularSequenceVariant value,
          $Res Function(MolecularSequenceVariant) then) =
      _$MolecularSequenceVariantCopyWithImpl<$Res, MolecularSequenceVariant>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? start,
      @JsonKey(name: '_start') PrimitiveElement? startElement,
      FhirInteger? end,
      @JsonKey(name: '_end') PrimitiveElement? endElement,
      String? observedAllele,
      @JsonKey(name: '_observedAllele') PrimitiveElement? observedAlleleElement,
      String? referenceAllele,
      @JsonKey(name: '_referenceAllele')
      PrimitiveElement? referenceAlleleElement,
      String? cigar,
      @JsonKey(name: '_cigar') PrimitiveElement? cigarElement,
      Reference? variantPointer});

  $ReferenceCopyWith<$Res>? get variantPointer;
}

/// @nodoc
class _$MolecularSequenceVariantCopyWithImpl<$Res,
        $Val extends MolecularSequenceVariant>
    implements $MolecularSequenceVariantCopyWith<$Res> {
  _$MolecularSequenceVariantCopyWithImpl(this._value, this._then);

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
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
    Object? observedAllele = freezed,
    Object? observedAlleleElement = freezed,
    Object? referenceAllele = freezed,
    Object? referenceAlleleElement = freezed,
    Object? cigar = freezed,
    Object? cigarElement = freezed,
    Object? variantPointer = freezed,
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
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      observedAllele: freezed == observedAllele
          ? _value.observedAllele
          : observedAllele // ignore: cast_nullable_to_non_nullable
              as String?,
      observedAlleleElement: freezed == observedAlleleElement
          ? _value.observedAlleleElement
          : observedAlleleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      referenceAllele: freezed == referenceAllele
          ? _value.referenceAllele
          : referenceAllele // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceAlleleElement: freezed == referenceAlleleElement
          ? _value.referenceAlleleElement
          : referenceAlleleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      cigar: freezed == cigar
          ? _value.cigar
          : cigar // ignore: cast_nullable_to_non_nullable
              as String?,
      cigarElement: freezed == cigarElement
          ? _value.cigarElement
          : cigarElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variantPointer: freezed == variantPointer
          ? _value.variantPointer
          : variantPointer // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get variantPointer {
    if (_value.variantPointer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.variantPointer!, (value) {
      return _then(_value.copyWith(variantPointer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MolecularSequenceVariantImplCopyWith<$Res>
    implements $MolecularSequenceVariantCopyWith<$Res> {
  factory _$$MolecularSequenceVariantImplCopyWith(
          _$MolecularSequenceVariantImpl value,
          $Res Function(_$MolecularSequenceVariantImpl) then) =
      __$$MolecularSequenceVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? start,
      @JsonKey(name: '_start') PrimitiveElement? startElement,
      FhirInteger? end,
      @JsonKey(name: '_end') PrimitiveElement? endElement,
      String? observedAllele,
      @JsonKey(name: '_observedAllele') PrimitiveElement? observedAlleleElement,
      String? referenceAllele,
      @JsonKey(name: '_referenceAllele')
      PrimitiveElement? referenceAlleleElement,
      String? cigar,
      @JsonKey(name: '_cigar') PrimitiveElement? cigarElement,
      Reference? variantPointer});

  @override
  $ReferenceCopyWith<$Res>? get variantPointer;
}

/// @nodoc
class __$$MolecularSequenceVariantImplCopyWithImpl<$Res>
    extends _$MolecularSequenceVariantCopyWithImpl<$Res,
        _$MolecularSequenceVariantImpl>
    implements _$$MolecularSequenceVariantImplCopyWith<$Res> {
  __$$MolecularSequenceVariantImplCopyWithImpl(
      _$MolecularSequenceVariantImpl _value,
      $Res Function(_$MolecularSequenceVariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
    Object? observedAllele = freezed,
    Object? observedAlleleElement = freezed,
    Object? referenceAllele = freezed,
    Object? referenceAlleleElement = freezed,
    Object? cigar = freezed,
    Object? cigarElement = freezed,
    Object? variantPointer = freezed,
  }) {
    return _then(_$MolecularSequenceVariantImpl(
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
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      observedAllele: freezed == observedAllele
          ? _value.observedAllele
          : observedAllele // ignore: cast_nullable_to_non_nullable
              as String?,
      observedAlleleElement: freezed == observedAlleleElement
          ? _value.observedAlleleElement
          : observedAlleleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      referenceAllele: freezed == referenceAllele
          ? _value.referenceAllele
          : referenceAllele // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceAlleleElement: freezed == referenceAlleleElement
          ? _value.referenceAlleleElement
          : referenceAlleleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      cigar: freezed == cigar
          ? _value.cigar
          : cigar // ignore: cast_nullable_to_non_nullable
              as String?,
      cigarElement: freezed == cigarElement
          ? _value.cigarElement
          : cigarElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variantPointer: freezed == variantPointer
          ? _value.variantPointer
          : variantPointer // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceVariantImpl extends _MolecularSequenceVariant {
  const _$MolecularSequenceVariantImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.start,
      @JsonKey(name: '_start') this.startElement,
      this.end,
      @JsonKey(name: '_end') this.endElement,
      this.observedAllele,
      @JsonKey(name: '_observedAllele') this.observedAlleleElement,
      this.referenceAllele,
      @JsonKey(name: '_referenceAllele') this.referenceAlleleElement,
      this.cigar,
      @JsonKey(name: '_cigar') this.cigarElement,
      this.variantPointer})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MolecularSequenceVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$MolecularSequenceVariantImplFromJson(json);

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

  /// [start] Start position of the variant on the  reference sequence. If the
  /// coordinate system is either 0-based or 1-based, then start position is
  ///  inclusive.
  @override
  final FhirInteger? start;

  /// [startElement] Extensions for start
  @override
  @JsonKey(name: '_start')
  final PrimitiveElement? startElement;

  /// [end] End position of the variant on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  ///  inclusive and includes the last position.
  @override
  final FhirInteger? end;

  /// [endElement] Extensions for end
  @override
  @JsonKey(name: '_end')
  final PrimitiveElement? endElement;

  /// [observedAllele] An allele is one of a set of coexisting sequence
  /// variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the observed  sequence. When the
  /// sequence  type is DNA, it should be the sequence on the positive (+)
  ///  strand. This will lay in the range between variant.start and variant.end.
  @override
  final String? observedAllele;

  /// [observedAlleleElement] Extensions for observedAllele
  @override
  @JsonKey(name: '_observedAllele')
  final PrimitiveElement? observedAlleleElement;

  /// [referenceAllele] An allele is one of a set of coexisting sequence
  /// variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the reference sequence. When the
  /// sequence  type is DNA, it should be the sequence on the positive (+)
  ///  strand. This will lay in the range between variant.start and variant.end.
  @override
  final String? referenceAllele;

  /// [referenceAlleleElement] Extensions for referenceAllele
  @override
  @JsonKey(name: '_referenceAllele')
  final PrimitiveElement? referenceAlleleElement;

  /// [cigar] Extended CIGAR string for aligning the sequence with reference
  /// bases. See detailed documentation
  /// (http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  @override
  final String? cigar;

  /// [cigarElement] Extensions for cigar
  @override
  @JsonKey(name: '_cigar')
  final PrimitiveElement? cigarElement;

  /// [variantPointer] A pointer to an Observation containing variant
  ///  information.
  @override
  final Reference? variantPointer;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceVariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.startElement, startElement) ||
                other.startElement == startElement) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.endElement, endElement) ||
                other.endElement == endElement) &&
            (identical(other.observedAllele, observedAllele) ||
                other.observedAllele == observedAllele) &&
            (identical(other.observedAlleleElement, observedAlleleElement) ||
                other.observedAlleleElement == observedAlleleElement) &&
            (identical(other.referenceAllele, referenceAllele) ||
                other.referenceAllele == referenceAllele) &&
            (identical(other.referenceAlleleElement, referenceAlleleElement) ||
                other.referenceAlleleElement == referenceAlleleElement) &&
            (identical(other.cigar, cigar) || other.cigar == cigar) &&
            (identical(other.cigarElement, cigarElement) ||
                other.cigarElement == cigarElement) &&
            (identical(other.variantPointer, variantPointer) ||
                other.variantPointer == variantPointer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      start,
      startElement,
      end,
      endElement,
      observedAllele,
      observedAlleleElement,
      referenceAllele,
      referenceAlleleElement,
      cigar,
      cigarElement,
      variantPointer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceVariantImplCopyWith<_$MolecularSequenceVariantImpl>
      get copyWith => __$$MolecularSequenceVariantImplCopyWithImpl<
          _$MolecularSequenceVariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceVariantImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequenceVariant extends MolecularSequenceVariant {
  factory _MolecularSequenceVariant(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirInteger? start,
      @JsonKey(name: '_start') final PrimitiveElement? startElement,
      final FhirInteger? end,
      @JsonKey(name: '_end') final PrimitiveElement? endElement,
      final String? observedAllele,
      @JsonKey(name: '_observedAllele')
      final PrimitiveElement? observedAlleleElement,
      final String? referenceAllele,
      @JsonKey(name: '_referenceAllele')
      final PrimitiveElement? referenceAlleleElement,
      final String? cigar,
      @JsonKey(name: '_cigar') final PrimitiveElement? cigarElement,
      final Reference? variantPointer}) = _$MolecularSequenceVariantImpl;
  const _MolecularSequenceVariant._() : super._();

  factory _MolecularSequenceVariant.fromJson(Map<String, dynamic> json) =
      _$MolecularSequenceVariantImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [start] Start position of the variant on the  reference sequence. If the
  /// coordinate system is either 0-based or 1-based, then start position is
  ///  inclusive.
  FhirInteger? get start;
  @override

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  PrimitiveElement? get startElement;
  @override

  /// [end] End position of the variant on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  ///  inclusive and includes the last position.
  FhirInteger? get end;
  @override

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  PrimitiveElement? get endElement;
  @override

  /// [observedAllele] An allele is one of a set of coexisting sequence
  /// variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the observed  sequence. When the
  /// sequence  type is DNA, it should be the sequence on the positive (+)
  ///  strand. This will lay in the range between variant.start and variant.end.
  String? get observedAllele;
  @override

  /// [observedAlleleElement] Extensions for observedAllele
  @JsonKey(name: '_observedAllele')
  PrimitiveElement? get observedAlleleElement;
  @override

  /// [referenceAllele] An allele is one of a set of coexisting sequence
  /// variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the reference sequence. When the
  /// sequence  type is DNA, it should be the sequence on the positive (+)
  ///  strand. This will lay in the range between variant.start and variant.end.
  String? get referenceAllele;
  @override

  /// [referenceAlleleElement] Extensions for referenceAllele
  @JsonKey(name: '_referenceAllele')
  PrimitiveElement? get referenceAlleleElement;
  @override

  /// [cigar] Extended CIGAR string for aligning the sequence with reference
  /// bases. See detailed documentation
  /// (http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  String? get cigar;
  @override

  /// [cigarElement] Extensions for cigar
  @JsonKey(name: '_cigar')
  PrimitiveElement? get cigarElement;
  @override

  /// [variantPointer] A pointer to an Observation containing variant
  ///  information.
  Reference? get variantPointer;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceVariantImplCopyWith<_$MolecularSequenceVariantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MolecularSequenceQuality _$MolecularSequenceQualityFromJson(
    Map<String, dynamic> json) {
  return _MolecularSequenceQuality.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequenceQuality {
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

  /// [type] INDEL / SNP / Undefined variant.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [standardSequence] Gold standard sequence used for comparing against.
  CodeableConcept? get standardSequence => throw _privateConstructorUsedError;

  /// [start] Start position of the sequence. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  FhirInteger? get start => throw _privateConstructorUsedError;

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  PrimitiveElement? get startElement => throw _privateConstructorUsedError;

  /// [end] End position of the sequence. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  FhirInteger? get end => throw _privateConstructorUsedError;

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  PrimitiveElement? get endElement => throw _privateConstructorUsedError;

  /// [score] The score of an experimentally derived feature such as a p-value
  /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  Quantity? get score => throw _privateConstructorUsedError;

  /// [method] Which method is used to get sequence quality.
  CodeableConcept? get method => throw _privateConstructorUsedError;

  /// [truthTP] True positives, from the perspective of the truth data, i.e.
  /// the number of sites in the Truth Call Set for which there are paths
  /// through the Query Call Set that are consistent with all of the alleles at
  /// this site, and for which there is an accurate genotype call for the
  ///  event.
  FhirDecimal? get truthTP => throw _privateConstructorUsedError;

  /// [truthTPElement] Extensions for truthTP
  @JsonKey(name: '_truthTP')
  PrimitiveElement? get truthTPElement => throw _privateConstructorUsedError;

  /// [queryTP] True positives, from the perspective of the query data, i.e.
  /// the number of sites in the Query Call Set for which there are paths
  /// through the Truth Call Set that are consistent with all of the alleles at
  /// this site, and for which there is an accurate genotype call for the
  ///  event.
  FhirDecimal? get queryTP => throw _privateConstructorUsedError;

  /// [queryTPElement] Extensions for queryTP
  @JsonKey(name: '_queryTP')
  PrimitiveElement? get queryTPElement => throw _privateConstructorUsedError;

  /// [truthFN] False negatives, i.e. the number of sites in the Truth Call Set
  /// for which there is no path through the Query Call Set that is consistent
  /// with all of the alleles at this site, or sites for which there is an
  /// inaccurate genotype call for the event. Sites with correct variant but
  ///  incorrect genotype are counted here.
  FhirDecimal? get truthFN => throw _privateConstructorUsedError;

  /// [truthFNElement] Extensions for truthFN
  @JsonKey(name: '_truthFN')
  PrimitiveElement? get truthFNElement => throw _privateConstructorUsedError;

  /// [queryFP] False positives, i.e. the number of sites in the Query Call Set
  /// for which there is no path through the Truth Call Set that is consistent
  /// with this site. Sites with correct variant but incorrect genotype are
  ///  counted here.
  FhirDecimal? get queryFP => throw _privateConstructorUsedError;

  /// [queryFPElement] Extensions for queryFP
  @JsonKey(name: '_queryFP')
  PrimitiveElement? get queryFPElement => throw _privateConstructorUsedError;

  /// [gtFP] The number of false positives where the non-REF alleles in the
  /// Truth and Query Call Sets match (i.e. cases where the truth is 1/1 and the
  ///  query is 0/1 or similar).
  FhirDecimal? get gtFP => throw _privateConstructorUsedError;

  /// [gtFPElement] Extensions for gtFP
  @JsonKey(name: '_gtFP')
  PrimitiveElement? get gtFPElement => throw _privateConstructorUsedError;

  /// [precision] QUERY.TP / (QUERY.TP + QUERY.FP).
  FhirDecimal? get precision => throw _privateConstructorUsedError;

  /// [precisionElement] Extensions for precision
  @JsonKey(name: '_precision')
  PrimitiveElement? get precisionElement => throw _privateConstructorUsedError;

  /// [recall] TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  FhirDecimal? get recall => throw _privateConstructorUsedError;

  /// [recallElement] Extensions for recall
  @JsonKey(name: '_recall')
  PrimitiveElement? get recallElement => throw _privateConstructorUsedError;

  /// [fScore] Harmonic mean of Recall and Precision, computed as: 2 *
  ///  precision * recall / (precision + recall).
  FhirDecimal? get fScore => throw _privateConstructorUsedError;

  /// [fScoreElement] Extensions for fScore
  @JsonKey(name: '_fScore')
  PrimitiveElement? get fScoreElement => throw _privateConstructorUsedError;

  /// [roc] Receiver Operator Characteristic (ROC) Curve  to give
  ///  sensitivity/specificity tradeoff.
  MolecularSequenceRoc? get roc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceQualityCopyWith<MolecularSequenceQuality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceQualityCopyWith<$Res> {
  factory $MolecularSequenceQualityCopyWith(MolecularSequenceQuality value,
          $Res Function(MolecularSequenceQuality) then) =
      _$MolecularSequenceQualityCopyWithImpl<$Res, MolecularSequenceQuality>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      CodeableConcept? standardSequence,
      FhirInteger? start,
      @JsonKey(name: '_start') PrimitiveElement? startElement,
      FhirInteger? end,
      @JsonKey(name: '_end') PrimitiveElement? endElement,
      Quantity? score,
      CodeableConcept? method,
      FhirDecimal? truthTP,
      @JsonKey(name: '_truthTP') PrimitiveElement? truthTPElement,
      FhirDecimal? queryTP,
      @JsonKey(name: '_queryTP') PrimitiveElement? queryTPElement,
      FhirDecimal? truthFN,
      @JsonKey(name: '_truthFN') PrimitiveElement? truthFNElement,
      FhirDecimal? queryFP,
      @JsonKey(name: '_queryFP') PrimitiveElement? queryFPElement,
      FhirDecimal? gtFP,
      @JsonKey(name: '_gtFP') PrimitiveElement? gtFPElement,
      FhirDecimal? precision,
      @JsonKey(name: '_precision') PrimitiveElement? precisionElement,
      FhirDecimal? recall,
      @JsonKey(name: '_recall') PrimitiveElement? recallElement,
      FhirDecimal? fScore,
      @JsonKey(name: '_fScore') PrimitiveElement? fScoreElement,
      MolecularSequenceRoc? roc});

  $CodeableConceptCopyWith<$Res>? get standardSequence;
  $QuantityCopyWith<$Res>? get score;
  $CodeableConceptCopyWith<$Res>? get method;
  $MolecularSequenceRocCopyWith<$Res>? get roc;
}

/// @nodoc
class _$MolecularSequenceQualityCopyWithImpl<$Res,
        $Val extends MolecularSequenceQuality>
    implements $MolecularSequenceQualityCopyWith<$Res> {
  _$MolecularSequenceQualityCopyWithImpl(this._value, this._then);

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
    Object? typeElement = freezed,
    Object? standardSequence = freezed,
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
    Object? score = freezed,
    Object? method = freezed,
    Object? truthTP = freezed,
    Object? truthTPElement = freezed,
    Object? queryTP = freezed,
    Object? queryTPElement = freezed,
    Object? truthFN = freezed,
    Object? truthFNElement = freezed,
    Object? queryFP = freezed,
    Object? queryFPElement = freezed,
    Object? gtFP = freezed,
    Object? gtFPElement = freezed,
    Object? precision = freezed,
    Object? precisionElement = freezed,
    Object? recall = freezed,
    Object? recallElement = freezed,
    Object? fScore = freezed,
    Object? fScoreElement = freezed,
    Object? roc = freezed,
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
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      standardSequence: freezed == standardSequence
          ? _value.standardSequence
          : standardSequence // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      truthTP: freezed == truthTP
          ? _value.truthTP
          : truthTP // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      truthTPElement: freezed == truthTPElement
          ? _value.truthTPElement
          : truthTPElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      queryTP: freezed == queryTP
          ? _value.queryTP
          : queryTP // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      queryTPElement: freezed == queryTPElement
          ? _value.queryTPElement
          : queryTPElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      truthFN: freezed == truthFN
          ? _value.truthFN
          : truthFN // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      truthFNElement: freezed == truthFNElement
          ? _value.truthFNElement
          : truthFNElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      queryFP: freezed == queryFP
          ? _value.queryFP
          : queryFP // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      queryFPElement: freezed == queryFPElement
          ? _value.queryFPElement
          : queryFPElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      gtFP: freezed == gtFP
          ? _value.gtFP
          : gtFP // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      gtFPElement: freezed == gtFPElement
          ? _value.gtFPElement
          : gtFPElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      precisionElement: freezed == precisionElement
          ? _value.precisionElement
          : precisionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recall: freezed == recall
          ? _value.recall
          : recall // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      recallElement: freezed == recallElement
          ? _value.recallElement
          : recallElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fScore: freezed == fScore
          ? _value.fScore
          : fScore // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      fScoreElement: freezed == fScoreElement
          ? _value.fScoreElement
          : fScoreElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      roc: freezed == roc
          ? _value.roc
          : roc // ignore: cast_nullable_to_non_nullable
              as MolecularSequenceRoc?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get standardSequence {
    if (_value.standardSequence == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.standardSequence!, (value) {
      return _then(_value.copyWith(standardSequence: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get score {
    if (_value.score == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.score!, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MolecularSequenceRocCopyWith<$Res>? get roc {
    if (_value.roc == null) {
      return null;
    }

    return $MolecularSequenceRocCopyWith<$Res>(_value.roc!, (value) {
      return _then(_value.copyWith(roc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MolecularSequenceQualityImplCopyWith<$Res>
    implements $MolecularSequenceQualityCopyWith<$Res> {
  factory _$$MolecularSequenceQualityImplCopyWith(
          _$MolecularSequenceQualityImpl value,
          $Res Function(_$MolecularSequenceQualityImpl) then) =
      __$$MolecularSequenceQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      CodeableConcept? standardSequence,
      FhirInteger? start,
      @JsonKey(name: '_start') PrimitiveElement? startElement,
      FhirInteger? end,
      @JsonKey(name: '_end') PrimitiveElement? endElement,
      Quantity? score,
      CodeableConcept? method,
      FhirDecimal? truthTP,
      @JsonKey(name: '_truthTP') PrimitiveElement? truthTPElement,
      FhirDecimal? queryTP,
      @JsonKey(name: '_queryTP') PrimitiveElement? queryTPElement,
      FhirDecimal? truthFN,
      @JsonKey(name: '_truthFN') PrimitiveElement? truthFNElement,
      FhirDecimal? queryFP,
      @JsonKey(name: '_queryFP') PrimitiveElement? queryFPElement,
      FhirDecimal? gtFP,
      @JsonKey(name: '_gtFP') PrimitiveElement? gtFPElement,
      FhirDecimal? precision,
      @JsonKey(name: '_precision') PrimitiveElement? precisionElement,
      FhirDecimal? recall,
      @JsonKey(name: '_recall') PrimitiveElement? recallElement,
      FhirDecimal? fScore,
      @JsonKey(name: '_fScore') PrimitiveElement? fScoreElement,
      MolecularSequenceRoc? roc});

  @override
  $CodeableConceptCopyWith<$Res>? get standardSequence;
  @override
  $QuantityCopyWith<$Res>? get score;
  @override
  $CodeableConceptCopyWith<$Res>? get method;
  @override
  $MolecularSequenceRocCopyWith<$Res>? get roc;
}

/// @nodoc
class __$$MolecularSequenceQualityImplCopyWithImpl<$Res>
    extends _$MolecularSequenceQualityCopyWithImpl<$Res,
        _$MolecularSequenceQualityImpl>
    implements _$$MolecularSequenceQualityImplCopyWith<$Res> {
  __$$MolecularSequenceQualityImplCopyWithImpl(
      _$MolecularSequenceQualityImpl _value,
      $Res Function(_$MolecularSequenceQualityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? standardSequence = freezed,
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
    Object? score = freezed,
    Object? method = freezed,
    Object? truthTP = freezed,
    Object? truthTPElement = freezed,
    Object? queryTP = freezed,
    Object? queryTPElement = freezed,
    Object? truthFN = freezed,
    Object? truthFNElement = freezed,
    Object? queryFP = freezed,
    Object? queryFPElement = freezed,
    Object? gtFP = freezed,
    Object? gtFPElement = freezed,
    Object? precision = freezed,
    Object? precisionElement = freezed,
    Object? recall = freezed,
    Object? recallElement = freezed,
    Object? fScore = freezed,
    Object? fScoreElement = freezed,
    Object? roc = freezed,
  }) {
    return _then(_$MolecularSequenceQualityImpl(
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
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      standardSequence: freezed == standardSequence
          ? _value.standardSequence
          : standardSequence // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      truthTP: freezed == truthTP
          ? _value.truthTP
          : truthTP // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      truthTPElement: freezed == truthTPElement
          ? _value.truthTPElement
          : truthTPElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      queryTP: freezed == queryTP
          ? _value.queryTP
          : queryTP // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      queryTPElement: freezed == queryTPElement
          ? _value.queryTPElement
          : queryTPElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      truthFN: freezed == truthFN
          ? _value.truthFN
          : truthFN // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      truthFNElement: freezed == truthFNElement
          ? _value.truthFNElement
          : truthFNElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      queryFP: freezed == queryFP
          ? _value.queryFP
          : queryFP // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      queryFPElement: freezed == queryFPElement
          ? _value.queryFPElement
          : queryFPElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      gtFP: freezed == gtFP
          ? _value.gtFP
          : gtFP // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      gtFPElement: freezed == gtFPElement
          ? _value.gtFPElement
          : gtFPElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      precisionElement: freezed == precisionElement
          ? _value.precisionElement
          : precisionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      recall: freezed == recall
          ? _value.recall
          : recall // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      recallElement: freezed == recallElement
          ? _value.recallElement
          : recallElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      fScore: freezed == fScore
          ? _value.fScore
          : fScore // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      fScoreElement: freezed == fScoreElement
          ? _value.fScoreElement
          : fScoreElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      roc: freezed == roc
          ? _value.roc
          : roc // ignore: cast_nullable_to_non_nullable
              as MolecularSequenceRoc?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceQualityImpl extends _MolecularSequenceQuality {
  const _$MolecularSequenceQualityImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.standardSequence,
      this.start,
      @JsonKey(name: '_start') this.startElement,
      this.end,
      @JsonKey(name: '_end') this.endElement,
      this.score,
      this.method,
      this.truthTP,
      @JsonKey(name: '_truthTP') this.truthTPElement,
      this.queryTP,
      @JsonKey(name: '_queryTP') this.queryTPElement,
      this.truthFN,
      @JsonKey(name: '_truthFN') this.truthFNElement,
      this.queryFP,
      @JsonKey(name: '_queryFP') this.queryFPElement,
      this.gtFP,
      @JsonKey(name: '_gtFP') this.gtFPElement,
      this.precision,
      @JsonKey(name: '_precision') this.precisionElement,
      this.recall,
      @JsonKey(name: '_recall') this.recallElement,
      this.fScore,
      @JsonKey(name: '_fScore') this.fScoreElement,
      this.roc})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MolecularSequenceQualityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MolecularSequenceQualityImplFromJson(json);

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

  /// [type] INDEL / SNP / Undefined variant.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [standardSequence] Gold standard sequence used for comparing against.
  @override
  final CodeableConcept? standardSequence;

  /// [start] Start position of the sequence. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  @override
  final FhirInteger? start;

  /// [startElement] Extensions for start
  @override
  @JsonKey(name: '_start')
  final PrimitiveElement? startElement;

  /// [end] End position of the sequence. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  @override
  final FhirInteger? end;

  /// [endElement] Extensions for end
  @override
  @JsonKey(name: '_end')
  final PrimitiveElement? endElement;

  /// [score] The score of an experimentally derived feature such as a p-value
  /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  @override
  final Quantity? score;

  /// [method] Which method is used to get sequence quality.
  @override
  final CodeableConcept? method;

  /// [truthTP] True positives, from the perspective of the truth data, i.e.
  /// the number of sites in the Truth Call Set for which there are paths
  /// through the Query Call Set that are consistent with all of the alleles at
  /// this site, and for which there is an accurate genotype call for the
  ///  event.
  @override
  final FhirDecimal? truthTP;

  /// [truthTPElement] Extensions for truthTP
  @override
  @JsonKey(name: '_truthTP')
  final PrimitiveElement? truthTPElement;

  /// [queryTP] True positives, from the perspective of the query data, i.e.
  /// the number of sites in the Query Call Set for which there are paths
  /// through the Truth Call Set that are consistent with all of the alleles at
  /// this site, and for which there is an accurate genotype call for the
  ///  event.
  @override
  final FhirDecimal? queryTP;

  /// [queryTPElement] Extensions for queryTP
  @override
  @JsonKey(name: '_queryTP')
  final PrimitiveElement? queryTPElement;

  /// [truthFN] False negatives, i.e. the number of sites in the Truth Call Set
  /// for which there is no path through the Query Call Set that is consistent
  /// with all of the alleles at this site, or sites for which there is an
  /// inaccurate genotype call for the event. Sites with correct variant but
  ///  incorrect genotype are counted here.
  @override
  final FhirDecimal? truthFN;

  /// [truthFNElement] Extensions for truthFN
  @override
  @JsonKey(name: '_truthFN')
  final PrimitiveElement? truthFNElement;

  /// [queryFP] False positives, i.e. the number of sites in the Query Call Set
  /// for which there is no path through the Truth Call Set that is consistent
  /// with this site. Sites with correct variant but incorrect genotype are
  ///  counted here.
  @override
  final FhirDecimal? queryFP;

  /// [queryFPElement] Extensions for queryFP
  @override
  @JsonKey(name: '_queryFP')
  final PrimitiveElement? queryFPElement;

  /// [gtFP] The number of false positives where the non-REF alleles in the
  /// Truth and Query Call Sets match (i.e. cases where the truth is 1/1 and the
  ///  query is 0/1 or similar).
  @override
  final FhirDecimal? gtFP;

  /// [gtFPElement] Extensions for gtFP
  @override
  @JsonKey(name: '_gtFP')
  final PrimitiveElement? gtFPElement;

  /// [precision] QUERY.TP / (QUERY.TP + QUERY.FP).
  @override
  final FhirDecimal? precision;

  /// [precisionElement] Extensions for precision
  @override
  @JsonKey(name: '_precision')
  final PrimitiveElement? precisionElement;

  /// [recall] TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  @override
  final FhirDecimal? recall;

  /// [recallElement] Extensions for recall
  @override
  @JsonKey(name: '_recall')
  final PrimitiveElement? recallElement;

  /// [fScore] Harmonic mean of Recall and Precision, computed as: 2 *
  ///  precision * recall / (precision + recall).
  @override
  final FhirDecimal? fScore;

  /// [fScoreElement] Extensions for fScore
  @override
  @JsonKey(name: '_fScore')
  final PrimitiveElement? fScoreElement;

  /// [roc] Receiver Operator Characteristic (ROC) Curve  to give
  ///  sensitivity/specificity tradeoff.
  @override
  final MolecularSequenceRoc? roc;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceQualityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.standardSequence, standardSequence) ||
                other.standardSequence == standardSequence) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.startElement, startElement) ||
                other.startElement == startElement) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.endElement, endElement) ||
                other.endElement == endElement) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.truthTP, truthTP) || other.truthTP == truthTP) &&
            (identical(other.truthTPElement, truthTPElement) ||
                other.truthTPElement == truthTPElement) &&
            (identical(other.queryTP, queryTP) || other.queryTP == queryTP) &&
            (identical(other.queryTPElement, queryTPElement) ||
                other.queryTPElement == queryTPElement) &&
            (identical(other.truthFN, truthFN) || other.truthFN == truthFN) &&
            (identical(other.truthFNElement, truthFNElement) ||
                other.truthFNElement == truthFNElement) &&
            (identical(other.queryFP, queryFP) || other.queryFP == queryFP) &&
            (identical(other.queryFPElement, queryFPElement) ||
                other.queryFPElement == queryFPElement) &&
            (identical(other.gtFP, gtFP) || other.gtFP == gtFP) &&
            (identical(other.gtFPElement, gtFPElement) ||
                other.gtFPElement == gtFPElement) &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            (identical(other.precisionElement, precisionElement) ||
                other.precisionElement == precisionElement) &&
            (identical(other.recall, recall) || other.recall == recall) &&
            (identical(other.recallElement, recallElement) ||
                other.recallElement == recallElement) &&
            (identical(other.fScore, fScore) || other.fScore == fScore) &&
            (identical(other.fScoreElement, fScoreElement) ||
                other.fScoreElement == fScoreElement) &&
            (identical(other.roc, roc) || other.roc == roc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        type,
        typeElement,
        standardSequence,
        start,
        startElement,
        end,
        endElement,
        score,
        method,
        truthTP,
        truthTPElement,
        queryTP,
        queryTPElement,
        truthFN,
        truthFNElement,
        queryFP,
        queryFPElement,
        gtFP,
        gtFPElement,
        precision,
        precisionElement,
        recall,
        recallElement,
        fScore,
        fScoreElement,
        roc
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceQualityImplCopyWith<_$MolecularSequenceQualityImpl>
      get copyWith => __$$MolecularSequenceQualityImplCopyWithImpl<
          _$MolecularSequenceQualityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceQualityImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequenceQuality extends MolecularSequenceQuality {
  factory _MolecularSequenceQuality(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final CodeableConcept? standardSequence,
      final FhirInteger? start,
      @JsonKey(name: '_start') final PrimitiveElement? startElement,
      final FhirInteger? end,
      @JsonKey(name: '_end') final PrimitiveElement? endElement,
      final Quantity? score,
      final CodeableConcept? method,
      final FhirDecimal? truthTP,
      @JsonKey(name: '_truthTP') final PrimitiveElement? truthTPElement,
      final FhirDecimal? queryTP,
      @JsonKey(name: '_queryTP') final PrimitiveElement? queryTPElement,
      final FhirDecimal? truthFN,
      @JsonKey(name: '_truthFN') final PrimitiveElement? truthFNElement,
      final FhirDecimal? queryFP,
      @JsonKey(name: '_queryFP') final PrimitiveElement? queryFPElement,
      final FhirDecimal? gtFP,
      @JsonKey(name: '_gtFP') final PrimitiveElement? gtFPElement,
      final FhirDecimal? precision,
      @JsonKey(name: '_precision') final PrimitiveElement? precisionElement,
      final FhirDecimal? recall,
      @JsonKey(name: '_recall') final PrimitiveElement? recallElement,
      final FhirDecimal? fScore,
      @JsonKey(name: '_fScore') final PrimitiveElement? fScoreElement,
      final MolecularSequenceRoc? roc}) = _$MolecularSequenceQualityImpl;
  const _MolecularSequenceQuality._() : super._();

  factory _MolecularSequenceQuality.fromJson(Map<String, dynamic> json) =
      _$MolecularSequenceQualityImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] INDEL / SNP / Undefined variant.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [standardSequence] Gold standard sequence used for comparing against.
  CodeableConcept? get standardSequence;
  @override

  /// [start] Start position of the sequence. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  FhirInteger? get start;
  @override

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  PrimitiveElement? get startElement;
  @override

  /// [end] End position of the sequence. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  FhirInteger? get end;
  @override

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  PrimitiveElement? get endElement;
  @override

  /// [score] The score of an experimentally derived feature such as a p-value
  /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  Quantity? get score;
  @override

  /// [method] Which method is used to get sequence quality.
  CodeableConcept? get method;
  @override

  /// [truthTP] True positives, from the perspective of the truth data, i.e.
  /// the number of sites in the Truth Call Set for which there are paths
  /// through the Query Call Set that are consistent with all of the alleles at
  /// this site, and for which there is an accurate genotype call for the
  ///  event.
  FhirDecimal? get truthTP;
  @override

  /// [truthTPElement] Extensions for truthTP
  @JsonKey(name: '_truthTP')
  PrimitiveElement? get truthTPElement;
  @override

  /// [queryTP] True positives, from the perspective of the query data, i.e.
  /// the number of sites in the Query Call Set for which there are paths
  /// through the Truth Call Set that are consistent with all of the alleles at
  /// this site, and for which there is an accurate genotype call for the
  ///  event.
  FhirDecimal? get queryTP;
  @override

  /// [queryTPElement] Extensions for queryTP
  @JsonKey(name: '_queryTP')
  PrimitiveElement? get queryTPElement;
  @override

  /// [truthFN] False negatives, i.e. the number of sites in the Truth Call Set
  /// for which there is no path through the Query Call Set that is consistent
  /// with all of the alleles at this site, or sites for which there is an
  /// inaccurate genotype call for the event. Sites with correct variant but
  ///  incorrect genotype are counted here.
  FhirDecimal? get truthFN;
  @override

  /// [truthFNElement] Extensions for truthFN
  @JsonKey(name: '_truthFN')
  PrimitiveElement? get truthFNElement;
  @override

  /// [queryFP] False positives, i.e. the number of sites in the Query Call Set
  /// for which there is no path through the Truth Call Set that is consistent
  /// with this site. Sites with correct variant but incorrect genotype are
  ///  counted here.
  FhirDecimal? get queryFP;
  @override

  /// [queryFPElement] Extensions for queryFP
  @JsonKey(name: '_queryFP')
  PrimitiveElement? get queryFPElement;
  @override

  /// [gtFP] The number of false positives where the non-REF alleles in the
  /// Truth and Query Call Sets match (i.e. cases where the truth is 1/1 and the
  ///  query is 0/1 or similar).
  FhirDecimal? get gtFP;
  @override

  /// [gtFPElement] Extensions for gtFP
  @JsonKey(name: '_gtFP')
  PrimitiveElement? get gtFPElement;
  @override

  /// [precision] QUERY.TP / (QUERY.TP + QUERY.FP).
  FhirDecimal? get precision;
  @override

  /// [precisionElement] Extensions for precision
  @JsonKey(name: '_precision')
  PrimitiveElement? get precisionElement;
  @override

  /// [recall] TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  FhirDecimal? get recall;
  @override

  /// [recallElement] Extensions for recall
  @JsonKey(name: '_recall')
  PrimitiveElement? get recallElement;
  @override

  /// [fScore] Harmonic mean of Recall and Precision, computed as: 2 *
  ///  precision * recall / (precision + recall).
  FhirDecimal? get fScore;
  @override

  /// [fScoreElement] Extensions for fScore
  @JsonKey(name: '_fScore')
  PrimitiveElement? get fScoreElement;
  @override

  /// [roc] Receiver Operator Characteristic (ROC) Curve  to give
  ///  sensitivity/specificity tradeoff.
  MolecularSequenceRoc? get roc;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceQualityImplCopyWith<_$MolecularSequenceQualityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MolecularSequenceRoc _$MolecularSequenceRocFromJson(Map<String, dynamic> json) {
  return _MolecularSequenceRoc.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequenceRoc {
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

  /// [score] Invidual data point representing the GQ (genotype quality) score
  ///  threshold.
  List<FhirInteger>? get score => throw _privateConstructorUsedError;

  /// [scoreElement] Extensions for score
  @JsonKey(name: '_score')
  List<PrimitiveElement>? get scoreElement =>
      throw _privateConstructorUsedError;

  /// [numTP] The number of true positives if the GQ score threshold was set to
  ///  "score" field value.
  List<FhirInteger>? get numTP => throw _privateConstructorUsedError;

  /// [numTPElement] Extensions for numTP
  @JsonKey(name: '_numTP')
  List<PrimitiveElement>? get numTPElement =>
      throw _privateConstructorUsedError;

  /// [numFP] The number of false positives if the GQ score threshold was set
  ///  to "score" field value.
  List<FhirInteger>? get numFP => throw _privateConstructorUsedError;

  /// [numFPElement] Extensions for numFP
  @JsonKey(name: '_numFP')
  List<PrimitiveElement>? get numFPElement =>
      throw _privateConstructorUsedError;

  /// [numFN] The number of false negatives if the GQ score threshold was set
  ///  to "score" field value.
  List<FhirInteger>? get numFN => throw _privateConstructorUsedError;

  /// [numFNElement] Extensions for numFN
  @JsonKey(name: '_numFN')
  List<PrimitiveElement>? get numFNElement =>
      throw _privateConstructorUsedError;

  /// [precision] Calculated precision if the GQ score threshold was set to
  ///  "score" field value.
  List<FhirDecimal>? get precision => throw _privateConstructorUsedError;

  /// [precisionElement] Extensions for precision
  @JsonKey(name: '_precision')
  List<PrimitiveElement>? get precisionElement =>
      throw _privateConstructorUsedError;

  /// [sensitivity] Calculated sensitivity if the GQ score threshold was set to
  ///  "score" field value.
  List<FhirDecimal>? get sensitivity => throw _privateConstructorUsedError;

  /// [sensitivityElement] Extensions for sensitivity
  @JsonKey(name: '_sensitivity')
  List<PrimitiveElement>? get sensitivityElement =>
      throw _privateConstructorUsedError;

  /// [fMeasure] Calculated fScore if the GQ score threshold was set to "score"
  ///  field value.
  List<FhirDecimal>? get fMeasure => throw _privateConstructorUsedError;

  /// [fMeasureElement] Extensions for fMeasure
  @JsonKey(name: '_fMeasure')
  List<PrimitiveElement>? get fMeasureElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceRocCopyWith<MolecularSequenceRoc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceRocCopyWith<$Res> {
  factory $MolecularSequenceRocCopyWith(MolecularSequenceRoc value,
          $Res Function(MolecularSequenceRoc) then) =
      _$MolecularSequenceRocCopyWithImpl<$Res, MolecularSequenceRoc>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirInteger>? score,
      @JsonKey(name: '_score') List<PrimitiveElement>? scoreElement,
      List<FhirInteger>? numTP,
      @JsonKey(name: '_numTP') List<PrimitiveElement>? numTPElement,
      List<FhirInteger>? numFP,
      @JsonKey(name: '_numFP') List<PrimitiveElement>? numFPElement,
      List<FhirInteger>? numFN,
      @JsonKey(name: '_numFN') List<PrimitiveElement>? numFNElement,
      List<FhirDecimal>? precision,
      @JsonKey(name: '_precision') List<PrimitiveElement>? precisionElement,
      List<FhirDecimal>? sensitivity,
      @JsonKey(name: '_sensitivity') List<PrimitiveElement>? sensitivityElement,
      List<FhirDecimal>? fMeasure,
      @JsonKey(name: '_fMeasure') List<PrimitiveElement>? fMeasureElement});
}

/// @nodoc
class _$MolecularSequenceRocCopyWithImpl<$Res,
        $Val extends MolecularSequenceRoc>
    implements $MolecularSequenceRocCopyWith<$Res> {
  _$MolecularSequenceRocCopyWithImpl(this._value, this._then);

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
    Object? score = freezed,
    Object? scoreElement = freezed,
    Object? numTP = freezed,
    Object? numTPElement = freezed,
    Object? numFP = freezed,
    Object? numFPElement = freezed,
    Object? numFN = freezed,
    Object? numFNElement = freezed,
    Object? precision = freezed,
    Object? precisionElement = freezed,
    Object? sensitivity = freezed,
    Object? sensitivityElement = freezed,
    Object? fMeasure = freezed,
    Object? fMeasureElement = freezed,
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
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<FhirInteger>?,
      scoreElement: freezed == scoreElement
          ? _value.scoreElement
          : scoreElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      numTP: freezed == numTP
          ? _value.numTP
          : numTP // ignore: cast_nullable_to_non_nullable
              as List<FhirInteger>?,
      numTPElement: freezed == numTPElement
          ? _value.numTPElement
          : numTPElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      numFP: freezed == numFP
          ? _value.numFP
          : numFP // ignore: cast_nullable_to_non_nullable
              as List<FhirInteger>?,
      numFPElement: freezed == numFPElement
          ? _value.numFPElement
          : numFPElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      numFN: freezed == numFN
          ? _value.numFN
          : numFN // ignore: cast_nullable_to_non_nullable
              as List<FhirInteger>?,
      numFNElement: freezed == numFNElement
          ? _value.numFNElement
          : numFNElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as List<FhirDecimal>?,
      precisionElement: freezed == precisionElement
          ? _value.precisionElement
          : precisionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      sensitivity: freezed == sensitivity
          ? _value.sensitivity
          : sensitivity // ignore: cast_nullable_to_non_nullable
              as List<FhirDecimal>?,
      sensitivityElement: freezed == sensitivityElement
          ? _value.sensitivityElement
          : sensitivityElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      fMeasure: freezed == fMeasure
          ? _value.fMeasure
          : fMeasure // ignore: cast_nullable_to_non_nullable
              as List<FhirDecimal>?,
      fMeasureElement: freezed == fMeasureElement
          ? _value.fMeasureElement
          : fMeasureElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MolecularSequenceRocImplCopyWith<$Res>
    implements $MolecularSequenceRocCopyWith<$Res> {
  factory _$$MolecularSequenceRocImplCopyWith(_$MolecularSequenceRocImpl value,
          $Res Function(_$MolecularSequenceRocImpl) then) =
      __$$MolecularSequenceRocImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirInteger>? score,
      @JsonKey(name: '_score') List<PrimitiveElement>? scoreElement,
      List<FhirInteger>? numTP,
      @JsonKey(name: '_numTP') List<PrimitiveElement>? numTPElement,
      List<FhirInteger>? numFP,
      @JsonKey(name: '_numFP') List<PrimitiveElement>? numFPElement,
      List<FhirInteger>? numFN,
      @JsonKey(name: '_numFN') List<PrimitiveElement>? numFNElement,
      List<FhirDecimal>? precision,
      @JsonKey(name: '_precision') List<PrimitiveElement>? precisionElement,
      List<FhirDecimal>? sensitivity,
      @JsonKey(name: '_sensitivity') List<PrimitiveElement>? sensitivityElement,
      List<FhirDecimal>? fMeasure,
      @JsonKey(name: '_fMeasure') List<PrimitiveElement>? fMeasureElement});
}

/// @nodoc
class __$$MolecularSequenceRocImplCopyWithImpl<$Res>
    extends _$MolecularSequenceRocCopyWithImpl<$Res, _$MolecularSequenceRocImpl>
    implements _$$MolecularSequenceRocImplCopyWith<$Res> {
  __$$MolecularSequenceRocImplCopyWithImpl(_$MolecularSequenceRocImpl _value,
      $Res Function(_$MolecularSequenceRocImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? score = freezed,
    Object? scoreElement = freezed,
    Object? numTP = freezed,
    Object? numTPElement = freezed,
    Object? numFP = freezed,
    Object? numFPElement = freezed,
    Object? numFN = freezed,
    Object? numFNElement = freezed,
    Object? precision = freezed,
    Object? precisionElement = freezed,
    Object? sensitivity = freezed,
    Object? sensitivityElement = freezed,
    Object? fMeasure = freezed,
    Object? fMeasureElement = freezed,
  }) {
    return _then(_$MolecularSequenceRocImpl(
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
      score: freezed == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as List<FhirInteger>?,
      scoreElement: freezed == scoreElement
          ? _value._scoreElement
          : scoreElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      numTP: freezed == numTP
          ? _value._numTP
          : numTP // ignore: cast_nullable_to_non_nullable
              as List<FhirInteger>?,
      numTPElement: freezed == numTPElement
          ? _value._numTPElement
          : numTPElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      numFP: freezed == numFP
          ? _value._numFP
          : numFP // ignore: cast_nullable_to_non_nullable
              as List<FhirInteger>?,
      numFPElement: freezed == numFPElement
          ? _value._numFPElement
          : numFPElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      numFN: freezed == numFN
          ? _value._numFN
          : numFN // ignore: cast_nullable_to_non_nullable
              as List<FhirInteger>?,
      numFNElement: freezed == numFNElement
          ? _value._numFNElement
          : numFNElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      precision: freezed == precision
          ? _value._precision
          : precision // ignore: cast_nullable_to_non_nullable
              as List<FhirDecimal>?,
      precisionElement: freezed == precisionElement
          ? _value._precisionElement
          : precisionElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      sensitivity: freezed == sensitivity
          ? _value._sensitivity
          : sensitivity // ignore: cast_nullable_to_non_nullable
              as List<FhirDecimal>?,
      sensitivityElement: freezed == sensitivityElement
          ? _value._sensitivityElement
          : sensitivityElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      fMeasure: freezed == fMeasure
          ? _value._fMeasure
          : fMeasure // ignore: cast_nullable_to_non_nullable
              as List<FhirDecimal>?,
      fMeasureElement: freezed == fMeasureElement
          ? _value._fMeasureElement
          : fMeasureElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceRocImpl extends _MolecularSequenceRoc {
  const _$MolecularSequenceRocImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirInteger>? score,
      @JsonKey(name: '_score') final List<PrimitiveElement>? scoreElement,
      final List<FhirInteger>? numTP,
      @JsonKey(name: '_numTP') final List<PrimitiveElement>? numTPElement,
      final List<FhirInteger>? numFP,
      @JsonKey(name: '_numFP') final List<PrimitiveElement>? numFPElement,
      final List<FhirInteger>? numFN,
      @JsonKey(name: '_numFN') final List<PrimitiveElement>? numFNElement,
      final List<FhirDecimal>? precision,
      @JsonKey(name: '_precision')
      final List<PrimitiveElement>? precisionElement,
      final List<FhirDecimal>? sensitivity,
      @JsonKey(name: '_sensitivity')
      final List<PrimitiveElement>? sensitivityElement,
      final List<FhirDecimal>? fMeasure,
      @JsonKey(name: '_fMeasure')
      final List<PrimitiveElement>? fMeasureElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _score = score,
        _scoreElement = scoreElement,
        _numTP = numTP,
        _numTPElement = numTPElement,
        _numFP = numFP,
        _numFPElement = numFPElement,
        _numFN = numFN,
        _numFNElement = numFNElement,
        _precision = precision,
        _precisionElement = precisionElement,
        _sensitivity = sensitivity,
        _sensitivityElement = sensitivityElement,
        _fMeasure = fMeasure,
        _fMeasureElement = fMeasureElement,
        super._();

  factory _$MolecularSequenceRocImpl.fromJson(Map<String, dynamic> json) =>
      _$$MolecularSequenceRocImplFromJson(json);

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

  /// [score] Invidual data point representing the GQ (genotype quality) score
  ///  threshold.
  final List<FhirInteger>? _score;

  /// [score] Invidual data point representing the GQ (genotype quality) score
  ///  threshold.
  @override
  List<FhirInteger>? get score {
    final value = _score;
    if (value == null) return null;
    if (_score is EqualUnmodifiableListView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [scoreElement] Extensions for score
  final List<PrimitiveElement>? _scoreElement;

  /// [scoreElement] Extensions for score
  @override
  @JsonKey(name: '_score')
  List<PrimitiveElement>? get scoreElement {
    final value = _scoreElement;
    if (value == null) return null;
    if (_scoreElement is EqualUnmodifiableListView) return _scoreElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numTP] The number of true positives if the GQ score threshold was set to
  ///  "score" field value.
  final List<FhirInteger>? _numTP;

  /// [numTP] The number of true positives if the GQ score threshold was set to
  ///  "score" field value.
  @override
  List<FhirInteger>? get numTP {
    final value = _numTP;
    if (value == null) return null;
    if (_numTP is EqualUnmodifiableListView) return _numTP;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numTPElement] Extensions for numTP
  final List<PrimitiveElement>? _numTPElement;

  /// [numTPElement] Extensions for numTP
  @override
  @JsonKey(name: '_numTP')
  List<PrimitiveElement>? get numTPElement {
    final value = _numTPElement;
    if (value == null) return null;
    if (_numTPElement is EqualUnmodifiableListView) return _numTPElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numFP] The number of false positives if the GQ score threshold was set
  ///  to "score" field value.
  final List<FhirInteger>? _numFP;

  /// [numFP] The number of false positives if the GQ score threshold was set
  ///  to "score" field value.
  @override
  List<FhirInteger>? get numFP {
    final value = _numFP;
    if (value == null) return null;
    if (_numFP is EqualUnmodifiableListView) return _numFP;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numFPElement] Extensions for numFP
  final List<PrimitiveElement>? _numFPElement;

  /// [numFPElement] Extensions for numFP
  @override
  @JsonKey(name: '_numFP')
  List<PrimitiveElement>? get numFPElement {
    final value = _numFPElement;
    if (value == null) return null;
    if (_numFPElement is EqualUnmodifiableListView) return _numFPElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numFN] The number of false negatives if the GQ score threshold was set
  ///  to "score" field value.
  final List<FhirInteger>? _numFN;

  /// [numFN] The number of false negatives if the GQ score threshold was set
  ///  to "score" field value.
  @override
  List<FhirInteger>? get numFN {
    final value = _numFN;
    if (value == null) return null;
    if (_numFN is EqualUnmodifiableListView) return _numFN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numFNElement] Extensions for numFN
  final List<PrimitiveElement>? _numFNElement;

  /// [numFNElement] Extensions for numFN
  @override
  @JsonKey(name: '_numFN')
  List<PrimitiveElement>? get numFNElement {
    final value = _numFNElement;
    if (value == null) return null;
    if (_numFNElement is EqualUnmodifiableListView) return _numFNElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [precision] Calculated precision if the GQ score threshold was set to
  ///  "score" field value.
  final List<FhirDecimal>? _precision;

  /// [precision] Calculated precision if the GQ score threshold was set to
  ///  "score" field value.
  @override
  List<FhirDecimal>? get precision {
    final value = _precision;
    if (value == null) return null;
    if (_precision is EqualUnmodifiableListView) return _precision;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [precisionElement] Extensions for precision
  final List<PrimitiveElement>? _precisionElement;

  /// [precisionElement] Extensions for precision
  @override
  @JsonKey(name: '_precision')
  List<PrimitiveElement>? get precisionElement {
    final value = _precisionElement;
    if (value == null) return null;
    if (_precisionElement is EqualUnmodifiableListView)
      return _precisionElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [sensitivity] Calculated sensitivity if the GQ score threshold was set to
  ///  "score" field value.
  final List<FhirDecimal>? _sensitivity;

  /// [sensitivity] Calculated sensitivity if the GQ score threshold was set to
  ///  "score" field value.
  @override
  List<FhirDecimal>? get sensitivity {
    final value = _sensitivity;
    if (value == null) return null;
    if (_sensitivity is EqualUnmodifiableListView) return _sensitivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [sensitivityElement] Extensions for sensitivity
  final List<PrimitiveElement>? _sensitivityElement;

  /// [sensitivityElement] Extensions for sensitivity
  @override
  @JsonKey(name: '_sensitivity')
  List<PrimitiveElement>? get sensitivityElement {
    final value = _sensitivityElement;
    if (value == null) return null;
    if (_sensitivityElement is EqualUnmodifiableListView)
      return _sensitivityElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [fMeasure] Calculated fScore if the GQ score threshold was set to "score"
  ///  field value.
  final List<FhirDecimal>? _fMeasure;

  /// [fMeasure] Calculated fScore if the GQ score threshold was set to "score"
  ///  field value.
  @override
  List<FhirDecimal>? get fMeasure {
    final value = _fMeasure;
    if (value == null) return null;
    if (_fMeasure is EqualUnmodifiableListView) return _fMeasure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [fMeasureElement] Extensions for fMeasure
  final List<PrimitiveElement>? _fMeasureElement;

  /// [fMeasureElement] Extensions for fMeasure
  @override
  @JsonKey(name: '_fMeasure')
  List<PrimitiveElement>? get fMeasureElement {
    final value = _fMeasureElement;
    if (value == null) return null;
    if (_fMeasureElement is EqualUnmodifiableListView) return _fMeasureElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceRocImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._score, _score) &&
            const DeepCollectionEquality()
                .equals(other._scoreElement, _scoreElement) &&
            const DeepCollectionEquality().equals(other._numTP, _numTP) &&
            const DeepCollectionEquality()
                .equals(other._numTPElement, _numTPElement) &&
            const DeepCollectionEquality().equals(other._numFP, _numFP) &&
            const DeepCollectionEquality()
                .equals(other._numFPElement, _numFPElement) &&
            const DeepCollectionEquality().equals(other._numFN, _numFN) &&
            const DeepCollectionEquality()
                .equals(other._numFNElement, _numFNElement) &&
            const DeepCollectionEquality()
                .equals(other._precision, _precision) &&
            const DeepCollectionEquality()
                .equals(other._precisionElement, _precisionElement) &&
            const DeepCollectionEquality()
                .equals(other._sensitivity, _sensitivity) &&
            const DeepCollectionEquality()
                .equals(other._sensitivityElement, _sensitivityElement) &&
            const DeepCollectionEquality().equals(other._fMeasure, _fMeasure) &&
            const DeepCollectionEquality()
                .equals(other._fMeasureElement, _fMeasureElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_score),
      const DeepCollectionEquality().hash(_scoreElement),
      const DeepCollectionEquality().hash(_numTP),
      const DeepCollectionEquality().hash(_numTPElement),
      const DeepCollectionEquality().hash(_numFP),
      const DeepCollectionEquality().hash(_numFPElement),
      const DeepCollectionEquality().hash(_numFN),
      const DeepCollectionEquality().hash(_numFNElement),
      const DeepCollectionEquality().hash(_precision),
      const DeepCollectionEquality().hash(_precisionElement),
      const DeepCollectionEquality().hash(_sensitivity),
      const DeepCollectionEquality().hash(_sensitivityElement),
      const DeepCollectionEquality().hash(_fMeasure),
      const DeepCollectionEquality().hash(_fMeasureElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceRocImplCopyWith<_$MolecularSequenceRocImpl>
      get copyWith =>
          __$$MolecularSequenceRocImplCopyWithImpl<_$MolecularSequenceRocImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceRocImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequenceRoc extends MolecularSequenceRoc {
  factory _MolecularSequenceRoc(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<FhirInteger>? score,
          @JsonKey(name: '_score') final List<PrimitiveElement>? scoreElement,
          final List<FhirInteger>? numTP,
          @JsonKey(name: '_numTP') final List<PrimitiveElement>? numTPElement,
          final List<FhirInteger>? numFP,
          @JsonKey(name: '_numFP') final List<PrimitiveElement>? numFPElement,
          final List<FhirInteger>? numFN,
          @JsonKey(name: '_numFN') final List<PrimitiveElement>? numFNElement,
          final List<FhirDecimal>? precision,
          @JsonKey(name: '_precision')
          final List<PrimitiveElement>? precisionElement,
          final List<FhirDecimal>? sensitivity,
          @JsonKey(name: '_sensitivity')
          final List<PrimitiveElement>? sensitivityElement,
          final List<FhirDecimal>? fMeasure,
          @JsonKey(name: '_fMeasure')
          final List<PrimitiveElement>? fMeasureElement}) =
      _$MolecularSequenceRocImpl;
  const _MolecularSequenceRoc._() : super._();

  factory _MolecularSequenceRoc.fromJson(Map<String, dynamic> json) =
      _$MolecularSequenceRocImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [score] Invidual data point representing the GQ (genotype quality) score
  ///  threshold.
  List<FhirInteger>? get score;
  @override

  /// [scoreElement] Extensions for score
  @JsonKey(name: '_score')
  List<PrimitiveElement>? get scoreElement;
  @override

  /// [numTP] The number of true positives if the GQ score threshold was set to
  ///  "score" field value.
  List<FhirInteger>? get numTP;
  @override

  /// [numTPElement] Extensions for numTP
  @JsonKey(name: '_numTP')
  List<PrimitiveElement>? get numTPElement;
  @override

  /// [numFP] The number of false positives if the GQ score threshold was set
  ///  to "score" field value.
  List<FhirInteger>? get numFP;
  @override

  /// [numFPElement] Extensions for numFP
  @JsonKey(name: '_numFP')
  List<PrimitiveElement>? get numFPElement;
  @override

  /// [numFN] The number of false negatives if the GQ score threshold was set
  ///  to "score" field value.
  List<FhirInteger>? get numFN;
  @override

  /// [numFNElement] Extensions for numFN
  @JsonKey(name: '_numFN')
  List<PrimitiveElement>? get numFNElement;
  @override

  /// [precision] Calculated precision if the GQ score threshold was set to
  ///  "score" field value.
  List<FhirDecimal>? get precision;
  @override

  /// [precisionElement] Extensions for precision
  @JsonKey(name: '_precision')
  List<PrimitiveElement>? get precisionElement;
  @override

  /// [sensitivity] Calculated sensitivity if the GQ score threshold was set to
  ///  "score" field value.
  List<FhirDecimal>? get sensitivity;
  @override

  /// [sensitivityElement] Extensions for sensitivity
  @JsonKey(name: '_sensitivity')
  List<PrimitiveElement>? get sensitivityElement;
  @override

  /// [fMeasure] Calculated fScore if the GQ score threshold was set to "score"
  ///  field value.
  List<FhirDecimal>? get fMeasure;
  @override

  /// [fMeasureElement] Extensions for fMeasure
  @JsonKey(name: '_fMeasure')
  List<PrimitiveElement>? get fMeasureElement;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceRocImplCopyWith<_$MolecularSequenceRocImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MolecularSequenceRepository _$MolecularSequenceRepositoryFromJson(
    Map<String, dynamic> json) {
  return _MolecularSequenceRepository.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequenceRepository {
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

  /// [type] Click and see / RESTful API / Need login to see / RESTful API with
  ///  authentication / Other ways to see resource.
  FhirCode? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [url] URI of an external repository which contains further details about
  ///  the genetics data.
  FhirUri? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [name] URI of an external repository which contains further details about
  ///  the genetics data.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [datasetId] Id of the variant in this external repository. The server
  /// will understand how to use this id to call for more info about datasets in
  ///  external repository.
  String? get datasetId => throw _privateConstructorUsedError;

  /// [datasetIdElement] Extensions for datasetId
  @JsonKey(name: '_datasetId')
  PrimitiveElement? get datasetIdElement => throw _privateConstructorUsedError;

  /// [variantsetId] Id of the variantset in this external repository. The
  /// server will understand how to use this id to call for more info about
  ///  variantsets in external repository.
  String? get variantsetId => throw _privateConstructorUsedError;

  /// [variantsetIdElement] Extensions for variantsetId
  @JsonKey(name: '_variantsetId')
  PrimitiveElement? get variantsetIdElement =>
      throw _privateConstructorUsedError;

  /// [readsetId] Id of the read in this external repository.
  String? get readsetId => throw _privateConstructorUsedError;

  /// [readsetIdElement] Extensions for readsetId
  @JsonKey(name: '_readsetId')
  PrimitiveElement? get readsetIdElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceRepositoryCopyWith<MolecularSequenceRepository>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceRepositoryCopyWith<$Res> {
  factory $MolecularSequenceRepositoryCopyWith(
          MolecularSequenceRepository value,
          $Res Function(MolecularSequenceRepository) then) =
      _$MolecularSequenceRepositoryCopyWithImpl<$Res,
          MolecularSequenceRepository>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? datasetId,
      @JsonKey(name: '_datasetId') PrimitiveElement? datasetIdElement,
      String? variantsetId,
      @JsonKey(name: '_variantsetId') PrimitiveElement? variantsetIdElement,
      String? readsetId,
      @JsonKey(name: '_readsetId') PrimitiveElement? readsetIdElement});
}

/// @nodoc
class _$MolecularSequenceRepositoryCopyWithImpl<$Res,
        $Val extends MolecularSequenceRepository>
    implements $MolecularSequenceRepositoryCopyWith<$Res> {
  _$MolecularSequenceRepositoryCopyWithImpl(this._value, this._then);

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
    Object? typeElement = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? datasetId = freezed,
    Object? datasetIdElement = freezed,
    Object? variantsetId = freezed,
    Object? variantsetIdElement = freezed,
    Object? readsetId = freezed,
    Object? readsetIdElement = freezed,
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
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      datasetId: freezed == datasetId
          ? _value.datasetId
          : datasetId // ignore: cast_nullable_to_non_nullable
              as String?,
      datasetIdElement: freezed == datasetIdElement
          ? _value.datasetIdElement
          : datasetIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variantsetId: freezed == variantsetId
          ? _value.variantsetId
          : variantsetId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantsetIdElement: freezed == variantsetIdElement
          ? _value.variantsetIdElement
          : variantsetIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      readsetId: freezed == readsetId
          ? _value.readsetId
          : readsetId // ignore: cast_nullable_to_non_nullable
              as String?,
      readsetIdElement: freezed == readsetIdElement
          ? _value.readsetIdElement
          : readsetIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MolecularSequenceRepositoryImplCopyWith<$Res>
    implements $MolecularSequenceRepositoryCopyWith<$Res> {
  factory _$$MolecularSequenceRepositoryImplCopyWith(
          _$MolecularSequenceRepositoryImpl value,
          $Res Function(_$MolecularSequenceRepositoryImpl) then) =
      __$$MolecularSequenceRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? datasetId,
      @JsonKey(name: '_datasetId') PrimitiveElement? datasetIdElement,
      String? variantsetId,
      @JsonKey(name: '_variantsetId') PrimitiveElement? variantsetIdElement,
      String? readsetId,
      @JsonKey(name: '_readsetId') PrimitiveElement? readsetIdElement});
}

/// @nodoc
class __$$MolecularSequenceRepositoryImplCopyWithImpl<$Res>
    extends _$MolecularSequenceRepositoryCopyWithImpl<$Res,
        _$MolecularSequenceRepositoryImpl>
    implements _$$MolecularSequenceRepositoryImplCopyWith<$Res> {
  __$$MolecularSequenceRepositoryImplCopyWithImpl(
      _$MolecularSequenceRepositoryImpl _value,
      $Res Function(_$MolecularSequenceRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? datasetId = freezed,
    Object? datasetIdElement = freezed,
    Object? variantsetId = freezed,
    Object? variantsetIdElement = freezed,
    Object? readsetId = freezed,
    Object? readsetIdElement = freezed,
  }) {
    return _then(_$MolecularSequenceRepositoryImpl(
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
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      datasetId: freezed == datasetId
          ? _value.datasetId
          : datasetId // ignore: cast_nullable_to_non_nullable
              as String?,
      datasetIdElement: freezed == datasetIdElement
          ? _value.datasetIdElement
          : datasetIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variantsetId: freezed == variantsetId
          ? _value.variantsetId
          : variantsetId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantsetIdElement: freezed == variantsetIdElement
          ? _value.variantsetIdElement
          : variantsetIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      readsetId: freezed == readsetId
          ? _value.readsetId
          : readsetId // ignore: cast_nullable_to_non_nullable
              as String?,
      readsetIdElement: freezed == readsetIdElement
          ? _value.readsetIdElement
          : readsetIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceRepositoryImpl extends _MolecularSequenceRepository {
  const _$MolecularSequenceRepositoryImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.datasetId,
      @JsonKey(name: '_datasetId') this.datasetIdElement,
      this.variantsetId,
      @JsonKey(name: '_variantsetId') this.variantsetIdElement,
      this.readsetId,
      @JsonKey(name: '_readsetId') this.readsetIdElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MolecularSequenceRepositoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MolecularSequenceRepositoryImplFromJson(json);

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

  /// [type] Click and see / RESTful API / Need login to see / RESTful API with
  ///  authentication / Other ways to see resource.
  @override
  final FhirCode? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [url] URI of an external repository which contains further details about
  ///  the genetics data.
  @override
  final FhirUri? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [name] URI of an external repository which contains further details about
  ///  the genetics data.
  @override
  final String? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [datasetId] Id of the variant in this external repository. The server
  /// will understand how to use this id to call for more info about datasets in
  ///  external repository.
  @override
  final String? datasetId;

  /// [datasetIdElement] Extensions for datasetId
  @override
  @JsonKey(name: '_datasetId')
  final PrimitiveElement? datasetIdElement;

  /// [variantsetId] Id of the variantset in this external repository. The
  /// server will understand how to use this id to call for more info about
  ///  variantsets in external repository.
  @override
  final String? variantsetId;

  /// [variantsetIdElement] Extensions for variantsetId
  @override
  @JsonKey(name: '_variantsetId')
  final PrimitiveElement? variantsetIdElement;

  /// [readsetId] Id of the read in this external repository.
  @override
  final String? readsetId;

  /// [readsetIdElement] Extensions for readsetId
  @override
  @JsonKey(name: '_readsetId')
  final PrimitiveElement? readsetIdElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceRepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.datasetId, datasetId) ||
                other.datasetId == datasetId) &&
            (identical(other.datasetIdElement, datasetIdElement) ||
                other.datasetIdElement == datasetIdElement) &&
            (identical(other.variantsetId, variantsetId) ||
                other.variantsetId == variantsetId) &&
            (identical(other.variantsetIdElement, variantsetIdElement) ||
                other.variantsetIdElement == variantsetIdElement) &&
            (identical(other.readsetId, readsetId) ||
                other.readsetId == readsetId) &&
            (identical(other.readsetIdElement, readsetIdElement) ||
                other.readsetIdElement == readsetIdElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      typeElement,
      url,
      urlElement,
      name,
      nameElement,
      datasetId,
      datasetIdElement,
      variantsetId,
      variantsetIdElement,
      readsetId,
      readsetIdElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceRepositoryImplCopyWith<_$MolecularSequenceRepositoryImpl>
      get copyWith => __$$MolecularSequenceRepositoryImplCopyWithImpl<
          _$MolecularSequenceRepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceRepositoryImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequenceRepository
    extends MolecularSequenceRepository {
  factory _MolecularSequenceRepository(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirCode? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement,
          final FhirUri? url,
          @JsonKey(name: '_url') final PrimitiveElement? urlElement,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final String? datasetId,
          @JsonKey(name: '_datasetId') final PrimitiveElement? datasetIdElement,
          final String? variantsetId,
          @JsonKey(name: '_variantsetId')
          final PrimitiveElement? variantsetIdElement,
          final String? readsetId,
          @JsonKey(name: '_readsetId')
          final PrimitiveElement? readsetIdElement}) =
      _$MolecularSequenceRepositoryImpl;
  const _MolecularSequenceRepository._() : super._();

  factory _MolecularSequenceRepository.fromJson(Map<String, dynamic> json) =
      _$MolecularSequenceRepositoryImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] Click and see / RESTful API / Need login to see / RESTful API with
  ///  authentication / Other ways to see resource.
  FhirCode? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [url] URI of an external repository which contains further details about
  ///  the genetics data.
  FhirUri? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override

  /// [name] URI of an external repository which contains further details about
  ///  the genetics data.
  String? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [datasetId] Id of the variant in this external repository. The server
  /// will understand how to use this id to call for more info about datasets in
  ///  external repository.
  String? get datasetId;
  @override

  /// [datasetIdElement] Extensions for datasetId
  @JsonKey(name: '_datasetId')
  PrimitiveElement? get datasetIdElement;
  @override

  /// [variantsetId] Id of the variantset in this external repository. The
  /// server will understand how to use this id to call for more info about
  ///  variantsets in external repository.
  String? get variantsetId;
  @override

  /// [variantsetIdElement] Extensions for variantsetId
  @JsonKey(name: '_variantsetId')
  PrimitiveElement? get variantsetIdElement;
  @override

  /// [readsetId] Id of the read in this external repository.
  String? get readsetId;
  @override

  /// [readsetIdElement] Extensions for readsetId
  @JsonKey(name: '_readsetId')
  PrimitiveElement? get readsetIdElement;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceRepositoryImplCopyWith<_$MolecularSequenceRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MolecularSequenceStructureVariant _$MolecularSequenceStructureVariantFromJson(
    Map<String, dynamic> json) {
  return _MolecularSequenceStructureVariant.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequenceStructureVariant {
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

  /// [variantType] Information about chromosome structure variation DNA change
  ///  type.
  CodeableConcept? get variantType => throw _privateConstructorUsedError;

  /// [exact] Used to indicate if the outer and inner start-end values have the
  ///  same meaning.
  FhirBoolean? get exact => throw _privateConstructorUsedError;

  /// [exactElement] Extensions for exact
  @JsonKey(name: '_exact')
  PrimitiveElement? get exactElement => throw _privateConstructorUsedError;

  /// [length] Length of the variant chromosome.
  FhirInteger? get length => throw _privateConstructorUsedError;

  /// [lengthElement] Extensions for length
  @JsonKey(name: '_length')
  PrimitiveElement? get lengthElement => throw _privateConstructorUsedError;

  /// [outer] Structural variant outer.
  MolecularSequenceOuter? get outer => throw _privateConstructorUsedError;

  /// [inner] Structural variant inner.
  MolecularSequenceInner? get inner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceStructureVariantCopyWith<MolecularSequenceStructureVariant>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceStructureVariantCopyWith<$Res> {
  factory $MolecularSequenceStructureVariantCopyWith(
          MolecularSequenceStructureVariant value,
          $Res Function(MolecularSequenceStructureVariant) then) =
      _$MolecularSequenceStructureVariantCopyWithImpl<$Res,
          MolecularSequenceStructureVariant>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? variantType,
      FhirBoolean? exact,
      @JsonKey(name: '_exact') PrimitiveElement? exactElement,
      FhirInteger? length,
      @JsonKey(name: '_length') PrimitiveElement? lengthElement,
      MolecularSequenceOuter? outer,
      MolecularSequenceInner? inner});

  $CodeableConceptCopyWith<$Res>? get variantType;
  $MolecularSequenceOuterCopyWith<$Res>? get outer;
  $MolecularSequenceInnerCopyWith<$Res>? get inner;
}

/// @nodoc
class _$MolecularSequenceStructureVariantCopyWithImpl<$Res,
        $Val extends MolecularSequenceStructureVariant>
    implements $MolecularSequenceStructureVariantCopyWith<$Res> {
  _$MolecularSequenceStructureVariantCopyWithImpl(this._value, this._then);

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
    Object? variantType = freezed,
    Object? exact = freezed,
    Object? exactElement = freezed,
    Object? length = freezed,
    Object? lengthElement = freezed,
    Object? outer = freezed,
    Object? inner = freezed,
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
      variantType: freezed == variantType
          ? _value.variantType
          : variantType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      exact: freezed == exact
          ? _value.exact
          : exact // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      exactElement: freezed == exactElement
          ? _value.exactElement
          : exactElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      lengthElement: freezed == lengthElement
          ? _value.lengthElement
          : lengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      outer: freezed == outer
          ? _value.outer
          : outer // ignore: cast_nullable_to_non_nullable
              as MolecularSequenceOuter?,
      inner: freezed == inner
          ? _value.inner
          : inner // ignore: cast_nullable_to_non_nullable
              as MolecularSequenceInner?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get variantType {
    if (_value.variantType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.variantType!, (value) {
      return _then(_value.copyWith(variantType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MolecularSequenceOuterCopyWith<$Res>? get outer {
    if (_value.outer == null) {
      return null;
    }

    return $MolecularSequenceOuterCopyWith<$Res>(_value.outer!, (value) {
      return _then(_value.copyWith(outer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MolecularSequenceInnerCopyWith<$Res>? get inner {
    if (_value.inner == null) {
      return null;
    }

    return $MolecularSequenceInnerCopyWith<$Res>(_value.inner!, (value) {
      return _then(_value.copyWith(inner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MolecularSequenceStructureVariantImplCopyWith<$Res>
    implements $MolecularSequenceStructureVariantCopyWith<$Res> {
  factory _$$MolecularSequenceStructureVariantImplCopyWith(
          _$MolecularSequenceStructureVariantImpl value,
          $Res Function(_$MolecularSequenceStructureVariantImpl) then) =
      __$$MolecularSequenceStructureVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? variantType,
      FhirBoolean? exact,
      @JsonKey(name: '_exact') PrimitiveElement? exactElement,
      FhirInteger? length,
      @JsonKey(name: '_length') PrimitiveElement? lengthElement,
      MolecularSequenceOuter? outer,
      MolecularSequenceInner? inner});

  @override
  $CodeableConceptCopyWith<$Res>? get variantType;
  @override
  $MolecularSequenceOuterCopyWith<$Res>? get outer;
  @override
  $MolecularSequenceInnerCopyWith<$Res>? get inner;
}

/// @nodoc
class __$$MolecularSequenceStructureVariantImplCopyWithImpl<$Res>
    extends _$MolecularSequenceStructureVariantCopyWithImpl<$Res,
        _$MolecularSequenceStructureVariantImpl>
    implements _$$MolecularSequenceStructureVariantImplCopyWith<$Res> {
  __$$MolecularSequenceStructureVariantImplCopyWithImpl(
      _$MolecularSequenceStructureVariantImpl _value,
      $Res Function(_$MolecularSequenceStructureVariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? variantType = freezed,
    Object? exact = freezed,
    Object? exactElement = freezed,
    Object? length = freezed,
    Object? lengthElement = freezed,
    Object? outer = freezed,
    Object? inner = freezed,
  }) {
    return _then(_$MolecularSequenceStructureVariantImpl(
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
      variantType: freezed == variantType
          ? _value.variantType
          : variantType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      exact: freezed == exact
          ? _value.exact
          : exact // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      exactElement: freezed == exactElement
          ? _value.exactElement
          : exactElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      lengthElement: freezed == lengthElement
          ? _value.lengthElement
          : lengthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      outer: freezed == outer
          ? _value.outer
          : outer // ignore: cast_nullable_to_non_nullable
              as MolecularSequenceOuter?,
      inner: freezed == inner
          ? _value.inner
          : inner // ignore: cast_nullable_to_non_nullable
              as MolecularSequenceInner?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceStructureVariantImpl
    extends _MolecularSequenceStructureVariant {
  const _$MolecularSequenceStructureVariantImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.variantType,
      this.exact,
      @JsonKey(name: '_exact') this.exactElement,
      this.length,
      @JsonKey(name: '_length') this.lengthElement,
      this.outer,
      this.inner})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MolecularSequenceStructureVariantImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MolecularSequenceStructureVariantImplFromJson(json);

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

  /// [variantType] Information about chromosome structure variation DNA change
  ///  type.
  @override
  final CodeableConcept? variantType;

  /// [exact] Used to indicate if the outer and inner start-end values have the
  ///  same meaning.
  @override
  final FhirBoolean? exact;

  /// [exactElement] Extensions for exact
  @override
  @JsonKey(name: '_exact')
  final PrimitiveElement? exactElement;

  /// [length] Length of the variant chromosome.
  @override
  final FhirInteger? length;

  /// [lengthElement] Extensions for length
  @override
  @JsonKey(name: '_length')
  final PrimitiveElement? lengthElement;

  /// [outer] Structural variant outer.
  @override
  final MolecularSequenceOuter? outer;

  /// [inner] Structural variant inner.
  @override
  final MolecularSequenceInner? inner;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceStructureVariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.variantType, variantType) ||
                other.variantType == variantType) &&
            (identical(other.exact, exact) || other.exact == exact) &&
            (identical(other.exactElement, exactElement) ||
                other.exactElement == exactElement) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.lengthElement, lengthElement) ||
                other.lengthElement == lengthElement) &&
            (identical(other.outer, outer) || other.outer == outer) &&
            (identical(other.inner, inner) || other.inner == inner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      variantType,
      exact,
      exactElement,
      length,
      lengthElement,
      outer,
      inner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceStructureVariantImplCopyWith<
          _$MolecularSequenceStructureVariantImpl>
      get copyWith => __$$MolecularSequenceStructureVariantImplCopyWithImpl<
          _$MolecularSequenceStructureVariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceStructureVariantImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequenceStructureVariant
    extends MolecularSequenceStructureVariant {
  factory _MolecularSequenceStructureVariant(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? variantType,
          final FhirBoolean? exact,
          @JsonKey(name: '_exact') final PrimitiveElement? exactElement,
          final FhirInteger? length,
          @JsonKey(name: '_length') final PrimitiveElement? lengthElement,
          final MolecularSequenceOuter? outer,
          final MolecularSequenceInner? inner}) =
      _$MolecularSequenceStructureVariantImpl;
  const _MolecularSequenceStructureVariant._() : super._();

  factory _MolecularSequenceStructureVariant.fromJson(
          Map<String, dynamic> json) =
      _$MolecularSequenceStructureVariantImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [variantType] Information about chromosome structure variation DNA change
  ///  type.
  CodeableConcept? get variantType;
  @override

  /// [exact] Used to indicate if the outer and inner start-end values have the
  ///  same meaning.
  FhirBoolean? get exact;
  @override

  /// [exactElement] Extensions for exact
  @JsonKey(name: '_exact')
  PrimitiveElement? get exactElement;
  @override

  /// [length] Length of the variant chromosome.
  FhirInteger? get length;
  @override

  /// [lengthElement] Extensions for length
  @JsonKey(name: '_length')
  PrimitiveElement? get lengthElement;
  @override

  /// [outer] Structural variant outer.
  MolecularSequenceOuter? get outer;
  @override

  /// [inner] Structural variant inner.
  MolecularSequenceInner? get inner;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceStructureVariantImplCopyWith<
          _$MolecularSequenceStructureVariantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MolecularSequenceOuter _$MolecularSequenceOuterFromJson(
    Map<String, dynamic> json) {
  return _MolecularSequenceOuter.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequenceOuter {
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

  /// [start] Structural variant outer start. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  FhirInteger? get start => throw _privateConstructorUsedError;

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  PrimitiveElement? get startElement => throw _privateConstructorUsedError;

  /// [end] Structural variant outer end. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  FhirInteger? get end => throw _privateConstructorUsedError;

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  PrimitiveElement? get endElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceOuterCopyWith<MolecularSequenceOuter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceOuterCopyWith<$Res> {
  factory $MolecularSequenceOuterCopyWith(MolecularSequenceOuter value,
          $Res Function(MolecularSequenceOuter) then) =
      _$MolecularSequenceOuterCopyWithImpl<$Res, MolecularSequenceOuter>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? start,
      @JsonKey(name: '_start') PrimitiveElement? startElement,
      FhirInteger? end,
      @JsonKey(name: '_end') PrimitiveElement? endElement});
}

/// @nodoc
class _$MolecularSequenceOuterCopyWithImpl<$Res,
        $Val extends MolecularSequenceOuter>
    implements $MolecularSequenceOuterCopyWith<$Res> {
  _$MolecularSequenceOuterCopyWithImpl(this._value, this._then);

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
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
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
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MolecularSequenceOuterImplCopyWith<$Res>
    implements $MolecularSequenceOuterCopyWith<$Res> {
  factory _$$MolecularSequenceOuterImplCopyWith(
          _$MolecularSequenceOuterImpl value,
          $Res Function(_$MolecularSequenceOuterImpl) then) =
      __$$MolecularSequenceOuterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? start,
      @JsonKey(name: '_start') PrimitiveElement? startElement,
      FhirInteger? end,
      @JsonKey(name: '_end') PrimitiveElement? endElement});
}

/// @nodoc
class __$$MolecularSequenceOuterImplCopyWithImpl<$Res>
    extends _$MolecularSequenceOuterCopyWithImpl<$Res,
        _$MolecularSequenceOuterImpl>
    implements _$$MolecularSequenceOuterImplCopyWith<$Res> {
  __$$MolecularSequenceOuterImplCopyWithImpl(
      _$MolecularSequenceOuterImpl _value,
      $Res Function(_$MolecularSequenceOuterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
  }) {
    return _then(_$MolecularSequenceOuterImpl(
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
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceOuterImpl extends _MolecularSequenceOuter {
  const _$MolecularSequenceOuterImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.start,
      @JsonKey(name: '_start') this.startElement,
      this.end,
      @JsonKey(name: '_end') this.endElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MolecularSequenceOuterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MolecularSequenceOuterImplFromJson(json);

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

  /// [start] Structural variant outer start. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  @override
  final FhirInteger? start;

  /// [startElement] Extensions for start
  @override
  @JsonKey(name: '_start')
  final PrimitiveElement? startElement;

  /// [end] Structural variant outer end. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  @override
  final FhirInteger? end;

  /// [endElement] Extensions for end
  @override
  @JsonKey(name: '_end')
  final PrimitiveElement? endElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceOuterImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.startElement, startElement) ||
                other.startElement == startElement) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.endElement, endElement) ||
                other.endElement == endElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      start,
      startElement,
      end,
      endElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceOuterImplCopyWith<_$MolecularSequenceOuterImpl>
      get copyWith => __$$MolecularSequenceOuterImplCopyWithImpl<
          _$MolecularSequenceOuterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceOuterImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequenceOuter extends MolecularSequenceOuter {
  factory _MolecularSequenceOuter(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirInteger? start,
          @JsonKey(name: '_start') final PrimitiveElement? startElement,
          final FhirInteger? end,
          @JsonKey(name: '_end') final PrimitiveElement? endElement}) =
      _$MolecularSequenceOuterImpl;
  const _MolecularSequenceOuter._() : super._();

  factory _MolecularSequenceOuter.fromJson(Map<String, dynamic> json) =
      _$MolecularSequenceOuterImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [start] Structural variant outer start. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  FhirInteger? get start;
  @override

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  PrimitiveElement? get startElement;
  @override

  /// [end] Structural variant outer end. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  FhirInteger? get end;
  @override

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  PrimitiveElement? get endElement;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceOuterImplCopyWith<_$MolecularSequenceOuterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MolecularSequenceInner _$MolecularSequenceInnerFromJson(
    Map<String, dynamic> json) {
  return _MolecularSequenceInner.fromJson(json);
}

/// @nodoc
mixin _$MolecularSequenceInner {
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

  /// [start] Structural variant inner start. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  FhirInteger? get start => throw _privateConstructorUsedError;

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  PrimitiveElement? get startElement => throw _privateConstructorUsedError;

  /// [end] Structural variant inner end. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  FhirInteger? get end => throw _privateConstructorUsedError;

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  PrimitiveElement? get endElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolecularSequenceInnerCopyWith<MolecularSequenceInner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolecularSequenceInnerCopyWith<$Res> {
  factory $MolecularSequenceInnerCopyWith(MolecularSequenceInner value,
          $Res Function(MolecularSequenceInner) then) =
      _$MolecularSequenceInnerCopyWithImpl<$Res, MolecularSequenceInner>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? start,
      @JsonKey(name: '_start') PrimitiveElement? startElement,
      FhirInteger? end,
      @JsonKey(name: '_end') PrimitiveElement? endElement});
}

/// @nodoc
class _$MolecularSequenceInnerCopyWithImpl<$Res,
        $Val extends MolecularSequenceInner>
    implements $MolecularSequenceInnerCopyWith<$Res> {
  _$MolecularSequenceInnerCopyWithImpl(this._value, this._then);

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
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
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
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MolecularSequenceInnerImplCopyWith<$Res>
    implements $MolecularSequenceInnerCopyWith<$Res> {
  factory _$$MolecularSequenceInnerImplCopyWith(
          _$MolecularSequenceInnerImpl value,
          $Res Function(_$MolecularSequenceInnerImpl) then) =
      __$$MolecularSequenceInnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirInteger? start,
      @JsonKey(name: '_start') PrimitiveElement? startElement,
      FhirInteger? end,
      @JsonKey(name: '_end') PrimitiveElement? endElement});
}

/// @nodoc
class __$$MolecularSequenceInnerImplCopyWithImpl<$Res>
    extends _$MolecularSequenceInnerCopyWithImpl<$Res,
        _$MolecularSequenceInnerImpl>
    implements _$$MolecularSequenceInnerImplCopyWith<$Res> {
  __$$MolecularSequenceInnerImplCopyWithImpl(
      _$MolecularSequenceInnerImpl _value,
      $Res Function(_$MolecularSequenceInnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
  }) {
    return _then(_$MolecularSequenceInnerImpl(
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
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolecularSequenceInnerImpl extends _MolecularSequenceInner {
  const _$MolecularSequenceInnerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.start,
      @JsonKey(name: '_start') this.startElement,
      this.end,
      @JsonKey(name: '_end') this.endElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$MolecularSequenceInnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MolecularSequenceInnerImplFromJson(json);

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

  /// [start] Structural variant inner start. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  @override
  final FhirInteger? start;

  /// [startElement] Extensions for start
  @override
  @JsonKey(name: '_start')
  final PrimitiveElement? startElement;

  /// [end] Structural variant inner end. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  @override
  final FhirInteger? end;

  /// [endElement] Extensions for end
  @override
  @JsonKey(name: '_end')
  final PrimitiveElement? endElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolecularSequenceInnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.startElement, startElement) ||
                other.startElement == startElement) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.endElement, endElement) ||
                other.endElement == endElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      start,
      startElement,
      end,
      endElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolecularSequenceInnerImplCopyWith<_$MolecularSequenceInnerImpl>
      get copyWith => __$$MolecularSequenceInnerImplCopyWithImpl<
          _$MolecularSequenceInnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolecularSequenceInnerImplToJson(
      this,
    );
  }
}

abstract class _MolecularSequenceInner extends MolecularSequenceInner {
  factory _MolecularSequenceInner(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirInteger? start,
          @JsonKey(name: '_start') final PrimitiveElement? startElement,
          final FhirInteger? end,
          @JsonKey(name: '_end') final PrimitiveElement? endElement}) =
      _$MolecularSequenceInnerImpl;
  const _MolecularSequenceInner._() : super._();

  factory _MolecularSequenceInner.fromJson(Map<String, dynamic> json) =
      _$MolecularSequenceInnerImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [start] Structural variant inner start. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  FhirInteger? get start;
  @override

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  PrimitiveElement? get startElement;
  @override

  /// [end] Structural variant inner end. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  FhirInteger? get end;
  @override

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  PrimitiveElement? get endElement;
  @override
  @JsonKey(ignore: true)
  _$$MolecularSequenceInnerImplCopyWith<_$MolecularSequenceInnerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
