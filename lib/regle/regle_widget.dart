import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegleWidget extends StatefulWidget {
  const RegleWidget({Key? key}) : super(key: key);

  @override
  _RegleWidgetState createState() => _RegleWidgetState();
}

class _RegleWidgetState extends State<RegleWidget> {
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 48,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Text(
                          'Règles d\'utilisation',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Playfair Display',
                                fontSize: 35,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Text(
                    '\nLa trottinette électrique est interdite aux enfants de moins de 12 ans (sous peine d\'une amende de 35 €) ;\n\nIl faut obligatoirement avoir une assurance trottinette électrique qui comprend à minima une garantie responsabilité civile, pour pouvoir circuler avec sa trottinette ( sous peine d\'une amende de 3 750 €) ;\n\nIl est interdit de circuler avec une trottinette (débridée) électrique qui dépasse les 25 km/h sur la voie publique ( sous peine d\'une amende de 1 500 €) ; \n \nUne trottinette électrique a l’interdiction de circuler sur les trottoirs sauf autorisation de la mairie ou si le moteur est coupé et que la trottinette est poussée à la main (sous peine d\'une amende de 135 €) ;\n\nEn agglomération : la circulation n\'est possible que sur les pistes cyclables ou à défaut sur les routes limitées à 50km/h (sous peine d\'une amende de 135 €) ;\n\nHors agglomération : vous pouvez circuler uniquement sur les pistes cyclables ou voies vertes ;\n\nIl est Interdit de circuler avec une trottinette (débridée) électrique qui dépasse les 25 km/h (sous peine d\'une amende de 1 500 €) ;\n\nIl est Interdit de porter des écouteurs pendant la conduite (sous peine d\'une amende de 135 €) ;\n\nLa trottinette doit obligatoirement être équipé de feux avants et arrières (sous peine d\'une amende de 35 €) ;\n\nIl faut obligatoirement porter un gilet rétroréfléchissant la nuit ou en situation de visibilité insuffisante (sous peine d\'une amende de 35 €) ;\n\nLa trottinette doit être équipé d’un klaxon (sous peine d\'une amende de 35 €) ;\n\nIl n\'est pas possible de transporter une autre personne (sous peine d\'une amende de 35 €) ;\n\nLa trottinette doit être garée sur le trottoir sans gêner le passage, lorsque s\'est autorisé, ou sur l\'emplacement dédié (sous peine d\'une amende de 35 €).\n',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
