// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:task1/core/constance/images/images_assets.dart';
import 'package:task1/data/auth_service/crud.dart';

import '../../../../data/models/weather_model.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final cityController = TextEditingController();
  Weather? weather;

  @override
  void dispose() {
    cityController.dispose();
    super.dispose();
  }

  Crud crud = Crud();

  void fetchWeatherData() async {
    final cityName = cityController.text;
    final fetchedWeather = await crud.fetchWeather(cityName);
    setState(() {
      weather = fetchedWeather;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: cityController,
              decoration: const InputDecoration(
                labelText: 'Enter City Name',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              fetchWeatherData();
            },
            child: const Text('Get Weather'),
          ),
          const SizedBox(
            height: 30,
          ),
          if (weather != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 250,
                width: 250,
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(back), fit: BoxFit.cover)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City : ${weather!.cityName}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Temperature : ${weather!.temperature}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Humidity : ${weather!.humidity}%',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Wind Speed : ${weather!.windSpeed}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
