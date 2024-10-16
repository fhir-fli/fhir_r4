import 'package:fhir_r4/fhir_r4.dart';

/// Dose form for a medication, in the form suitable for administering to the patient, after mixing, where necessary.
enum AdministrableDoseForm {
  /// Display: Oral suspension
  /// Definition:
  value100000073362('100000073362'),

  /// Display: Oral gel
  /// Definition:
  value100000073363('100000073363'),

  /// Display: Powder for oral solution
  /// Definition:
  value100000073364('100000073364'),

  /// Display: Granules for oral solution
  /// Definition:
  value100000073365('100000073365'),

  /// Display: Lyophilisate for suspension
  /// Definition:
  value100000073367('100000073367'),

  /// Display: Powder for syrup
  /// Definition:
  value100000073368('100000073368'),

  /// Display: Soluble tablet
  /// Definition:
  value100000073369('100000073369'),

  /// Display: Herbal tea
  /// Definition:
  value100000073370('100000073370'),

  /// Display: Instant herbal tea
  /// Definition:
  value100000073371('100000073371'),

  /// Display: Granules
  /// Definition:
  value100000073372('100000073372'),

  /// Display: Gastro-resistant granules
  /// Definition:
  value100000073373('100000073373'),

  /// Display: Modified-release granules
  /// Definition:
  value100000073374('100000073374'),

  /// Display: Capsule, hard
  /// Definition:
  value100000073375('100000073375'),

  /// Display: Gastro-resistant capsule, hard
  /// Definition:
  value100000073376('100000073376'),

  /// Display: Chewable capsule, soft
  /// Definition:
  value100000073377('100000073377'),

  /// Display: Prolonged-release capsule, soft
  /// Definition:
  value100000073378('100000073378'),

  /// Display: Modified-release capsule, soft
  /// Definition:
  value100000073379('100000073379'),

  /// Display: Coated tablet
  /// Definition:
  value100000073380('100000073380'),

  /// Display: Oral drops, solution
  /// Definition:
  value100000073642('100000073642'),

  /// Display: Oral drops, suspension
  /// Definition:
  value100000073643('100000073643'),

  /// Display: Oral drops, emulsion
  /// Definition:
  value100000073644('100000073644'),

  /// Display: Oral liquid
  /// Definition:
  value100000073645('100000073645'),

  /// Display: Oral solution
  /// Definition:
  value100000073646('100000073646'),

  /// Display: Oral emulsion
  /// Definition:
  value100000073647('100000073647'),

  /// Display: Oral paste
  /// Definition:
  value100000073648('100000073648'),

  /// Display: Powder for oral suspension
  /// Definition:
  value100000073649('100000073649'),

  /// Display: Granules for oral suspension
  /// Definition:
  value100000073650('100000073650'),

  /// Display: Syrup
  /// Definition:
  value100000073652('100000073652'),

  /// Display: Granules for syrup
  /// Definition:
  value100000073653('100000073653'),

  /// Display: Dispersible tablet
  /// Definition:
  value100000073654('100000073654'),

  /// Display: Oral powder
  /// Definition:
  value100000073655('100000073655'),

  /// Display: Effervescent powder
  /// Definition:
  value100000073656('100000073656'),

  /// Display: Effervescent granules
  /// Definition:
  value100000073657('100000073657'),

  /// Display: Prolonged-release granules
  /// Definition:
  value100000073658('100000073658'),

  /// Display: Cachet
  /// Definition:
  value100000073659('100000073659'),

  /// Display: Capsule, soft
  /// Definition:
  value100000073660('100000073660'),

  /// Display: Gastro-resistant capsule, soft
  /// Definition:
  value100000073661('100000073661'),

  /// Display: Prolonged-release capsule, hard
  /// Definition:
  value100000073662('100000073662'),

  /// Display: Modified-release capsule, hard
  /// Definition:
  value100000073663('100000073663'),

  /// Display: Tablet
  /// Definition:
  value100000073664('100000073664'),

  /// Display: Film-coated tablet
  /// Definition:
  value100000073665('100000073665'),

  /// Display: Orodispersible tablet
  /// Definition:
  value100000073666('100000073666'),

  /// Display: Gastro-resistant tablet
  /// Definition:
  value100000073667('100000073667'),

  /// Display: Modified-release tablet
  /// Definition:
  value100000073668('100000073668'),

  /// Display: Medicated chewing-gum
  /// Definition:
  value100000073669('100000073669'),

  /// Display: Pillules
  /// Definition:
  value100000073670('100000073670'),

  /// Display: Pulsatile-release intraruminal device
  /// Definition:
  value100000073671('100000073671'),

  /// Display: Premix for medicated feeding stuff
  /// Definition:
  value100000073672('100000073672'),

  /// Display: Gargle
  /// Definition:
  value100000073673('100000073673'),

