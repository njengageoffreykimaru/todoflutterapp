import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:todoflutterapp/provider/radiobuttons.dart';
import 'package:todoflutterapp/radio_widget.dart';

class Add_NewTask extends ConsumerWidget {
  Add_NewTask({Key? key}) : super(key: key);

  int? _value = 0;


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[50],
        foregroundColor: Colors.black,
        elevation: 0,
        title: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 25,
          ),
          title: Text("Droiders", style: TextStyle(color: Colors.green)),
          subtitle: Text("Jeff Unique", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_month_sharp, color: Colors.green),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notification_add, color: Colors.green),
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.add, color: Colors.green),
                ),
              ],
            ),
          )
        ],
      ),
    body: SingleChildScrollView(
    padding: EdgeInsets.all(30),
    child: Container(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 30,
          child: Image.asset('assets/right.png')),
    SizedBox(
    width: double.infinity,
    child: Text("New Task", textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    )),
    Divider(color: Colors.green, thickness: 1.2,),
    SizedBox(height: 10,),
    Text("Task Title"),
    SizedBox(height: 10,),
    TextFormField(
    autofocus: false,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.task, color: Colors.green),
    labelText: 'Task Name',
    ),
    ),
    SizedBox(height: 10,),
    Text("Task Description"),
    SizedBox(height: 10,),
    Container(
    child: TextFormField(
    autofocus: false,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.red, // Set the border color here
    width: 2.0, // Set the border width
    ),
    ),
    prefixIcon: Icon(Icons.description_sharp, color: Colors.green),
    labelText: 'Description',
    ),
    ),
    ),
      SizedBox(height: 8,),
      Row(
        children: [
          Expanded(child: RadioWidget(titleRadio: 'AI',
            categColor: Colors.green, valueInput: 1,
            onChangeValue: () =>ref.read(radioProvider.notifier).update((state) => 1),)),
          Expanded(child: RadioWidget(titleRadio: 'Ml',
            categColor: Colors.blue.shade700, valueInput: 2,
           onChangeValue: () =>ref.read(radioProvider.notifier).update((state) => 2),)),
          Expanded(child: RadioWidget(titleRadio: 'Android',
            categColor: Colors.red, valueInput: 3,
            onChangeValue: () => ref.read(radioProvider.notifier).update((state) => 3),)),
        ],
      ),

      Row(
        children: [
          Container(
            width: 430, // Increase the width to 250 or any desired value
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(Icons.calendar_today, color: Colors.green),
                      labelText: 'Date',
                    ),
                  ),
                ),
                Gap(10), // Assuming Gap is a custom widget
                Flexible(
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(Icons.lock_clock, color: Colors.green),
                      labelText: 'hours',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),


      SizedBox(height: 10,),

    Row(
    children: [
    Container(
    width: 210,
    child: ElevatedButton(
    onPressed: () {
    // Add your Cancel button action here
    },
    style: ElevatedButton.styleFrom(
    primary: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(
    color: Colors.blue,
    )),
    ),
    child: Text("Cancel"),
    ),
    ),
    SizedBox(width: 10),
    Container(
    width: 210,
    child: ElevatedButton(
    onPressed: () {
    // Add your Submit button action here
    },
    style: ElevatedButton.styleFrom(
    primary: Colors.red, // Background color
    onPrimary: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child: Text("Create"),
    ),
    )
    ],
    ),
    ],
    ),
    ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.task,color: Colors.green,),label: 'Add New Task'),
          BottomNavigationBarItem(icon: Icon(Icons.add_task_outlined,color: Colors.green,), label: 'Task Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_sharp,color: Colors.green,),label: 'Task Calendar')

        ],
      ),
    );
  }
}
