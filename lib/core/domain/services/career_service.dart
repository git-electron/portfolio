import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/core/i18n/app_localization.g.dart';

@injectable
class CareerService {
  String getWorkplaceTitle(int index) => [
    'octa',
    'product detailing',
    'dna team',
  ][index];

  String getWorkplaceYears(int index) => [
    '2020 — 2023',
    '2023 — 2024',
    '2024 — 2025',
  ][index];

  String getWorkplaceDescription(int index, {required BuildContext context}) => [
    context.t.home.career.octa.description,
    context.t.home.career.product_detailing.description,
    context.t.home.career.dna_team.description,
  ][index];
}
