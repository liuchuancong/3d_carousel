import 'package:flutter/material.dart';

class CardViewModel {
  final String backdropAssetPath;
  final String headerTitle;
  final String title;
  final String subTitle;
  final IconData weatherType;
  final String temp;
  final String time;
  final IconData weatherCenterIcon;
  
  CardViewModel({
    this.backdropAssetPath,
    this.headerTitle,
    this.title,
    this.subTitle,
    this.weatherType,
    this.temp,
    this.time,
    this.weatherCenterIcon,
  });
}


final List<CardViewModel> heroCards = [
  new CardViewModel(
    backdropAssetPath: 'assets/1.jpg',
    headerTitle: '氤氲山气',
    title: '山水画卷',
    subTitle: '亮丽',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/2.jpg',
    headerTitle: '高耸入云',
    title: '腾飞的龙',
    subTitle: '一条',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/3.jpg',
    headerTitle: '和蔼可亲',
    title: '美丽的花纹',
    subTitle: '倒映',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/4.jpg',
    headerTitle: '夜幕四合',
    title: '山水画卷',
    subTitle: '亮丽',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/5.jpg',
    headerTitle: '氤氲山气',
    title: '山水画卷',
    subTitle: '亮丽',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/6.jpg',
    headerTitle: '氤氲山气',
    title: '山水画卷',
    subTitle: '亮丽',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/7.jpg',
    headerTitle: '氤氲山气',
    title: '山水画卷',
    subTitle: '亮丽',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/8.jpg',
    headerTitle: '氤氲山气',
    title: '山水画卷',
    subTitle: '亮丽',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/9.jpg',
    headerTitle: '氤氲山气',
    title: '山水画卷',
    subTitle: '亮丽',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
  new CardViewModel(
    backdropAssetPath: 'assets/10.jpg',
    headerTitle: '氤氲山气',
    title: '山水画卷',
    subTitle: '亮丽',
    weatherType: Icons.wb_cloudy,
    temp: '31.1℃',
    time: '2018 22:19:53',
    weatherCenterIcon: Icons.wb_cloudy,
  ),
];