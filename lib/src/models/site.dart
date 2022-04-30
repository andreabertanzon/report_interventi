class Site {
  final String address;
  final String city;
  final String? state;
  final String? cap;
  final String country;

  const Site({
    required this.address,
    required this.city,
    this.state,
    this.cap,
    required this.country,
  });
}
