# Polish Parliament Members List

Web application in Flutter presenting a list of members of the Polish parliament of the current term. It demonstrates fetching of data from remote repository and separating codebase into layers with clear responsibilities. 

Data comes from the [official API](https://api.sejm.gov.pl/) provided by the Polish parliament. App uses **Cubit** as a state management solution. It utilizes also **Freezed** to generate immutable classes for state management and data models. In addition, it supports responsiveness to allow information to be viewed clearly on multiple screens.  

## Key Features
- **API Integration**: Fetches and displays real-time data.
- **Search Box**: Allows users to quickly find relevant item with real-time filtering.
- **Responsiveness**: Optimized for both desktop and mobile browsers.
- **Dynamic Fixed Header**: The headline disappears when scrolling up for better visibility.
- **State Management**: Uses efficient solutions to manage the application state seamlessly.

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

## Structure
## Dependencies
## Contribution

