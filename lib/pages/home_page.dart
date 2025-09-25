import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Center(
        child : Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
              Image.network(
                'https://th.bing.com/th/id/OIP.1d6nXDju1e0Xkf7UuiiWqwHaEK?w=232&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
                width: 200,
                height: 200,
              ),const Text (
                'Global Reciprocal Colleges Graduation Day 2025',
                style: TextStyle(fontSize: 20),
              ),
              Image.network(
                'https://th.bing.com/th/id/OIP.AfDG3EQl7S9sAUgu_6OLswHaE8?w=286&h=190&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
                width: 200,
                height: 200,
              ),const Text (
                'SportsFest',
                style: TextStyle(fontSize: 20),
              ),
            ]
        ),
      ),
    );
  }
}