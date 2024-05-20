// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:calculator/controller/homescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // Homescreecontroller homeobj = Homescreecontroller();
  @override
  Widget build(BuildContext context) {
    final Homescreecontroller homeobj =
        Get.put(Homescreecontroller(), permanent: true);
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                autofocus: true,
                maxLength: 3,
                controller: homeobj.num1,
                decoration: InputDecoration(
                  label: Text("Enter a Number"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                autofocus: true,
                maxLength: 3,
                keyboardType: TextInputType.number,
                controller: homeobj.num2,
                decoration: InputDecoration(
                  label: Text("Enter a Number"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: GetBuilder<Homescreecontroller>(
                  builder: (controller) => Text(
                    controller.sum.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  homeobj.applyOp(op: "+");
                },
                child: Text("Add"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  homeobj.applyOp(op: "-");
                },
                child: Text("Subtract"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  homeobj.applyOp(op: "*");
                },
                child: Text("Multiple"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  homeobj.applyOp(op: "/");
                },
                child: Text("Divide"),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
