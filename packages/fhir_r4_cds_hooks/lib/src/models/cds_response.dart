import 'package:fhir_r4_cds_hooks/src/models/cds_action.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_card.dart';

/// The response from a CDS Hooks service invocation.
class CdsResponse {
  /// Creates a [CdsResponse].
  CdsResponse({required this.cards, this.systemActions, this.extension_});

  /// Creates a [CdsResponse] from a JSON map.
  factory CdsResponse.fromJson(Map<String, dynamic> json) {
    return CdsResponse(
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CdsCard.fromJson(e as Map<String, dynamic>))
          .toList(),
      systemActions: (json['systemActions'] as List<dynamic>?)
          ?.map((e) => CdsAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      extension_: json['extension'] as Map<String, dynamic>?,
    );
  }

  /// The list of cards returned by the service.
  final List<CdsCard> cards;

  /// Optional system-level actions to apply automatically.
  final List<CdsAction>? systemActions;

  /// Extension data (uses `extension_` in Dart; maps to `extension` in JSON).
  final Map<String, dynamic>? extension_;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'cards': cards.map((c) => c.toJson()).toList(),
        if (systemActions != null)
          'systemActions': systemActions!.map((a) => a.toJson()).toList(),
        if (extension_ != null) 'extension': extension_,
      };

  /// Returns a copy with the given fields replaced.
  CdsResponse copyWith({
    List<CdsCard>? cards,
    List<CdsAction>? systemActions,
    Map<String, dynamic>? extension_,
  }) {
    return CdsResponse(
      cards: cards ?? this.cards,
      systemActions: systemActions ?? this.systemActions,
      extension_: extension_ ?? this.extension_,
    );
  }
}
