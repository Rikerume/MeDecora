import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cadastrar_widget.dart' show CadastrarWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrarModel extends FlutterFlowModel<CadastrarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroController;
  String? Function(BuildContext, String?)? emailCadastroControllerValidator;
  // State field(s) for Senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  // State field(s) for SenhaComfirmar widget.
  FocusNode? senhaComfirmarFocusNode;
  TextEditingController? senhaComfirmarController;
  late bool senhaComfirmarVisibility;
  String? Function(BuildContext, String?)? senhaComfirmarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaVisibility = false;
    senhaComfirmarVisibility = false;
  }

  void dispose() {
    emailCadastroFocusNode?.dispose();
    emailCadastroController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();

    senhaComfirmarFocusNode?.dispose();
    senhaComfirmarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
