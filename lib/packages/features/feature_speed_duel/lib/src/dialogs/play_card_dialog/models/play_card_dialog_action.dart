import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_duel_disk/generated/locale_keys.g.dart';
import 'package:smart_duel_disk/packages/features/feature_speed_duel/lib/src/dialogs/base/models/speed_duel_dialog_action.dart';
import 'package:smart_duel_disk/packages/features/feature_speed_duel/lib/src/models/card_position.dart';

import 'play_card_dialog_result.dart';

abstract class PlayCardDialogAction extends SpeedDuelDialogAction {
  const PlayCardDialogAction({
    required String name,
    required IconData icon,
    required PlayCardDialogResult result,
  }) : super(
          name: name,
          icon: icon,
          result: result,
        );
}

class NormalSummonAction extends PlayCardDialogAction {
  const NormalSummonAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_normal_summon,
          icon: FontAwesomeIcons.caretSquareUp,
          result: const PlayCardUpdatePosition(position: CardPosition.faceUp),
        );
}

class FlipSummonAction extends PlayCardDialogAction {
  const FlipSummonAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_flip_summon,
          icon: FontAwesomeIcons.caretSquareUp,
          result: const PlayCardUpdatePosition(position: CardPosition.faceUp),
        );
}

class ActivateAction extends PlayCardDialogAction {
  const ActivateAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_activate,
          icon: FontAwesomeIcons.fireAlt,
          result: const PlayCardUpdatePosition(position: CardPosition.faceUp),
        );
}

class ToAttackAction extends PlayCardDialogAction {
  const ToAttackAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_to_attack,
          icon: FontAwesomeIcons.gavel,
          result: const PlayCardUpdatePosition(position: CardPosition.faceUp),
        );
}

class SpecialSummonAttackAction extends PlayCardDialogAction {
  const SpecialSummonAttackAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_summon_attack,
          icon: FontAwesomeIcons.gavel,
          result: const PlayCardUpdatePosition(position: CardPosition.faceUp),
        );
}

class ToDefenceAction extends PlayCardDialogAction {
  const ToDefenceAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_to_defence,
          icon: FontAwesomeIcons.shieldAlt,
          result: const PlayCardUpdatePosition(position: CardPosition.faceUpDefence),
        );
}

class SpecialSummonDefenceAction extends PlayCardDialogAction {
  const SpecialSummonDefenceAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_summon_defence,
          icon: FontAwesomeIcons.shieldAlt,
          result: const PlayCardUpdatePosition(position: CardPosition.faceUpDefence),
        );
}

class FlipAction extends PlayCardDialogAction {
  const FlipAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_flip,
          icon: FontAwesomeIcons.undoAlt,
          result: const PlayCardUpdatePosition(position: CardPosition.faceUpDefence),
        );
}

class SetMonsterAction extends PlayCardDialogAction {
  const SetMonsterAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_set,
          icon: FontAwesomeIcons.caretSquareDown,
          result: const PlayCardUpdatePosition(position: CardPosition.faceDownDefence),
        );
}

class SetSpellTrapAction extends PlayCardDialogAction {
  const SetSpellTrapAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_set,
          icon: FontAwesomeIcons.caretSquareDown,
          result: const PlayCardUpdatePosition(position: CardPosition.faceDown),
        );
}

class DestroyAction extends PlayCardDialogAction {
  const DestroyAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_destroy,
          icon: FontAwesomeIcons.bomb,
          result: const PlayCardUpdatePosition(position: CardPosition.destroy),
        );
}

class DeclareAction extends PlayCardDialogAction {
  const DeclareAction()
      : super(
          name: LocaleKeys.speed_duel_card_action_declare,
          icon: FontAwesomeIcons.bullhorn,
          result: const PlayCardDeclare(),
        );
}