  /// Display: Gargle, powder for solution
  /// Definition:
  value100000073674('100000073674'),

  /// Display: Oromucosal suspension
  /// Definition:
  value100000073675('100000073675'),

  /// Display: Oromucosal spray
  /// Definition:
  value100000073676('100000073676'),

  /// Display: Mouthwash
  /// Definition:
  value100000073677('100000073677'),

  /// Display: Gingival solution
  /// Definition:
  value100000073678('100000073678'),

  /// Display: Oromucosal paste
  /// Definition:
  value100000073679('100000073679'),

  /// Display: Gingival gel
  /// Definition:
  value100000073680('100000073680'),

  /// Display: Effervescent tablet
  /// Definition:
  value100000073681('100000073681'),

  /// Display: Oral lyophilisate
  /// Definition:
  value100000073682('100000073682'),

  /// Display: Prolonged-release tablet
  /// Definition:
  value100000073683('100000073683'),

  /// Display: Chewable tablet
  /// Definition:
  value100000073684('100000073684'),

  /// Display: Oral gum
  /// Definition:
  value100000073685('100000073685'),

  /// Display: Continuous-release intraruminal device
  /// Definition:
  value100000073686('100000073686'),

  /// Display: Lick block
  /// Definition:
  value100000073687('100000073687'),

  /// Display: Medicated pellets
  /// Definition:
  value100000073688('100000073688'),

  /// Display: Concentrate for gargle
  /// Definition:
  value100000073689('100000073689'),

  /// Display: Gargle, tablet for solution
  /// Definition:
  value100000073690('100000073690'),

  /// Display: Oromucosal solution
  /// Definition:
  value100000073691('100000073691'),

  /// Display: Oromucosal drops
  /// Definition:
  value100000073692('100000073692'),

  /// Display: Sublingual spray
  /// Definition:
  value100000073693('100000073693'),

  /// Display: Mouthwash, tablet for solution
  /// Definition:
  value100000073694('100000073694'),

  /// Display: Oromucosal gel
  /// Definition:
  value100000073695('100000073695'),

  /// Display: Oromucosal cream
  /// Definition:
  value100000073696('100000073696'),

  /// Display: Gingival paste
  /// Definition:
  value100000073697('100000073697'),

  /// Display: Sublingual tablet
  /// Definition:
  value100000073698('100000073698'),

  /// Display: Buccal tablet
  /// Definition:
  value100000073699('100000073699'),

  /// Display: Compressed lozenge
  /// Definition:
  value100000073700('100000073700'),

  /// Display: Oromucosal capsule
  /// Definition:
  value100000073701('100000073701'),

  /// Display: Muco-adhesive buccal tablet
  /// Definition:
  value100000073702('100000073702'),

  /// Display: Lozenge
  /// Definition:
  value100000073703('100000073703'),

  /// Display: Pastille
  /// Definition:
  value100000073704('100000073704'),

  /// Display: Dental gel
  /// Definition:
  value100000073705('100000073705'),

  /// Display: Dental insert
  /// Definition:
  value100000073706('100000073706'),

  /// Display: Dental powder
  /// Definition:
  value100000073707('100000073707'),

  /// Display: Dental suspension
  /// Definition:
  value100000073708('100000073708'),

  /// Display: Toothpaste
  /// Definition:
  value100000073709('100000073709'),

  /// Display: Periodontal gel
  /// Definition:
  value100000073710('100000073710'),

  /// Display: Bath additive
  /// Definition:
  value100000073711('100000073711'),

  /// Display: Cream
  /// Definition:
  value100000073712('100000073712'),

  /// Display: Ointment
  /// Definition:
  value100000073713('100000073713'),

  /// Display: Medicated plaster
  /// Definition:
  value100000073714('100000073714'),

  /// Display: Shampoo
  /// Definition:
  value100000073715('100000073715'),

  /// Display: Cutaneous spray, suspension
  /// Definition:
  value100000073716('100000073716'),

  /// Display: Cutaneous liquid
  /// Definition:
  value100000073717('100000073717'),

  /// Display: Concentrate for cutaneous solution
  /// Definition:
  value100000073718('100000073718'),

  /// Display: Cutaneous emulsion
  /// Definition:
  value100000073719('100000073719'),

  /// Display: Cutaneous patch
  /// Definition:
  value100000073720('100000073720'),

  /// Display: Periodontal powder
  /// Definition:
  value100000073721('100000073721'),

  /// Display: Dental stick
  /// Definition:
  value100000073722('100000073722'),

  /// Display: Dental solution
  /// Definition:
  value100000073723('100000073723'),

  /// Display: Dental emulsion
  /// Definition:
  value100000073724('100000073724'),

  /// Display: Periodontal insert
  /// Definition:
  value100000073725('100000073725'),

