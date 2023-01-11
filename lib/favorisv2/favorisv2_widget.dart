import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Favorisv2Widget extends StatefulWidget {
  const Favorisv2Widget({Key? key}) : super(key: key);

  @override
  _Favorisv2WidgetState createState() => _Favorisv2WidgetState();
}

class _Favorisv2WidgetState extends State<Favorisv2Widget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault<bool>(currentUserDocument?.borne1favourite, false) ||
          valueOrDefault<bool>(currentUserDocument?.borne2favourite, false) ||
          valueOrDefault<bool>(currentUserDocument?.borne3favourite, false) ||
          valueOrDefault<bool>(currentUserDocument?.borne4favourite, false) ||
          valueOrDefault<bool>(currentUserDocument?.borne5favourite, false) ||
          valueOrDefault<bool>(currentUserDocument?.borne6favourite, false) ||
          valueOrDefault<bool>(currentUserDocument?.borne7favourite, false)) {
        scaffoldKey.currentState!.openDrawer();
      } else {
        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) { // Un drawer est défini sur la page, il est relié à toute les bornes disponibles, si la borne est ajouté en favorite elle apparait dans ce widget et l'utilisateur peut y accéder
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.network(
              'https://picsum.photos/seed/113/600',
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
            if (valueOrDefault<bool>(
                currentUserDocument?.borne1favourite, false))
              AuthUserStreamWidget(
                builder: (context) => InkWell(
                  onTap: () async {
                    context.pushNamed('page1borne');
                  },
                  child: ListTile(
                    title: Text(
                      'Borne Broglie',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: FlutterFlowTheme.of(context).primaryBackground,
                    dense: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
                currentUserDocument?.borne2favourite, false))
              AuthUserStreamWidget(
                builder: (context) => InkWell(
                  onTap: () async {
                    context.pushNamed('page2borne');
                  },
                  child: ListTile(
                    title: Text(
                      'Borne place de Bordeaux',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: FlutterFlowTheme.of(context).primaryBackground,
                    dense: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
                currentUserDocument?.borne3rerserve, false))
              AuthUserStreamWidget(
                builder: (context) => InkWell(
                  onTap: () async {
                    context.pushNamed('page3borne');
                  },
                  child: ListTile(
                    title: Text(
                      'Borne avenue de la forêt noire',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: FlutterFlowTheme.of(context).primaryBackground,
                    dense: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
                currentUserDocument?.borne4favourite, false))
              AuthUserStreamWidget(
                builder: (context) => InkWell(
                  onTap: () async {
                    context.pushNamed('page4borne');
                  },
                  child: ListTile(
                    title: Text(
                      'Borne avenue de colmar',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: FlutterFlowTheme.of(context).primaryBackground,
                    dense: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
                currentUserDocument?.borne5favourite, false))
              AuthUserStreamWidget(
                builder: (context) => InkWell(
                  onTap: () async {
                    context.pushNamed('page5borne');
                  },
                  child: ListTile(
                    title: Text(
                      'Borne place de l\'étoile',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: FlutterFlowTheme.of(context).primaryBackground,
                    dense: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
                currentUserDocument?.borne6favourite, false))
              AuthUserStreamWidget(
                builder: (context) => InkWell(
                  onTap: () async {
                    context.pushNamed('page6borne');
                  },
                  child: ListTile(
                    title: Text(
                      'Borne Gare centrale',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: FlutterFlowTheme.of(context).primaryBackground,
                    dense: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
                currentUserDocument?.borne7favourite, false))
              AuthUserStreamWidget(
                builder: (context) => InkWell(
                  onTap: () async {
                    context.pushNamed('page7borne');
                  },
                  child: ListTile(
                    title: Text(
                      'Borne Kleber',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: FlutterFlowTheme.of(context).primaryBackground,
                    dense: false,
                  ),
                ),
              ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.list,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30,
                        ),
                        onPressed: () async {
                          scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                        child: Text(
                          'Favoris',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 40,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          constraints: BoxConstraints(
                            maxWidth: 50,
                            maxHeight: 50,
                          ),
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: FaIcon(
                              FontAwesomeIcons.home,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () async {
                              context.pushNamed('Pagedaccueil');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 750,
                child: Stack(
                  children: [
                    if (!(valueOrDefault<bool>(
                            currentUserDocument?.borne1favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne2favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne3favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne4favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne5favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne6favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne7favourite, false)))
                      Align(
                        alignment: AlignmentDirectional(-0.37, 0.77),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            'Aucune borne n\'a été ajouté au favorite',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 40,
                                    ),
                          ),
                        ),
                      ),
                    if (!(valueOrDefault<bool>(
                            currentUserDocument?.borne1favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne2favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne3favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne4favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne5favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne6favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne7favourite, false)))
                      Align(
                        alignment: AlignmentDirectional(0, -0.6),
                        child: AuthUserStreamWidget(
                          builder: (context) => Lottie.network(
                            'https://assets1.lottiefiles.com/packages/lf20_eDpEXf.json',
                            width: 300,
                            height: 300,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                        ),
                      ),
                    if (valueOrDefault<bool>(
                            currentUserDocument?.borne1favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne2favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne3favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne4favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne5favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne6favourite, false) ||
                        valueOrDefault<bool>(
                            currentUserDocument?.borne7favourite, false))
                      Align(
                        alignment: AlignmentDirectional(0, -0.6),
                        child: AuthUserStreamWidget(
                          builder: (context) => Lottie.asset(
                            'assets/lottie_animations/fire.json',
                            width: 500,
                            height: 300,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
