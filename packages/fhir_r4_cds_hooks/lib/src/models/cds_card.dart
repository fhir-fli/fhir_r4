import 'package:fhir_r4_cds_hooks/src/enums/cds_indicator.dart';
import 'package:fhir_r4_cds_hooks/src/enums/cds_selection_behavior.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_coding.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_link.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_source.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_suggestion.dart';

/// A card returned by a CDS Hooks service.
class CdsCard {
  /// Creates a [CdsCard].
  CdsCard({
    required this.summary,
    required this.indicator,
    required this.source,
    this.uuid,
    this.detail,
    this.suggestions,
    this.selectionBehavior,
    this.overrideReasons,
    this.links,
  });

  /// Creates a [CdsCard] from a JSON map.
  factory CdsCard.fromJson(Map<String, dynamic> json) {
    return CdsCard(
      summary: json['summary'] as String,
      indicator: CdsIndicator.fromJson(json['indicator'] as String),
      source: CdsSource.fromJson(json['source'] as Map<String, dynamic>),
      uuid: json['uuid'] as String?,
      detail: json['detail'] as String?,
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => CdsSuggestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectionBehavior: json['selectionBehavior'] != null
          ? CdsSelectionBehavior.fromJson(
              json['selectionBehavior'] as String,
            )
          : null,
      overrideReasons: (json['overrideReasons'] as List<dynamic>?)
          ?.map((e) => CdsCoding.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => CdsLink.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  /// A short (<140 character) summary message.
  final String summary;

  /// The urgency indicator.
  final CdsIndicator indicator;

  /// The source of the card's information.
  final CdsSource source;

  /// A unique identifier for the card.
  final String? uuid;

  /// Optional detailed information (Markdown).
  final String? detail;

  /// Suggested actions the user can take.
  final List<CdsSuggestion>? suggestions;

  /// How suggestions should be selected.
  final CdsSelectionBehavior? selectionBehavior;

  /// Override reasons the user can choose from if they dismiss the card.
  final List<CdsCoding>? overrideReasons;

  /// Links to external resources.
  final List<CdsLink>? links;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'summary': summary,
        'indicator': indicator.toJson(),
        'source': source.toJson(),
        if (uuid != null) 'uuid': uuid,
        if (detail != null) 'detail': detail,
        if (suggestions != null)
          'suggestions': suggestions!.map((s) => s.toJson()).toList(),
        if (selectionBehavior != null)
          'selectionBehavior': selectionBehavior!.toJson(),
        if (overrideReasons != null)
          'overrideReasons': overrideReasons!.map((o) => o.toJson()).toList(),
        if (links != null) 'links': links!.map((l) => l.toJson()).toList(),
      };

  /// Returns a copy with the given fields replaced.
  CdsCard copyWith({
    String? summary,
    CdsIndicator? indicator,
    CdsSource? source,
    String? uuid,
    String? detail,
    List<CdsSuggestion>? suggestions,
    CdsSelectionBehavior? selectionBehavior,
    List<CdsCoding>? overrideReasons,
    List<CdsLink>? links,
  }) {
    return CdsCard(
      summary: summary ?? this.summary,
      indicator: indicator ?? this.indicator,
      source: source ?? this.source,
      uuid: uuid ?? this.uuid,
      detail: detail ?? this.detail,
      suggestions: suggestions ?? this.suggestions,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      overrideReasons: overrideReasons ?? this.overrideReasons,
      links: links ?? this.links,
    );
  }
}
