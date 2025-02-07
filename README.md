# Polish Parliament Members List

This Flutter web application showcases a list of members of the Polish Parliament for the current term. It demonstrates how to fetch data from a remote API (using the [official Polish Parliament API](https://api.sejm.gov.pl/)) and organize the codebase into clean, well-defined layers. The app uses Cubit for state management and Freezed to generate immutable classes for both state and data models. Additionally, it is designed to be fully responsive, ensuring a seamless experience across different devices and screen sizes.

## Key Features
- **API Integration**: Fetches and displays real-time data.
- **Search Box**: Allows users to quickly find relevant item with real-time filtering.
- **Responsiveness**: Optimized for both desktop and mobile browsers.
- **Dynamic Fixed Header**: The headline disappears when scrolling up for better visibility.
- **State Management**: Uses efficient solutions(Cubit) to manage the application state seamlessly.

## Screenshots
<div style="display: flex; align-items: center;">
  <img src="https://github.com/sebastiankoba/lista-poslow/blob/main/screenshot_large.png" width="600">
  <img src="https://github.com/sebastiankoba/lista-poslow/blob/main/screenshot_small.png" width="200">
</div>

## Installation
1. **Clone the repository**:
   ```sh
   git clone https://github.com/sebastiankoba/lista-poslow.git
   ```
2. **Navigate to the project directory**:
   ```sh
   cd lista-poslow
   ```
3. **Install dependencies**:
   ```sh
   flutter pub get
   ```
4. **Run the app**:
   ```sh
   flutter run -d chrome
   ```

## Dependencies
- [flutter_bloc](https://pub.dev/packages/flutter_bloc): Allows using Cubit for reactive state management.
- [dio](https://pub.dev/packages/dio): HTTP client for handling network requests.
- [go_router](https://pub.dev/packages/go_router): Package for managing navigation.
- [image_network](https://pub.dev/packages/image_network): For displaying network images with caching support.
- [json_serializable](https://pub.dev/packages/json_serializable): Generates model classes for JSON serialization and deserialization.

For the full list of dependencies and their versions, please refer to the [`pubspec.yaml`](pubspec.yaml) file.


