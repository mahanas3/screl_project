import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screl_project/custom_widget/custom_button.dart';
import 'package:screl_project/custom_widget/customdelete_button.dart';
import 'package:screl_project/provider/homepage_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<HomePageProvider>().addFruit('fruit');
    });
  }

  List fruitsname = ['apple', 'mango', 'orange', 'grape', 'banana'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black87,
            title: const Center(
              child: Text(
                "Todo-List",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )),
        body: Consumer<HomePageProvider>(
            builder: (BuildContext context, value, Widget? child) {
          return ListView.builder(
            itemCount: value.fruits.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 70,
                child: Card(
                  shadowColor: Colors.black87,
                  elevation: 0.5,
                  color: Colors.black,
                  child: Row(
                    children: [
                      Text(value.fruits[index]!.name!,
                          style: const TextStyle(color: Colors.white)),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomButtonWidget(
                          onPressed: () {
                            value.addFruit('New Fruit');
                          },
                          buttonText: 'Add'),
                      CustomDeleteButton(onPressed: () {
                        value.deleteFruit(index);
                      })
                    ],
                  ),
                ),
              );
            },
          );
        }));
  }
}
