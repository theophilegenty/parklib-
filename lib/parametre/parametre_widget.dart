import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class ParametreWidget extends StatefulWidget {
  const ParametreWidget({Key? key}) : super(key: key);

  @override
  _ParametreWidgetState createState() => _ParametreWidgetState();
}

class _ParametreWidgetState extends State<ParametreWidget> {
  TextEditingController? adresseController;
  TextEditingController? prenomController;
  bool? switchValue;
  TextEditingController? dateDeNaissanceController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final usersUpdateData = createUsersRecordData();
      await currentUserReference!.update(usersUpdateData);
    });

    adresseController = TextEditingController(
        text: valueOrDefault(currentUserDocument?.adresse, ''));
    prenomController = TextEditingController(
        text: valueOrDefault(currentUserDocument?.nomprenom, ''));
    dateDeNaissanceController = TextEditingController(
        text: valueOrDefault(currentUserDocument?.datedenaissance, ''));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    adresseController?.dispose();
    prenomController?.dispose();
    dateDeNaissanceController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed('Pagedaccueil');
          },
        ),
        title: Text(
          'Paramètres',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Playfair Display',
                fontSize: 38,
                fontStyle: FontStyle.italic,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: InkWell(
              onTap: () async {
                final usersUpdateData = createUsersRecordData();
                await currentUserReference!.update(usersUpdateData);
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                    child: Switch(
                      value: switchValue ??= false,
                      onChanged: (newValue) async {
                        setState(() => switchValue = newValue!);
                        if (newValue!) {
                          setDarkModeSetting(context, ThemeMode.dark);
                        } else {
                          setDarkModeSetting(context, ThemeMode.light);
                        }
                      },
                      activeColor: FlutterFlowTheme.of(context).primaryText,
                      activeTrackColor:
                          FlutterFlowTheme.of(context).primaryText,
                      inactiveTrackColor:
                          FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: prenomController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Nom Prénom',
                          labelStyle: FlutterFlowTheme.of(context).bodyText2,
                          hintText: valueOrDefault(
                              currentUserDocument?.nomprenom, ''),
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.normal,
                            ),
                        maxLines: null,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: adresseController,
                        onFieldSubmitted: (_) async {
                          final usersUpdateData = createUsersRecordData(
                            email: adresseController!.text,
                          );
                          await currentUserReference!.update(usersUpdateData);
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Adresse',
                          labelStyle: FlutterFlowTheme.of(context).bodyText2,
                          hintText: currentUserEmail,
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                        maxLines: null,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: dateDeNaissanceController,
                        onFieldSubmitted: (_) async {
                          final usersUpdateData = createUsersRecordData();
                          await currentUserReference!.update(usersUpdateData);
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Date de naissance',
                          labelStyle: FlutterFlowTheme.of(context).bodyText2,
                          hintText: valueOrDefault(
                              currentUserDocument?.datedenaissance, ''),
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                        maxLines: null,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final usersUpdateData = createUsersRecordData( // on met à jour la base de données à partir des informations modifiés dans les différents text field
                          nomprenom: prenomController!.text,
                          datedenaissance: dateDeNaissanceController!.text,
                          adresse: adresseController!.text,
                        );
                        await currentUserReference!.update(usersUpdateData);
                      },
                      text: 'Enregistrer',
                      options: FFButtonOptions(
                        width: 200,
                        height: 50,
                        color: Colors.black,
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent(); // on déconnecte l'utilisateur à l'aide du système d'autentification de firebase
                        await signOut();

                        context.pushNamedAuth('deconnexion', mounted);
                      },
                      text: 'Déconnection', 
                      options: FFButtonOptions(
                        width: 200,
                        height: 50,
                        color: Colors.black,
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await deleteUser(context); // l'utilsateur est supprimé du système d'autentification tout comme son fichier utilisateur dans la collection afin qu'on est pas affaire à des doubles comptes 
                        await currentUserReference!.delete();

                        context.pushNamed('connection2');
                      },
                      text: 'Supprimer compte',
                      options: FFButtonOptions(
                        width: 200,
                        height: 50,
                        color: Colors.black,
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 17,
                            ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('regle');
                          },
                          text: 'Règles d\'utilisation',
                          options: FFButtonOptions(
                            width: 190,
                            height: 50,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 2, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('accident');
                          },
                          text: 'Accident',
                          options: FFButtonOptions(
                            width: 150,
                            height: 50,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context).subtitle1,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
