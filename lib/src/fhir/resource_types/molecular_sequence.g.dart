// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'molecular_sequence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MolecularSequence _$MolecularSequenceFromJson(Map<String, dynamic> json) =>
    MolecularSequence(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      meta: json['meta'] == null
          ? null
          : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
      implicitRules: json['implicitRules'] == null
          ? null
          : FhirUri.fromJson(json['implicitRules']),
      implicitRulesElement: json['implicitRulesElement'] == null
          ? null
          : Element.fromJson(
              json['implicitRulesElement'] as Map<String, dynamic>),
      language:
          json['language'] == null ? null : FhirCode.fromJson(json['language']),
      languageElement: json['languageElement'] == null
          ? null
          : Element.fromJson(json['languageElement'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Narrative.fromJson(json['text'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null ? null : FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      coordinateSystem: FhirInteger.fromJson(json['coordinateSystem']),
      coordinateSystemElement: json['_coordinateSystem'] == null
          ? null
          : Element.fromJson(json['_coordinateSystem'] as Map<String, dynamic>),
      patient: json['patient'] == null
          ? null
          : Reference.fromJson(json['patient'] as Map<String, dynamic>),
      specimen: json['specimen'] == null
          ? null
          : Reference.fromJson(json['specimen'] as Map<String, dynamic>),
      device: json['device'] == null
          ? null
          : Reference.fromJson(json['device'] as Map<String, dynamic>),
      performer: json['performer'] == null
          ? null
          : Reference.fromJson(json['performer'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      referenceSeq: json['referenceSeq'] == null
          ? null
          : MolecularSequenceReferenceSeq.fromJson(
              json['referenceSeq'] as Map<String, dynamic>),
      variant: (json['variant'] as List<dynamic>?)
          ?.map((e) =>
              MolecularSequenceVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
      observedSeq: json['observedSeq'] == null
          ? null
          : FhirString.fromJson(json['observedSeq']),
      observedSeqElement: json['_observedSeq'] == null
          ? null
          : Element.fromJson(json['_observedSeq'] as Map<String, dynamic>),
      quality: (json['quality'] as List<dynamic>?)
          ?.map((e) =>
              MolecularSequenceQuality.fromJson(e as Map<String, dynamic>))
          .toList(),
      readCoverage: json['readCoverage'] == null
          ? null
          : FhirInteger.fromJson(json['readCoverage']),
      readCoverageElement: json['_readCoverage'] == null
          ? null
          : Element.fromJson(json['_readCoverage'] as Map<String, dynamic>),
      repository: (json['repository'] as List<dynamic>?)
          ?.map((e) =>
              MolecularSequenceRepository.fromJson(e as Map<String, dynamic>))
          .toList(),
      pointer: (json['pointer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      structureVariant: (json['structureVariant'] as List<dynamic>?)
          ?.map((e) => MolecularSequenceStructureVariant.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceToJson(MolecularSequence instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules?.toJson());
  writeNotNull('implicitRulesElement', instance.implicitRulesElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('languageElement', instance.languageElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull(
      'contained', instance.contained?.map((e) => e.toJson()).toList());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  val['coordinateSystem'] = instance.coordinateSystem.toJson();
  writeNotNull('_coordinateSystem', instance.coordinateSystemElement?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('specimen', instance.specimen?.toJson());
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('performer', instance.performer?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('referenceSeq', instance.referenceSeq?.toJson());
  writeNotNull('variant', instance.variant?.map((e) => e.toJson()).toList());
  writeNotNull('observedSeq', instance.observedSeq?.toJson());
  writeNotNull('_observedSeq', instance.observedSeqElement?.toJson());
  writeNotNull('quality', instance.quality?.map((e) => e.toJson()).toList());
  writeNotNull('readCoverage', instance.readCoverage?.toJson());
  writeNotNull('_readCoverage', instance.readCoverageElement?.toJson());
  writeNotNull(
      'repository', instance.repository?.map((e) => e.toJson()).toList());
  writeNotNull('pointer', instance.pointer?.map((e) => e.toJson()).toList());
  writeNotNull('structureVariant',
      instance.structureVariant?.map((e) => e.toJson()).toList());
  return val;
}

MolecularSequenceReferenceSeq _$MolecularSequenceReferenceSeqFromJson(
        Map<String, dynamic> json) =>
    MolecularSequenceReferenceSeq(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      chromosome: json['chromosome'] == null
          ? null
          : CodeableConcept.fromJson(
              json['chromosome'] as Map<String, dynamic>),
      genomeBuild: json['genomeBuild'] == null
          ? null
          : FhirString.fromJson(json['genomeBuild']),
      genomeBuildElement: json['_genomeBuild'] == null
          ? null
          : Element.fromJson(json['_genomeBuild'] as Map<String, dynamic>),
      orientation: json['orientation'] == null
          ? null
          : FhirCode.fromJson(json['orientation']),
      orientationElement: json['_orientation'] == null
          ? null
          : Element.fromJson(json['_orientation'] as Map<String, dynamic>),
      referenceSeqId: json['referenceSeqId'] == null
          ? null
          : CodeableConcept.fromJson(
              json['referenceSeqId'] as Map<String, dynamic>),
      referenceSeqPointer: json['referenceSeqPointer'] == null
          ? null
          : Reference.fromJson(
              json['referenceSeqPointer'] as Map<String, dynamic>),
      referenceSeqString: json['referenceSeqString'] == null
          ? null
          : FhirString.fromJson(json['referenceSeqString']),
      referenceSeqStringElement: json['_referenceSeqString'] == null
          ? null
          : Element.fromJson(
              json['_referenceSeqString'] as Map<String, dynamic>),
      strand: json['strand'] == null ? null : FhirCode.fromJson(json['strand']),
      strandElement: json['_strand'] == null
          ? null
          : Element.fromJson(json['_strand'] as Map<String, dynamic>),
      windowStart: json['windowStart'] == null
          ? null
          : FhirInteger.fromJson(json['windowStart']),
      windowStartElement: json['_windowStart'] == null
          ? null
          : Element.fromJson(json['_windowStart'] as Map<String, dynamic>),
      windowEnd: json['windowEnd'] == null
          ? null
          : FhirInteger.fromJson(json['windowEnd']),
      windowEndElement: json['_windowEnd'] == null
          ? null
          : Element.fromJson(json['_windowEnd'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceReferenceSeqToJson(
    MolecularSequenceReferenceSeq instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('chromosome', instance.chromosome?.toJson());
  writeNotNull('genomeBuild', instance.genomeBuild?.toJson());
  writeNotNull('_genomeBuild', instance.genomeBuildElement?.toJson());
  writeNotNull('orientation', instance.orientation?.toJson());
  writeNotNull('_orientation', instance.orientationElement?.toJson());
  writeNotNull('referenceSeqId', instance.referenceSeqId?.toJson());
  writeNotNull('referenceSeqPointer', instance.referenceSeqPointer?.toJson());
  writeNotNull('referenceSeqString', instance.referenceSeqString?.toJson());
  writeNotNull(
      '_referenceSeqString', instance.referenceSeqStringElement?.toJson());
  writeNotNull('strand', instance.strand?.toJson());
  writeNotNull('_strand', instance.strandElement?.toJson());
  writeNotNull('windowStart', instance.windowStart?.toJson());
  writeNotNull('_windowStart', instance.windowStartElement?.toJson());
  writeNotNull('windowEnd', instance.windowEnd?.toJson());
  writeNotNull('_windowEnd', instance.windowEndElement?.toJson());
  return val;
}

MolecularSequenceVariant _$MolecularSequenceVariantFromJson(
        Map<String, dynamic> json) =>
    MolecularSequenceVariant(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      start: json['start'] == null ? null : FhirInteger.fromJson(json['start']),
      startElement: json['_start'] == null
          ? null
          : Element.fromJson(json['_start'] as Map<String, dynamic>),
      end: json['end'] == null ? null : FhirInteger.fromJson(json['end']),
      endElement: json['_end'] == null
          ? null
          : Element.fromJson(json['_end'] as Map<String, dynamic>),
      observedAllele: json['observedAllele'] == null
          ? null
          : FhirString.fromJson(json['observedAllele']),
      observedAlleleElement: json['_observedAllele'] == null
          ? null
          : Element.fromJson(json['_observedAllele'] as Map<String, dynamic>),
      referenceAllele: json['referenceAllele'] == null
          ? null
          : FhirString.fromJson(json['referenceAllele']),
      referenceAlleleElement: json['_referenceAllele'] == null
          ? null
          : Element.fromJson(json['_referenceAllele'] as Map<String, dynamic>),
      cigar: json['cigar'] == null ? null : FhirString.fromJson(json['cigar']),
      cigarElement: json['_cigar'] == null
          ? null
          : Element.fromJson(json['_cigar'] as Map<String, dynamic>),
      variantPointer: json['variantPointer'] == null
          ? null
          : Reference.fromJson(json['variantPointer'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceVariantToJson(
    MolecularSequenceVariant instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('start', instance.start?.toJson());
  writeNotNull('_start', instance.startElement?.toJson());
  writeNotNull('end', instance.end?.toJson());
  writeNotNull('_end', instance.endElement?.toJson());
  writeNotNull('observedAllele', instance.observedAllele?.toJson());
  writeNotNull('_observedAllele', instance.observedAlleleElement?.toJson());
  writeNotNull('referenceAllele', instance.referenceAllele?.toJson());
  writeNotNull('_referenceAllele', instance.referenceAlleleElement?.toJson());
  writeNotNull('cigar', instance.cigar?.toJson());
  writeNotNull('_cigar', instance.cigarElement?.toJson());
  writeNotNull('variantPointer', instance.variantPointer?.toJson());
  return val;
}

MolecularSequenceQuality _$MolecularSequenceQualityFromJson(
        Map<String, dynamic> json) =>
    MolecularSequenceQuality(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      standardSequence: json['standardSequence'] == null
          ? null
          : CodeableConcept.fromJson(
              json['standardSequence'] as Map<String, dynamic>),
      start: json['start'] == null ? null : FhirInteger.fromJson(json['start']),
      startElement: json['_start'] == null
          ? null
          : Element.fromJson(json['_start'] as Map<String, dynamic>),
      end: json['end'] == null ? null : FhirInteger.fromJson(json['end']),
      endElement: json['_end'] == null
          ? null
          : Element.fromJson(json['_end'] as Map<String, dynamic>),
      score: json['score'] == null
          ? null
          : Quantity.fromJson(json['score'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : CodeableConcept.fromJson(json['method'] as Map<String, dynamic>),
      truthTP: json['truthTP'] == null
          ? null
          : FhirDecimal.fromJson(json['truthTP']),
      truthTPElement: json['_truthTP'] == null
          ? null
          : Element.fromJson(json['_truthTP'] as Map<String, dynamic>),
      queryTP: json['queryTP'] == null
          ? null
          : FhirDecimal.fromJson(json['queryTP']),
      queryTPElement: json['_queryTP'] == null
          ? null
          : Element.fromJson(json['_queryTP'] as Map<String, dynamic>),
      truthFN: json['truthFN'] == null
          ? null
          : FhirDecimal.fromJson(json['truthFN']),
      truthFNElement: json['_truthFN'] == null
          ? null
          : Element.fromJson(json['_truthFN'] as Map<String, dynamic>),
      queryFP: json['queryFP'] == null
          ? null
          : FhirDecimal.fromJson(json['queryFP']),
      queryFPElement: json['_queryFP'] == null
          ? null
          : Element.fromJson(json['_queryFP'] as Map<String, dynamic>),
      gtFP: json['gtFP'] == null ? null : FhirDecimal.fromJson(json['gtFP']),
      gtFPElement: json['_gtFP'] == null
          ? null
          : Element.fromJson(json['_gtFP'] as Map<String, dynamic>),
      precision: json['precision'] == null
          ? null
          : FhirDecimal.fromJson(json['precision']),
      precisionElement: json['_precision'] == null
          ? null
          : Element.fromJson(json['_precision'] as Map<String, dynamic>),
      recall:
          json['recall'] == null ? null : FhirDecimal.fromJson(json['recall']),
      recallElement: json['_recall'] == null
          ? null
          : Element.fromJson(json['_recall'] as Map<String, dynamic>),
      fScore:
          json['fScore'] == null ? null : FhirDecimal.fromJson(json['fScore']),
      fScoreElement: json['_fScore'] == null
          ? null
          : Element.fromJson(json['_fScore'] as Map<String, dynamic>),
      roc: json['roc'] == null
          ? null
          : MolecularSequenceRoc.fromJson(json['roc'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceQualityToJson(
    MolecularSequenceQuality instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('standardSequence', instance.standardSequence?.toJson());
  writeNotNull('start', instance.start?.toJson());
  writeNotNull('_start', instance.startElement?.toJson());
  writeNotNull('end', instance.end?.toJson());
  writeNotNull('_end', instance.endElement?.toJson());
  writeNotNull('score', instance.score?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('truthTP', instance.truthTP?.toJson());
  writeNotNull('_truthTP', instance.truthTPElement?.toJson());
  writeNotNull('queryTP', instance.queryTP?.toJson());
  writeNotNull('_queryTP', instance.queryTPElement?.toJson());
  writeNotNull('truthFN', instance.truthFN?.toJson());
  writeNotNull('_truthFN', instance.truthFNElement?.toJson());
  writeNotNull('queryFP', instance.queryFP?.toJson());
  writeNotNull('_queryFP', instance.queryFPElement?.toJson());
  writeNotNull('gtFP', instance.gtFP?.toJson());
  writeNotNull('_gtFP', instance.gtFPElement?.toJson());
  writeNotNull('precision', instance.precision?.toJson());
  writeNotNull('_precision', instance.precisionElement?.toJson());
  writeNotNull('recall', instance.recall?.toJson());
  writeNotNull('_recall', instance.recallElement?.toJson());
  writeNotNull('fScore', instance.fScore?.toJson());
  writeNotNull('_fScore', instance.fScoreElement?.toJson());
  writeNotNull('roc', instance.roc?.toJson());
  return val;
}

MolecularSequenceRoc _$MolecularSequenceRocFromJson(
        Map<String, dynamic> json) =>
    MolecularSequenceRoc(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      score:
          (json['score'] as List<dynamic>?)?.map(FhirInteger.fromJson).toList(),
      scoreElement: (json['_score'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      numTP:
          (json['numTP'] as List<dynamic>?)?.map(FhirInteger.fromJson).toList(),
      numTPElement: (json['_numTP'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      numFP:
          (json['numFP'] as List<dynamic>?)?.map(FhirInteger.fromJson).toList(),
      numFPElement: (json['_numFP'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      numFN:
          (json['numFN'] as List<dynamic>?)?.map(FhirInteger.fromJson).toList(),
      numFNElement: (json['_numFN'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      precision: (json['precision'] as List<dynamic>?)
          ?.map(FhirDecimal.fromJson)
          .toList(),
      precisionElement: (json['_precision'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      sensitivity: (json['sensitivity'] as List<dynamic>?)
          ?.map(FhirDecimal.fromJson)
          .toList(),
      sensitivityElement: (json['_sensitivity'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      fMeasure: (json['fMeasure'] as List<dynamic>?)
          ?.map(FhirDecimal.fromJson)
          .toList(),
      fMeasureElement: (json['_fMeasure'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceRocToJson(
    MolecularSequenceRoc instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('score', instance.score?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_score', instance.scoreElement?.map((e) => e.toJson()).toList());
  writeNotNull('numTP', instance.numTP?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_numTP', instance.numTPElement?.map((e) => e.toJson()).toList());
  writeNotNull('numFP', instance.numFP?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_numFP', instance.numFPElement?.map((e) => e.toJson()).toList());
  writeNotNull('numFN', instance.numFN?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_numFN', instance.numFNElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'precision', instance.precision?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_precision', instance.precisionElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'sensitivity', instance.sensitivity?.map((e) => e.toJson()).toList());
  writeNotNull('_sensitivity',
      instance.sensitivityElement?.map((e) => e.toJson()).toList());
  writeNotNull('fMeasure', instance.fMeasure?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_fMeasure', instance.fMeasureElement?.map((e) => e.toJson()).toList());
  return val;
}

MolecularSequenceRepository _$MolecularSequenceRepositoryFromJson(
        Map<String, dynamic> json) =>
    MolecularSequenceRepository(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      url: json['url'] == null ? null : FhirUri.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : Element.fromJson(json['_url'] as Map<String, dynamic>),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      datasetId: json['datasetId'] == null
          ? null
          : FhirString.fromJson(json['datasetId']),
      datasetIdElement: json['_datasetId'] == null
          ? null
          : Element.fromJson(json['_datasetId'] as Map<String, dynamic>),
      variantsetId: json['variantsetId'] == null
          ? null
          : FhirString.fromJson(json['variantsetId']),
      variantsetIdElement: json['_variantsetId'] == null
          ? null
          : Element.fromJson(json['_variantsetId'] as Map<String, dynamic>),
      readsetId: json['readsetId'] == null
          ? null
          : FhirString.fromJson(json['readsetId']),
      readsetIdElement: json['_readsetId'] == null
          ? null
          : Element.fromJson(json['_readsetId'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceRepositoryToJson(
    MolecularSequenceRepository instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('datasetId', instance.datasetId?.toJson());
  writeNotNull('_datasetId', instance.datasetIdElement?.toJson());
  writeNotNull('variantsetId', instance.variantsetId?.toJson());
  writeNotNull('_variantsetId', instance.variantsetIdElement?.toJson());
  writeNotNull('readsetId', instance.readsetId?.toJson());
  writeNotNull('_readsetId', instance.readsetIdElement?.toJson());
  return val;
}

MolecularSequenceStructureVariant _$MolecularSequenceStructureVariantFromJson(
        Map<String, dynamic> json) =>
    MolecularSequenceStructureVariant(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      variantType: json['variantType'] == null
          ? null
          : CodeableConcept.fromJson(
              json['variantType'] as Map<String, dynamic>),
      exact: json['exact'] == null ? null : FhirBoolean.fromJson(json['exact']),
      exactElement: json['_exact'] == null
          ? null
          : Element.fromJson(json['_exact'] as Map<String, dynamic>),
      length:
          json['length'] == null ? null : FhirInteger.fromJson(json['length']),
      lengthElement: json['_length'] == null
          ? null
          : Element.fromJson(json['_length'] as Map<String, dynamic>),
      outer: json['outer'] == null
          ? null
          : MolecularSequenceOuter.fromJson(
              json['outer'] as Map<String, dynamic>),
      inner: json['inner'] == null
          ? null
          : MolecularSequenceInner.fromJson(
              json['inner'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceStructureVariantToJson(
    MolecularSequenceStructureVariant instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('variantType', instance.variantType?.toJson());
  writeNotNull('exact', instance.exact?.toJson());
  writeNotNull('_exact', instance.exactElement?.toJson());
  writeNotNull('length', instance.length?.toJson());
  writeNotNull('_length', instance.lengthElement?.toJson());
  writeNotNull('outer', instance.outer?.toJson());
  writeNotNull('inner', instance.inner?.toJson());
  return val;
}

MolecularSequenceOuter _$MolecularSequenceOuterFromJson(
        Map<String, dynamic> json) =>
    MolecularSequenceOuter(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      start: json['start'] == null ? null : FhirInteger.fromJson(json['start']),
      startElement: json['_start'] == null
          ? null
          : Element.fromJson(json['_start'] as Map<String, dynamic>),
      end: json['end'] == null ? null : FhirInteger.fromJson(json['end']),
      endElement: json['_end'] == null
          ? null
          : Element.fromJson(json['_end'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceOuterToJson(
    MolecularSequenceOuter instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('start', instance.start?.toJson());
  writeNotNull('_start', instance.startElement?.toJson());
  writeNotNull('end', instance.end?.toJson());
  writeNotNull('_end', instance.endElement?.toJson());
  return val;
}

MolecularSequenceInner _$MolecularSequenceInnerFromJson(
        Map<String, dynamic> json) =>
    MolecularSequenceInner(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      start: json['start'] == null ? null : FhirInteger.fromJson(json['start']),
      startElement: json['_start'] == null
          ? null
          : Element.fromJson(json['_start'] as Map<String, dynamic>),
      end: json['end'] == null ? null : FhirInteger.fromJson(json['end']),
      endElement: json['_end'] == null
          ? null
          : Element.fromJson(json['_end'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$MolecularSequenceInnerToJson(
    MolecularSequenceInner instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('start', instance.start?.toJson());
  writeNotNull('_start', instance.startElement?.toJson());
  writeNotNull('end', instance.end?.toJson());
  writeNotNull('_end', instance.endElement?.toJson());
  return val;
}
