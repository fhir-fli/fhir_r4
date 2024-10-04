import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class VerificationResultAttestation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference who;
  final Reference onBehalfOf;
  final CodeableConcept communicationMethod;
  final FhirDate date;
  final PrimitiveElement Date;
  final String sourceIdentityCertificate;
  final PrimitiveElement SourceIdentityCertificate;
  final String proxyIdentityCertificate;
  final PrimitiveElement ProxyIdentityCertificate;
  final Signature proxySignature;
  final Signature sourceSignature;
  const VerificationResultAttestation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.who,
    this.onBehalfOf,
    this.communicationMethod,
    this.date,
    this.Date,
    this.sourceIdentityCertificate,
    this.SourceIdentityCertificate,
    this.proxyIdentityCertificate,
    this.ProxyIdentityCertificate,
    this.proxySignature,
    this.sourceSignature,
  });
}
