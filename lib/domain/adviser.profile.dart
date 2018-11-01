class AdviserProfile {

  final String name;
  final String surname;
  final String title;
  final String country;
  final String city;
  final double rating;
  final String imgUrl;

  AdviserProfile(
      this.name,
      this.surname,
      this.title,
      this.country,
      this.city,
      this.rating,
      this.imgUrl);

  String getFullName() {
    return name + " " + surname;
  }
}