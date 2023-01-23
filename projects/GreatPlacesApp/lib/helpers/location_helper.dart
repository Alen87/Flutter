const MAPBOX_API_KEY =
    'pk.eyJ1Ijoic3B1enZhMTk4NyIsImEiOiJjbGQ5ZnpiMWIwOGx2M3Bwa29jbG16OXp3In0.crWZsb8KNbJkd9bF463PZA';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/$longitude,$latitude,14.25,0,60/300x300?access_token=$MAPBOX_API_KEY';
  }
}