  /// Display: Gel
  /// Definition:
  value100000073726('100000073726'),

  /// Display: Cutaneous paste
  /// Definition:
  value100000073727('100000073727'),

  /// Display: Cutaneous foam
  /// Definition:
  value100000073728('100000073728'),

  /// Display: Cutaneous spray, solution
  /// Definition:
  value100000073729('100000073729'),

  /// Display: Cutaneous spray, powder
  /// Definition:
  value100000073730('100000073730'),

  /// Display: Cutaneous solution
  /// Definition:
  value100000073731('100000073731'),

  /// Display: Cutaneous suspension
  /// Definition:
  value100000073732('100000073732'),

  /// Display: Cutaneous powder
  /// Definition:
  value100000073733('100000073733'),

  /// Display: Solution for iontophoresis
  /// Definition:
  value100000073734('100000073734'),

  /// Display: Collodion
  /// Definition:
  value100000073735('100000073735'),

  /// Display: Poultice
  /// Definition:
  value100000073736('100000073736'),

  /// Display: Cutaneous sponge
  /// Definition:
  value100000073737('100000073737'),

  /// Display: Collar
  /// Definition:
  value100000073738('100000073738'),

  /// Display: Ear tag
  /// Definition:
  value100000073739('100000073739'),

  /// Display: Dip suspension
  /// Definition:
  value100000073740('100000073740'),

  /// Display: Transdermal patch
  /// Definition:
  value100000073741('100000073741'),

  /// Display: Medicated nail lacquer
  /// Definition:
  value100000073742('100000073742'),

  /// Display: Cutaneous stick
  /// Definition:
  value100000073743('100000073743'),

  /// Display: Impregnated dressing
  /// Definition:
  value100000073744('100000073744'),

  /// Display: Medicated pendant
  /// Definition:
  value100000073745('100000073745'),

  /// Display: Dip solution
  /// Definition:
  value100000073746('100000073746'),

  /// Display: Dip emulsion
  /// Definition:
  value100000073747('100000073747'),

  /// Display: Concentrate for dip suspension
  /// Definition:
  value100000073748('100000073748'),

  /// Display: Powder for dip solution
  /// Definition:
  value100000073749('100000073749'),

  /// Display: Powder for suspension for fish treatment
  /// Definition:
  value100000073750('100000073750'),

  /// Display: Pour-on suspension
  /// Definition:
  value100000073751('100000073751'),

  /// Display: Spot-on solution
  /// Definition:
  value100000073752('100000073752'),

  /// Display: Spot-on emulsion
  /// Definition:
  value100000073753('100000073753'),

  /// Display: Teat dip suspension
  /// Definition:
  value100000073754('100000073754'),

  /// Display: Teat spray solution
  /// Definition:
  value100000073755('100000073755'),

  /// Display: Solution for skin-prick test
  /// Definition:
  value100000073756('100000073756'),

  /// Display: Plaster for provocation test
  /// Definition:
  value100000073757('100000073757'),

  /// Display: Eye gel
  /// Definition:
  value100000073758('100000073758'),

  /// Display: Eye drops, solution
  /// Definition:
  value100000073759('100000073759'),

  /// Display: Eye drops, suspension
  /// Definition:
  value100000073760('100000073760'),

  /// Display: Concentrate for dip solution
  /// Definition:
  value100000073761('100000073761'),

  /// Display: Concentrate for dip emulsion
  /// Definition:
  value100000073762('100000073762'),

  /// Display: Concentrate for solution for fish treatment
  /// Definition:
  value100000073763('100000073763'),

  /// Display: Pour-on solution
  /// Definition:
  value100000073764('100000073764'),

  /// Display: Pour-on emulsion
  /// Definition:
  value100000073765('100000073765'),

  /// Display: Spot-on suspension
  /// Definition:
  value100000073766('100000073766'),

  /// Display: Teat dip solution
  /// Definition:
  value100000073767('100000073767'),

  /// Display: Teat dip emulsion
  /// Definition:
  value100000073768('100000073768'),

  /// Display: Transdermal system
  /// Definition:
  value100000073769('100000073769'),

  /// Display: Solution for skin-scratch test
  /// Definition:
  value100000073770('100000073770'),

  /// Display: Eye cream
  /// Definition:
  value100000073771('100000073771'),

  /// Display: Eye ointment
  /// Definition:
  value100000073772('100000073772'),

  /// Display: Eye drops, emulsion
  /// Definition:
  value100000073773('100000073773'),

  /// Display: Eye drops, solvent for reconstitution
  /// Definition:
  value100000073775('100000073775'),

  /// Display: Eye lotion
  /// Definition:
  value100000073776('100000073776'),

  /// Display: Ophthalmic insert
  /// Definition:
  value100000073777('100000073777'),

