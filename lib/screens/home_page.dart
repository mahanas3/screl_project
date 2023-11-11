import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screl_project/custom_widget/custom_button.dart';
import 'package:screl_project/custom_widget/customdelete_button.dart';
import 'package:screl_project/provider/homepage_provider.dart';
import 'package:screl_project/utilities/constant.dart';
import 'package:screl_project/utilities/dimensions.dart';

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
      context.read<HomePageProvider>().addFruit('Mahanas', context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Constant.primaryColor,
            title: const Center(
              child: Text(
                "Todo-List",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )),
        body: Consumer<HomePageProvider>(
            builder: (BuildContext context, value, Widget? child) {
          return value.loading
              ? const CircularProgressIndicator()
              : value.todo == null
                  ? const Text('Loading..')
                  : ListView.builder(
                      itemCount: value.todo.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Card(
                              shadowColor: Constant.accentColor,
                              elevation: 0.5,
                              color: Constant.accentColor,
                              child: Container(
                                height: Dimensions.heightCalc(context, 40),
                                width: Dimensions.widthCalc(context, 80),
                                child: Text(value.todo[index]!.name!,
                                    style: const TextStyle(
                                        color: Constant.textColor)),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CustomButtonWidget(
                                onPressed: () {
                                  value.addFruit('New Todo', context);
                                },
                                buttonText: 'Add'),
                            CustomDeleteButton(onPressed: () {
                              value.deleteFruit(index, context);
                            })
                          ],
                        );
                      },
                    );
        }));
  }
}
