# Insightify

Insightify is a Flutter app that allows you to view your Spotify data in a convenient way. By importing your downloaded Spotify data files, you can view your listening history, top lists, and more.

## Getting Started

To get started with Insightify, you can download the app from the [Google Play Store](https://play.google.com/store/apps/details?id=com.netanelk.insightify).

If you prefer to compile the app yourself, follow these steps:

1. Clone this repository to your local machine.
2. Open the project in your preferred IDE or text editor.
3. Run `flutter pub get` to install the required dependencies.
4. Obtain a Spotify API key by following the instructions in the [Spotify Web API Documentation](https://developer.spotify.com/documentation/web-api/).
5. Create a new file named `secrets.dart` in the `lib/auth` directory.
6. Add the following code to the `secrets.dart` file, replacing `YOUR_CLIENT_ID` with your actual client ID and `YOUR_CLIENT_SECRET` with your actual client secret:

```dart
const String spotifyClientID = 'YOUR_CLIENT_ID';
const String spotifyClientSecret = 'YOUR_CLIENT_SECRET';
```
7. Save the `secrets.dart` file.

## Features

Insightify includes the following features:

- Import your downloaded Spotify data files (Extended data or Account data).
- View your top artists and tracks based on your listening history.
- See how long you've streamed music.
- See the day you streamed the most.
- If you imported the extended data, you can also view your top albums.
- Clear your data to start fresh.
- Dedicated page for each artist and album.
- Avarage listening time per day statistics.
- View your entire listening history.
- View your top lists and history by time period.
- Sort your top lists by different metrics.
- Time of the Day statistics and charts.

### Planned Features

- Dedicated page for each track.
- Search your top lists.
- View a timeline of your listening history.
- Data visualizations in artist, album and track pages.
- Connect to your Spotify account to continuously update your data.

## Contributing

If you would like to contribute to Insightify, please follow these steps:

1. Fork this repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive commit messages.
4. Push your changes to your fork.
5. Submit a pull request to this repository.

### Donations

If you would like to support the development of Insightify, you can donate to me via [PayPal](https://paypal.me/kleinetanel).

<form action="https://www.paypal.com/donate" method="post" target="_top">
<input type="hidden" name="business" value="QZLWDZNVRV53C" />
<input type="hidden" name="no_recurring" value="0" />
<input type="hidden" name="item_name" value="Fuel app development! Your donation shapes personalized Spotify insights. Join the melody-making community! 🎵 " />
<input type="hidden" name="currency_code" value="ILS" />
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
<img alt="" border="0" src="https://www.paypal.com/en_IL/i/scr/pixel.gif" width="1" height="1" />
</form>


## License

Insightify is licensed under the MIT License. See `LICENSE` for more information.