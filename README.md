# 🌤️ Weather App - Flutter + BLoC

Bu uygulama, Flutter framework'ü ve BLoC (Business Logic Component) mimarisi kullanılarak geliştirilmiş basit bir hava durumu uygulamasıdır. OpenWeatherMap API'si ile şehir bazlı güncel hava durumu verilerini kullanıcıya sunar.

## 🚀 Özellikler

- Şehir adına göre hava durumu sorgulama
- Sıcaklık bilgisi gösterimi (°C)
- Hava durumu durumuna göre emoji gösterimi (☀️ / 🌧️)
- Yükleniyor göstergesi ve hata yönetimi
- Modern ve sade kullanıcı arayüzü
- Flutter BLoC ile state yönetimi

## 🧠 Kullanılan Teknolojiler

- Flutter
- Dart
- flutter_bloc
- OpenWeatherMap API
- Material UI

## 📸 Ekran Görüntüleri

<a><img src="https://github.com/user-attachments/assets/3edcad72-e22e-4d51-a7ee-76f19b40969f" width="200" /></a>
<a><img src="https://github.com/user-attachments/assets/ff41924d-3b1d-45e6-a46e-fabf636b0e88" width="200" /></a>
<a><img src="https://github.com/user-attachments/assets/4380a364-38e8-4d7f-aa39-7aee09c46817" width="200" /></a>


## ⚙️ Kurulum ve Kullanım

1. Bu projeyi klonlayın:
   ```bash
   git clone https://github.com/kullanici-adin/weather_app_flutter_bloc.git
   cd weather_app_flutter_bloc
2. Bağımlılıkları yükleyin:
   ```bash
   flutter pub get
3. API anahtarını ekleyin:
   ```bash
   final String _apiKey = 'SENIN_API_KEY';
4. Uygulamayı çalıştırın:
   ```bash
    flutter run
   

📁 Proje Yapısı
   ```bash
lib/
├── blocs/
│   ├── weather_bloc.dart
│   ├── weather_event.dart
│   └── weather_state.dart
├── models/
│   └── weather_model.dart
├── repositories/
│   └── weather_repository.dart
└── repositories/
│    └── weather_page.dart
└── main.dart
