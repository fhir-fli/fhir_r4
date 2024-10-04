import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MolecularSequenceQuality {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final CodeableConcept standardSequence;
  final FhirInteger start;
  final PrimitiveElement Start;
  final FhirInteger end;
  final PrimitiveElement End;
  final Quantity score;
  final CodeableConcept method;
  final FhirDecimal truthTP;
  final PrimitiveElement TruthTP;
  final FhirDecimal queryTP;
  final PrimitiveElement QueryTP;
  final FhirDecimal truthFN;
  final PrimitiveElement TruthFN;
  final FhirDecimal queryFP;
  final PrimitiveElement QueryFP;
  final FhirDecimal gtFP;
  final PrimitiveElement GtFP;
  final FhirDecimal precision;
  final PrimitiveElement Precision;
  final FhirDecimal recall;
  final PrimitiveElement Recall;
  final FhirDecimal fScore;
  final PrimitiveElement FScore;
  final MolecularSequence_Roc roc;
  const MolecularSequenceQuality({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.standardSequence,
    this.start,
    this.Start,
    this.end,
    this.End,
    this.score,
    this.method,
    this.truthTP,
    this.TruthTP,
    this.queryTP,
    this.QueryTP,
    this.truthFN,
    this.TruthFN,
    this.queryFP,
    this.QueryFP,
    this.gtFP,
    this.GtFP,
    this.precision,
    this.Precision,
    this.recall,
    this.Recall,
    this.fScore,
    this.FScore,
    this.roc,
  });
}
