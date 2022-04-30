// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'site.dart';

class Customer {
  final String name;
  final String surname;
  final String? fiscalCode;
  final String? vat;
  final String? pec;
  final String? tel;
  final String? email;
  final List<Site> sites;

  const Customer({
    required this.name,
    required this.surname,
    this.fiscalCode,
    this.vat,
    this.pec,
    this.tel,
    this.email,
    required this.sites,}
  );
}
