import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_flutter_bloc/blocs/weather_bloc.dart';
import 'package:weather_app_flutter_bloc/repositories/weather_repository.dart';
import 'package:weather_app_flutter_bloc/screens/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData.light(),
      home: RepositoryProvider(
        create: (context) => WeatherRepository(),
        child: BlocProvider(
          create: (context) => WeatherBloc(context.read<WeatherRepository>()),
          child: WeatherPage(),
        ),
      ),
    );
  }
}
