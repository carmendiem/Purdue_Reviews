import 'package:dining_court_app/webscrap.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Residential Dining'),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Map',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.search, color: Colors.amber),
              ),
            ),
          ],
        ),
        body: const Center(
          child: Text('Dining Courts'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text('button'),
          onPressed: () {},
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.black,
          child: Text(
            'bottom',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ));
