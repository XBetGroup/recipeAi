import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/admob_util.dart' as admob;
import '/flutter_flow/custom_functions.dart' as functions;
import 'output_widget.dart' show OutputWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class OutputModel extends FlutterFlowModel<OutputWidget> {
  ///  Local state fields for this page.

  bool animFlag = false;

  bool voiceIngredientFlag = true;

  bool voiceInstructionFlag = true;

  String url = 'false';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Speak_ingredients widget.
  late bool speakIngredientsStatus;
  // Stores action output result for [Custom Action - myTTS] action in Speak_ingredients widget.
  bool? ret;
  // State field(s) for Speak_instructions widget.
  late bool speakInstructionsStatus;
  // Stores action output result for [Custom Action - myTTSCopy] action in Speak_instructions widget.
  bool? retCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    speakIngredientsStatus = false;
    speakInstructionsStatus = false;
  }

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
