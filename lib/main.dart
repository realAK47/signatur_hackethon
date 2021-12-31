import 'package:flutter/material.dart';
import 'package:greensnap/screens/DonateScreen.dart';
import 'package:greensnap/screens/GetPlantScreen.dart';
import 'package:greensnap/screens/LoginScreen.dart';
import 'package:greensnap/screens/PlanCamScreen.dart';
import 'package:greensnap/screens/PlantATreeScreen.dart';
import 'screens/PlanCamScreen.dart';
import 'package:greensnap/screens/RegistrationScreen.dart';
import 'Data/DataCollection.dart';
import 'package:provider/provider.dart';
import 'screens/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  cameras = await availableCameras();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataCollection>(
        create: (context) => DataCollection(),
        child: MaterialApp(
          initialRoute: LoginScreen.id,
          routes: {
            HomeScreen.id: (context) => HomeScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            RegistrationCsreen.id: (context) => RegistrationCsreen(),
            PlantATreeScreen.id: (context) => PlantATreeScreen(),
            DonateScreen.id: (context) => DonateScreen(),
            GetPlantScreen.id: (context) => GetPlantScreen(),
            PlantCamScreen.id: (context) => PlantCamScreen(cameras: cameras),
          },
        ));
  }
}
