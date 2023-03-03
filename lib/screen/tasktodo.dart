import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FireService/FireService.dart';


Widget TaskToDo({required String task,required DocumentSnapshot data,required String id}){
  int count=0;
  return Column(
    children: [
      const Text("Task To Do"),
      const SizedBox(height: 10,),
      Text("Click Button : ${task}"),
      const SizedBox(height: 10,),
      TextButton(onPressed: (){
        int i= (int.parse(task));
        if(count==i){
          FireService().updatesTask(id);
        }else{
          count=count+1;
        }
      }, child: const Text("Click"))
    ],
  );
}

