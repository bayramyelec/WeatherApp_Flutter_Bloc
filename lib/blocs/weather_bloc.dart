import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_flutter_bloc/blocs/weather_event.dart';
import 'package:weather_app_flutter_bloc/blocs/weather_state.dart';
import 'package:weather_app_flutter_bloc/repositories/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(WeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherLoading());
      try {
        final weather = await weatherRepository.fetchWeather(event.cityName);
        emit(WeatherLoaded(weather));
      } catch (e) {
        emit(WeatherError('Hava durumu alınamadı.'));
      }
    });
  }
}
