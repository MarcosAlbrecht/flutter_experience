import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/documents/documents_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/documents/scan/document_scan_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/documents/scan_confirm/document_scan_confirm_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/done/done_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/find_patient/find_patient_router.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/patient/patient_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/self_service_controller.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/self_service_page.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/serf_service/whio_i_am/who_i_am_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class SelfServiceModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton((i) => SelfServiceController())];

  @override
  String get moduleRouteName => '/self-service';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => const SelfServicePage(),
        '/whoIAm': (context) => const WhoIAmPage(),
        '/find-patient': (context) => const FindPatientRouter(),
        '/patient': (context) => const PatientPage(),
        '/documents': (context) => const DocumentsPage(),
        '/documents/scan': (context) => const DocumentScanPage(),
        '/documents/scan/confirm': (context) => const DocumentScanConfirmPage(),
        '/done': (context) => const DonePage(),
      };
}
