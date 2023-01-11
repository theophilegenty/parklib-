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

class Page3borneWidget extends StatefulWidget {
  const Page3borneWidget({Key? key}) : super(key: key);

  @override
  _Page3borneWidgetState createState() => _Page3borneWidgetState();
}

class _Page3borneWidgetState extends State<Page3borneWidget> {
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
                  Column(
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 10, 0),
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
                                      context.pushNamed('Pagedaccueil');
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 15, 20, 0),
                                child: Text(
                                  '61 Avenue de la forêt noire',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      final usersUpdateData = {
                                        'Borne3favourite':
                                            !rowUsersRecord!.borne3favourite!,
                                      };
                                      await rowUsersRecord!.reference
                                          .update(usersUpdateData);
                                    },
                                    value: rowUsersRecord!.borne3favourite!,
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
                            ],
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Image.network(
                          'data:image/jpeg;base64,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',
                          width: 390.1,
                          height: 356,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Places disponibles actuellement: ',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Text(
                              columnReservationdeplaceRecord!
                                  .nombredeplaceborne3!
                                  .toString(),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Places totales : 18\n\nAux alentours:\n-EM\n-Fac de Stras\n-Quartier Esplanade',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                                    'Nombredeplaceborne3':
                                        FieldValue.increment(-(1)),
                                  };
                                  await columnReservationdeplaceRecord!
                                      .reference
                                      .update(reservationdeplaceUpdateData);

                                  final usersUpdateData = createUsersRecordData(
                                    borne3rerserve: true,
                                  );
                                  await currentUserReference!
                                      .update(usersUpdateData);

                                  context.pushNamed('timer');
                                },
                                text: 'Réserver',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
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
