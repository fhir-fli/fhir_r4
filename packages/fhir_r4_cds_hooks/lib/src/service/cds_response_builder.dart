import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/enums/cds_action_type.dart';
import 'package:fhir_r4_cds_hooks/src/enums/cds_indicator.dart';
import 'package:fhir_r4_cds_hooks/src/enums/cds_link_type.dart';
import 'package:fhir_r4_cds_hooks/src/enums/cds_selection_behavior.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_action.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_card.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_coding.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_link.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_response.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_source.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_suggestion.dart';

/// Fluent builder for constructing [CdsResponse] objects.
class CdsResponseBuilder {
  final List<CdsCard> _cards = [];
  final List<CdsAction> _systemActions = [];

  /// Adds a card to the response.
  void addCard({
    required String summary,
    required CdsIndicator indicator,
    required CdsSource source,
    String? uuid,
    String? detail,
    List<CdsSuggestion>? suggestions,
    CdsSelectionBehavior? selectionBehavior,
    List<CdsCoding>? overrideReasons,
    List<CdsLink>? links,
  }) {
    _cards.add(
      CdsCard(
        summary: summary,
        indicator: indicator,
        source: source,
        uuid: uuid,
        detail: detail,
        suggestions: suggestions,
        selectionBehavior: selectionBehavior,
        overrideReasons: overrideReasons,
        links: links,
      ),
    );
  }

  /// Adds a system action to the response.
  void addSystemAction(CdsAction action) {
    _systemActions.add(action);
  }

  /// Builds the [CdsResponse].
  CdsResponse build() {
    return CdsResponse(
      cards: List.unmodifiable(_cards),
      systemActions: _systemActions.isEmpty
          ? null
          : List.unmodifiable(_systemActions),
    );
  }

  /// Convenience: creates a simple info card.
  void addInfoCard({
    required String summary,
    required String sourceLabel,
    String? detail,
  }) {
    addCard(
      summary: summary,
      indicator: CdsIndicator.info,
      source: CdsSource(label: sourceLabel),
      detail: detail,
    );
  }

  /// Convenience: creates a warning card.
  void addWarningCard({
    required String summary,
    required String sourceLabel,
    String? detail,
    List<CdsSuggestion>? suggestions,
  }) {
    addCard(
      summary: summary,
      indicator: CdsIndicator.warning,
      source: CdsSource(label: sourceLabel),
      detail: detail,
      suggestions: suggestions,
    );
  }

  /// Convenience: creates a critical card.
  void addCriticalCard({
    required String summary,
    required String sourceLabel,
    String? detail,
    List<CdsSuggestion>? suggestions,
  }) {
    addCard(
      summary: summary,
      indicator: CdsIndicator.critical,
      source: CdsSource(label: sourceLabel),
      detail: detail,
      suggestions: suggestions,
    );
  }

  /// Convenience: creates a suggestion with a single create action.
  static CdsSuggestion createSuggestion({
    required String label,
    String? uuid,
    bool? isRecommended,
    required CdsAction action,
  }) {
    return CdsSuggestion(
      label: label,
      uuid: uuid,
      isRecommended: isRecommended,
      actions: [action],
    );
  }

  /// Convenience: creates an absolute link.
  static CdsLink absoluteLink({
    required String label,
    required String url,
  }) {
    return CdsLink(label: label, url: url, type: CdsLinkType.absolute);
  }

  /// Convenience: creates a SMART app launch link.
  static CdsLink smartLink({
    required String label,
    required String url,
    String? appContext,
  }) {
    return CdsLink(
      label: label,
      url: url,
      type: CdsLinkType.smart,
      appContext: appContext,
    );
  }

  /// Convenience: creates a create action.
  static CdsAction createAction({
    required Resource resource,
    String? description,
  }) {
    return CdsAction(
      type: CdsActionType.create,
      resource: resource,
      description: description,
    );
  }

  /// Convenience: creates a delete action.
  static CdsAction deleteAction({
    required String resourceId,
    String? description,
  }) {
    return CdsAction(
      type: CdsActionType.delete,
      resourceId: resourceId,
      description: description,
    );
  }
}
