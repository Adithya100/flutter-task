import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFielsHourly,numOfFielsMonthly,numOfFielsWeekly, percentage;
  final Color color;

  CloudStorageInfo(
      {this.svgSrc,
      this.title,
      this.totalStorage,
      this.numOfFielsMonthly,
        this.numOfFielsWeekly,
        this.numOfFielsHourly,
      this.percentage,
      this.color});
}

List demoMyFiels = [
  CloudStorageInfo(
    title: "Work",
    numOfFielsMonthly: 53282,
    numOfFielsWeekly: 3282,
    numOfFielsHourly: 282,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: Color(0xFFFF8B64),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Play",
    numOfFielsMonthly: 53284,
    numOfFielsWeekly: 3287,
    numOfFielsHourly: 583,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFF56C3E4),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Study",
    numOfFielsMonthly: 53283,
    numOfFielsWeekly: 3289,
    numOfFielsHourly: 987,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFFF5E7E),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Exercise",
    numOfFielsMonthly: 73284,
    numOfFielsWeekly: 3285,
    numOfFielsHourly: 486,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF4BCF83),
    percentage: 78,
  ),
  CloudStorageInfo(
    title: "Social",
    numOfFielsMonthly: 5328,
    numOfFielsWeekly: 328,
    numOfFielsHourly: 28,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFF7235D1),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Self Care",
    numOfFielsMonthly: 53287,
    numOfFielsWeekly: 3285,
    numOfFielsHourly: 882,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFF1C75B),
  ),
];