  /// Display: Ear cream
  /// Definition:
  value100000073778('100000073778'),

  /// Display: Ear ointment
  /// Definition:
  value100000073779('100000073779'),

  /// Display: Ear drops, suspension
  /// Definition:
  value100000073780('100000073780'),

  /// Display: Eye drops, prolonged-release
  /// Definition:
  value100000073782('100000073782'),

  /// Display: Eye lotion, solvent for reconstitution
  /// Definition:
  value100000073783('100000073783'),

  /// Display: Ophthalmic strip
  /// Definition:
  value100000073784('100000073784'),

  /// Display: Ear gel
  /// Definition:
  value100000073785('100000073785'),

  /// Display: Ear drops, solution
  /// Definition:
  value100000073786('100000073786'),

  /// Display: Ear drops, emulsion
  /// Definition:
  value100000073787('100000073787'),

  /// Display: Ear powder
  /// Definition:
  value100000073788('100000073788'),

  /// Display: Ear spray, suspension
  /// Definition:
  value100000073789('100000073789'),

  /// Display: Ear wash, solution
  /// Definition:
  value100000073790('100000073790'),

  /// Display: Ear tampon
  /// Definition:
  value100000073791('100000073791'),

  /// Display: Nasal cream
  /// Definition:
  value100000073792('100000073792'),

  /// Display: Nasal gel
  /// Definition:
  value100000073793('100000073793'),

  /// Display: Nasal drops, solution
  /// Definition:
  value100000073794('100000073794'),

  /// Display: Nasal drops, emulsion
  /// Definition:
  value100000073795('100000073795'),

  /// Display: Nasal spray, solution
  /// Definition:
  value100000073796('100000073796'),

  /// Display: Nasal spray, emulsion
  /// Definition:
  value100000073797('100000073797'),

  /// Display: Nasal stick
  /// Definition:
  value100000073798('100000073798'),

  /// Display: Vaginal gel
  /// Definition:
  value100000073799('100000073799'),

  /// Display: Vaginal foam
  /// Definition:
  value100000073800('100000073800'),

  /// Display: Ear spray, solution
  /// Definition:
  value100000073802('100000073802'),

  /// Display: Ear spray, emulsion
  /// Definition:
  value100000073803('100000073803'),

  /// Display: Ear wash, emulsion
  /// Definition:
  value100000073804('100000073804'),

  /// Display: Ear stick
  /// Definition:
  value100000073805('100000073805'),

  /// Display: Nasal ointment
  /// Definition:
  value100000073806('100000073806'),

  /// Display: Nasal drops, suspension
  /// Definition:
  value100000073807('100000073807'),

  /// Display: Nasal powder
  /// Definition:
  value100000073808('100000073808'),

  /// Display: Nasal spray, suspension
  /// Definition:
  value100000073809('100000073809'),

  /// Display: Nasal wash
  /// Definition:
  value100000073810('100000073810'),

  /// Display: Vaginal cream
  /// Definition:
  value100000073811('100000073811'),

  /// Display: Vaginal ointment
  /// Definition:
  value100000073812('100000073812'),

  /// Display: Vaginal solution
  /// Definition:
  value100000073813('100000073813'),

  /// Display: Vaginal emulsion
  /// Definition:
  value100000073814('100000073814'),

  /// Display: Pessary
  /// Definition:
  value100000073815('100000073815'),

  /// Display: Vaginal capsule, soft
  /// Definition:
  value100000073816('100000073816'),

  /// Display: Effervescent vaginal tablet
  /// Definition:
  value100000073817('100000073817'),

  /// Display: Vaginal delivery system
  /// Definition:
  value100000073818('100000073818'),

  /// Display: Rectal cream
  /// Definition:
  value100000073819('100000073819'),

  /// Display: Rectal foam
  /// Definition:
  value100000073820('100000073820'),

  /// Display: Vaginal suspension
  /// Definition:
  value100000073821('100000073821'),

  /// Display: Tablet for vaginal solution
  /// Definition:
  value100000073822('100000073822'),

  /// Display: Vaginal capsule, hard
  /// Definition:
  value100000073823('100000073823'),

  /// Display: Vaginal tablet
  /// Definition:
  value100000073824('100000073824'),

  /// Display: Medicated vaginal tampon
  /// Definition:
  value100000073825('100000073825'),

  /// Display: Vaginal sponge
  /// Definition:
  value100000073826('100000073826'),

  /// Display: Rectal gel
  /// Definition:
  value100000073827('100000073827'),

  /// Display: Solution for injection
  /// Definition:
  value100000073863('100000073863'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdministrableDoseForm(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdministrableDoseForm fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrableDoseForm.elementOnly.withElement(element);
    }
    return AdministrableDoseForm.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdministrableDoseForm withElement(Element? newElement) {
    return AdministrableDoseForm.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
