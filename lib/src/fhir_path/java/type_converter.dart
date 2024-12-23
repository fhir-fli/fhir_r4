import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4/src/fhir_path/java/java.dart';

/// Extension to convert a [String] to [FhirBase64Binary]
class TypeConvertor {
  // -- converters for property setters

  /// Converts a [FhirBase] to [Element], if possible
  static Element? castTo(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is DataType) {
      return b;
    } else if (b.isMetadataBased) {
      return b as Element;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Reference',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirBoolean], if possible
  static FhirBoolean? castToBoolean(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirBoolean) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Boolean',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirInteger], if possible
  static FhirInteger? castToInteger(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirInteger) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Integer',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirInteger64], if possible
  static FhirInteger64? castToInteger64(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirInteger64) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Integer',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirDecimal], if possible
  static FhirDecimal? castToDecimal(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirDecimal) {
      return b;
    } else if (b is PrimitiveType) {
      return FhirDecimal.tryParse(b.primitiveValue);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Decimal',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirBase64Binary], if possible
  static FhirBase64Binary? castToBase64Binary(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirBase64Binary) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Base64Binary',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirInstant], if possible
  static FhirInstant? castToInstant(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirInstant) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Instant',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirString], if possible
  static FhirString? castToString(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirString) {
      return b;
    } else if (b is PrimitiveType) {
      return FhirString(b.primitiveValue);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a String',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirUri], if possible
  static FhirUri? castToUri(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirUri) {
      return b;
    } else if (b is PrimitiveType) {
      return FhirUri(b.primitiveValue);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Uri',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirUrl], if possible
  static FhirUrl? castToUrl(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirUrl) {
      return b;
    } else if (b is PrimitiveType) {
      return FhirUrl(b.primitiveValue);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Uri',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirCanonical], if possible
  static FhirCanonical? castToCanonical(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirCanonical) {
      return b;
    } else if (b is PrimitiveType) {
      return FhirCanonical(b.primitiveValue);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Uri',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirDate], if possible
  static FhirDate? castToDate(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirDate) {
      return b;
    } else if (b is PrimitiveType) {
      return FhirDate.tryParse(b.primitiveValue);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Date',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirDateTime], if possible
  static FhirDateTime? castToDateTime(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirDateTime) {
      return b;
    } else if (b is FhirDateTimeBase) {
      return FhirDateTime.fromString(b.primitiveValue!);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a DateTime',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirTime], if possible
  static FhirTime? castToTime(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirTime) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Time',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirCode], if possible
  static FhirCode? castToCode(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirCode) {
      return b;
    } else if (b is PrimitiveType) {
      return FhirCode(b.primitiveValue);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Code',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirXhtml], if possible
  static FhirOid? castToOid(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirOid) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Oid',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirId], if possible
  static FhirId? castToId(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirId) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Id',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirId], if possible
  static FhirUnsignedInt? castToUnsignedInt(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirUnsignedInt) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a UnsignedInt',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirId], if possible
  static FhirPositiveInt? castToPositiveInt(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirPositiveInt) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a PositiveInt',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirMarkdown], if possible
  static FhirMarkdown? castToMarkdown(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirMarkdown) {
      return b;
    } else if (b is PrimitiveType) {
      return FhirMarkdown(b.primitiveValue);
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Markdown',
      );
    }
  }

  /// Converts a [FhirBase] to [Annotation], if possible
  static Annotation? castToAnnotation(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is Annotation) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to an Annotation',
      );
    }
  }

  /// Converts a [FhirBase] to [Dosage], if possible
  static Dosage? castToDosage(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is Dosage) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to an DosageInstruction',
      );
    }
  }

  /// Converts a [FhirBase] to [Attachment], if possible
  static Attachment? castToAttachment(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is Attachment) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to an Attachment',
      );
    }
  }

  /// Converts a [FhirBase] to [Identifier], if possible
  static Identifier? castToIdentifier(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is Identifier) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to an Identifier',
      );
    }
  }

  /// Converts a [FhirBase] to [CodeableConcept], if possible
  static CodeableConcept? castToCodeableConcept(FhirBase? b) {
    if (b == null) {
      return null;
    }
    throw UnimplementedError();

    // if (b is CodeableConcept) {return b;}
    // else if (b is Element) {
    //   return ObjectConverter.readAsCodeableConcept((Element) b);
    // } else if (b is FhirCode) {
    //   CodeableConcept cc = new CodeableConcept();
    //   cc.addCoding().setCode(((CodeType) b).asStringValue());
    //   return cc;
    // } else if (b is FhirString) {
    //   CodeableConcept cc = new CodeableConcept();
    //   cc.addCoding().setCode(((FhirString) b).asStringValue());
    //   return cc;
    // } else {throw  FHIRException(message:
    // "Unable to convert a ${b.fhirType}  to a CodeableConcept"); }
  }

  /// Converts a [FhirBase] to [CodeableReference], if possible
  static CodeableReference? castToCodeableReference(FhirBase? b) {
    if (b == null) {
      return null;
    }
    throw UnimplementedError();
    // if (b is CodeableReference) {
    //   return (CodeableReference) b;
    // } else if (b is FhirCode) {
    //   CodeableReference cc = new CodeableReference();
    //   cc.getConcept().addCoding().setCode(((CodeType) b).asStringValue());
    //   return cc;
    // } else if (b is Reference) {
    //   CodeableReference cc = new CodeableReference();
    //   cc.setReference((Reference) b);
    //   return cc;
    // } else if (b is FhirString) {
    //   CodeableReference cc = new CodeableReference();
    //   cc.getConcept().addCoding().setCode(((FhirString) b).asStringValue());
    //   return cc;
    // } else {throw  FHIRException(message:
    // "Unable to convert a ${b.fhirType}  to a CodeableConcept"); }
  }

  /// Converts a [FhirBase] to [Population], if possible
  static Population? castToPopulation(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is Population) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Population',
      );
    }
  }

  /// Converts a [FhirBase] to [Coding], if possible
  static Coding? castToCoding(FhirBase? b) {
    if (b == null) {
      return null;
    }
    return null;

    //   if (b is Coding) {return b;}
    //   else if (b is Element) {
    //     final c = ICoding(b);
    //     return const Coding().setCode(c.getCode()).setSystem(
    //  c.getSystem(),).setVersion(c.getVersion())
    //         .setDisplay(c.getDisplay());
    //       } else if (b is ICoding) {
    //     const ICoding c = ICoding b;
    //     return const Coding().setCode(c.getCode()).setSystem(
    //    c.getSystem(),).setVersion(c.getVersion())
    //         .setDisplay(c.getDisplay());
    //   } else if (b is PrimitiveType) {
    //     // PrimitiveType<?> p = (PrimitiveType<?>) b;
    //     const cc = Coding();
    //     cc.setCode(b.primitiveValue).setId(
    //    p.getId(),).getExtension().addAll(p.getExtension());
    //     return cc;
    //   } else if (b.isPrimitive()) {
    //     return const Coding().setCode(b.primitiveValue);
    //   } else {
    //     throw FHIRException(message:
    //   'Unable to convert a ${b.fhirType}  to a Coding',);
    //   }
  }

  /// Converts a [FhirBase] to [Quantity], if possible
  static Quantity? castToQuantity(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is Quantity) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to an Quantity',
      );
    }
  }

  /// Converts a [FhirBase] to [Money], if possible
  static Money? castToMoney(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is Money) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to an Money',
      );
    }
  }

  /// Converts a [FhirBase] to [FhirDuration], if possible
  static FhirDuration? castToDuration(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is FhirDuration) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to an Duration',
      );
    }
  }

  // static SimpleQuantity? castToSimpleQuantity(FhirBase? b) {
  //   if (b == null) {
  //     return null;
  //   }

  // if (b is SimpleQuantity) {return b;}
  // else if (b is Quantity) {
  //   const Quantity q = Quantity b;
  //   final sq = SimpleQuantity();
  //   sq.setValueElement(q.getValueElement());
  //   sq.setComparatorElement(q.getComparatorElement());
  //   sq.setUnitElement(q.getUnitElement());
  //   sq.setSystemElement(q.getSystemElement());
  //   sq.setCodeElement(q.getCodeElement());
  //   return sq;
  // } else {throw  FHIRException(message:
  // 'Unable to convert a ${b.fhirType}  to an SimpleQuantity'); }
  // }

  /// Converts a [FhirBase] to [Range], if possible
  static Range? castToRange(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is Range) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Range',
      );
    }
  }

  /// Converts a [FhirBase] to [Period], if possible
  static Period? castToPeriod(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is Period) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Period',
      );
    }
  }

  /// Converts a [FhirBase] to [Ratio], if possible
  static Ratio? castToRatio(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is Ratio) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Ratio',
      );
    }
  }

  /// Converts a [FhirBase] to [SampledData], if possible
  static SampledData? castToSampledData(FhirBase? b) {
    if (b == null) {
      return null;
    }

    if (b is SampledData) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a SampledData',
      );
    }
  }

  /// Converts a [FhirBase] to [Signature], if possible
  static Signature? castToSignature(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is Signature) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Signature',
      );
    }
  }

  /// Converts a [FhirBase] to [HumanName], if possible
  static HumanName? castToHumanName(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is HumanName) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a HumanName',
      );
    }
  }

  /// Converts a [FhirBase] to [Address], if possible
  static Address? castToAddress(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is Address) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Address',
      );
    }
  }

  /// Converts a [FhirBase] to [ContactPoint], if possible
  static ContactDetail? castToContactDetail(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is ContactDetail) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a ContactDetail',
      );
    }
  }

  /// Converts a [FhirBase] to [Contributor], if possible
  static Contributor? castToContributor(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is Contributor) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Contributor',
      );
    }
  }

  /// Converts a [FhirBase] to [UsageContext], if possible
  static UsageContext? castToUsageContext(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is UsageContext) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a UsageContext',
      );
    }
  }

  /// Converts a [FhirBase] to [DataRequirement], if possible
  static RelatedArtifact? castToRelatedArtifact(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is RelatedArtifact) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a RelatedArtifact',
      );
    }
  }

  /// Converts a [FhirBase] to [TriggerDefinition], if possible
  static ContactPoint? castToContactPoint(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is ContactPoint) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a ContactPoint',
      );
    }
  }

  /// Converts a [FhirBase] to [TriggerDefinition], if possible
  static Timing? castToTiming(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is Timing) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Timing',
      );
    }
  }

  /// Converts a [FhirBase] to [TriggerDefinition], if possible
  static Reference? castToReference(FhirBase? b) {
    if (b == null) {
      return null;
    }
    throw UnimplementedError();
    // if (b is Reference) {return b;}
    // else if (b.isPrimitive() && Utilities.isURL(b.primitiveValue))
    //   return const Reference().setReference(b.primitiveValue);
    // else if (b is Fhirorg.hl7.fhir.r4b.elementmodel.Element
    // && b.fhir().equals("Reference")) {
    //   org.hl7.fhir.r4b.elementmodel.Element e =
    // org.hl7.fhir.r4b.elementmodel.Element b;
    //   return const Reference().setReference(
    //  e.getChildValue('reference')).setDisplay(e.getChildValue('display'));
    // } else {throw  FHIRException(message:
    // 'Unable to convert a ${b.fhirType}  to a Reference'); }
  }

  /// Converts a [FhirBase] to [Expression], if possible
  static FhirMeta? castToMeta(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirMeta) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Meta',
      );
    }
  }

  /// Converts a [FhirBase] to [ParameterDefinition], if possible
  static MarketingStatus? castToMarketingStatus(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is MarketingStatus) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a MarketingStatus',
      );
    }
  }

  // static Statistic? castToStatistic(FhirBase? b) {
  //   if (b == null) {
  //     return null;
  //   }
  //   if (b is Statistic) {return b;}
  //   else {throw  FHIRException(message:
  // 'Unable to convert a ${b.fhirType}  to a Statistic'); }
  // }

  // static OrderedDistribution? castToOrderedDistribution(FhirBase? b) {
  //   if (b == null) {
  //     return null;
  //   }
  //   if (b is OrderedDistribution) {return b;}
  //   else {throw  FHIRException(message:
  // 'Unable to convert a ${b.fhirType}  to a OrderedDistribution'); }
  // }

  /// Converts a [FhirBase] to [Population], if possible
  static ProductShelfLife? castToProductShelfLife(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is ProductShelfLife) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a ProductShelfLife',
      );
    }
  }

  /// Converts a [FhirBase] to [ProductShelfLife], if possible
  static ProdCharacteristic? castToProdCharacteristic(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is ProdCharacteristic) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a ProdCharacteristic',
      );
    }
  }

  // static SubstanceAmount? castToSubstanceAmount(FhirBase? b) {
  //   if (b == null) {
  //     return null;
  //   }
  //   if (b is SubstanceAmount) {return b;}
  //   else {throw  FHIRException(message:
  // 'Unable to convert a ${b.fhirType}  to a SubstanceAmount'); }
  // }

  /// Converts a [FhirBase] to [FhirExtension], if possible
  static FhirExtension? castToExtension(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirExtension) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Extension',
      );
    }
  }

  /// Converts a [FhirBase] to [Resource], if possible
  static Resource? castToResource(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is Resource) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Resource',
      );
    }
  }

  /// Converts a [FhirBase] to [Narrative], if possible
  static Narrative? castToNarrative(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is Narrative) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Narrative',
      );
    }
  }

  /// Converts a [FhirBase] to [ElementDefinition], if possible
  static ElementDefinition? castToElementDefinition(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is ElementDefinition) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a ElementDefinition',
      );
    }
  }

  /// Converts a [FhirBase] to [DataRequirement], if possible
  static DataRequirement? castToDataRequirement(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is DataRequirement) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a DataRequirement',
      );
    }
  }

  /// Converts a [FhirBase] to [ParameterDefinition], if possible
  static FhirExpression? castToExpression(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is FhirExpression) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a Expression',
      );
    }
  }

  /// Converts a [FhirBase] to [ParameterDefinition], if possible
  static ParameterDefinition? castToParameterDefinition(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is ParameterDefinition) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a ParameterDefinition',
      );
    }
  }

  /// Converts a [FhirBase] to [TriggerDefinition], if possible
  static TriggerDefinition? castToTriggerDefinition(FhirBase? b) {
    if (b == null) {
      return null;
    }
    if (b is TriggerDefinition) {
      return b;
    } else {
      throw FHIRException(
        message: 'Unable to convert a ${b.fhirType}  to a TriggerDefinition',
      );
    }
  }

  /// Converts a [FhirBase] to [UsageContext], if possible
  static FhirXhtml? castToXhtml(FhirBase? b) {
    if (b == null) {
      return null;
    }
    throw UnimplementedError();
    // if (b is Element) {
    //   return Element b.getXhtml();
    // } else if (b is FhirXhtml) {
    //   return XhtmlType b.getXhtml();
    // } else if (b is FhirString) {
    //   try {
    //     return XhtmlParser().parseFragment(FhirString b.asStringValue());
    //   } catch (IOException e) {
    //     throw FHIRException(message: e);
    //   }
    // } else {throw  FHIRException(message: 'Unable to convert a ${b.fhirType}  to XHtml'); }
  }

  static String? castToXhtmlString(FhirBase? b) {
    if (b == null) {
      return null;
    }
    throw UnimplementedError();
    // if (b is Element) {
    //   return Element b.getValue();
    // } else if (b is FhirXhtml) {
    //   try {
    //     return XhtmlComposer(true).compose(XhtmlType b.getXhtml());
    //   } catch (IOException e) {
    //     return null;
    //   }
    // } else if (b is FhirString) {
    //   return FhirString b.asStringValue();
    // } else {throw  FHIRException(message: 'Unable to convert a ${b.fhirType}  to XHtml string'); }
  }
}
