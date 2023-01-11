import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1borneWidget extends StatefulWidget { // Il s'agit des même pages disponible dans la partie bornes cependant elles sont accessibles plus rapidement depuis l'onglet favoris
  const Page1borneWidget({Key? key}) : super(key: key);

  @override
  _Page1borneWidgetState createState() => _Page1borneWidgetState();
}

class _Page1borneWidgetState extends State<Page1borneWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: StreamBuilder<List<ReservationdeplaceRecord>>(
            stream: queryReservationdeplaceRecord(
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              List<ReservationdeplaceRecord>
                  columnReservationdeplaceRecordList = snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final columnReservationdeplaceRecord =
                  columnReservationdeplaceRecordList.isNotEmpty
                      ? columnReservationdeplaceRecordList.first
                      : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<UsersRecord> rowUsersRecordList = snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final rowUsersRecord = rowUsersRecordList.isNotEmpty
                          ? rowUsersRecordList.first
                          : null;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 70, 0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.arrow_back_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    context.pop();
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 60, 0),
                            child: Text(
                              'Place Broglie',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    final usersUpdateData = {
                                      'Borne1favourite':
                                          !rowUsersRecord!.borne1favourite!,
                                    };
                                    await rowUsersRecord!.reference
                                        .update(usersUpdateData);
                                  },
                                  value: rowUsersRecord!.borne1favourite!,
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 25,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      width: 390.1,
                      height: 356,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nombre de place :',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Text(
                          columnReservationdeplaceRecord!.nombredeplaceborne1!
                              .toString(),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'Places totales : 14\n\nAux alentours:\n-Hotel de ville\n-Théathe National du Rhin\n-Parking Opera-Broglie',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Visibility(
                        visible: !((valueOrDefault<bool>(
                                    currentUserDocument?.borne1rerserve,
                                    false) ==
                                true) ||
                            (valueOrDefault<bool>(
                                    currentUserDocument?.borne2rerserve,
                                    false) ==
                                true) ||
                            (valueOrDefault<bool>(
                                    currentUserDocument?.borne3rerserve,
                                    false) ==
                                true) ||
                            (valueOrDefault<bool>(
                                    currentUserDocument?.borne4reserve,
                                    false) ==
                                true) ||
                            (valueOrDefault<bool>(
                                    currentUserDocument?.borne5rerserve,
                                    false) ==
                                true) ||
                            (valueOrDefault<bool>(
                                    currentUserDocument?.borne6rerserve,
                                    false) ==
                                true) ||
                            (valueOrDefault<bool>(
                                    currentUserDocument?.borne7reserve,
                                    false) ==
                                true)),
                        child: AuthUserStreamWidget(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              final reservationdeplaceUpdateData = {
                                'Nombredeplaceborne1':
                                    FieldValue.increment(-(1)),
                              };
                              await columnReservationdeplaceRecord!.reference
                                  .update(reservationdeplaceUpdateData);

                              final usersUpdateData = createUsersRecordData(
                                borne1rerserve: true,
                              );
                              await currentUserReference!
                                  .update(usersUpdateData);

                              context.pushNamed('timer');
                            },
                            text: 'Réserver',
                            options: FFButtonOptions(
                              width: 20,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
