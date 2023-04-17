// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// import '../player_model.dart';

// class SkillScreen extends StatefulWidget {
//   const SkillScreen({super.key});

//   @override
//   State<SkillScreen> createState() => _SkillScreenState();
// }

// class _SkillScreenState extends State<SkillScreen> {
//   final skillSearchController = TextEditingController();

//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       final playerModel = PlayerModelProvider.of(context);
//       playerModel?.searchSkill(query: '');
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).unfocus();
//         SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//       },
//       child: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Navigator.of(context).pushNamed('home/main_screen/create_skill');
//           },
//           backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//           child: const Icon(Icons.add),
//         ),
//         backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//           title: TextField(
//             controller: skillSearchController,
//             onChanged: (value) => playerModel?.searchSkill(query: value),
//             cursorColor: Colors.white,
//             style: const TextStyle(color: Colors.white),
//             maxLines: 1,
//             decoration: const InputDecoration(
//               fillColor: Color.fromARGB(255, 194, 164, 75),
//               filled: true,
//               contentPadding: EdgeInsets.all(10),
//               floatingLabelAlignment: FloatingLabelAlignment.start,
//               floatingLabelBehavior: FloatingLabelBehavior.always,
//               label: Text('Поиск', style: TextStyle(color: Colors.white)),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white, width: 3),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white, width: 3),
//               ),
//             ),
//           ),
//         ),
//         body: ListView.separated(
//             keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//             itemBuilder: (BuildContext context, int index) {
//               return Skill(
//                 index: index,
//                 serchFieldController: skillSearchController,
//               );
//             },
//             separatorBuilder: (BuildContext context, int index) {
//               return const SizedBox();
//             },
//             itemCount: playerModel?.filteredSkillList.length ?? 0),
//       ),
//     );
//   }
// }

// class Skill extends StatelessWidget {
//   final int index;
//   final TextEditingController serchFieldController;
//   const Skill({
//     super.key,
//     required this.index,
//     required this.serchFieldController,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);
//     return Slidable(
//       startActionPane: ActionPane(
//         extentRatio: 0.25,
//         motion: const BehindMotion(),
//         children: [
//           SlidableAction(
//             onPressed: (context) {
//               FocusScope.of(context).unfocus();
//               serchFieldController.clear();
//               playerModel?.removeSkill(skill: playerModel.filteredSkillList[index]);
//             },
//             backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//             foregroundColor: Colors.black38,
//             icon: Icons.delete,
//           ),
//           SlidableAction(
//             onPressed: (context) {
//               FocusScope.of(context).unfocus();
//               Navigator.of(context)
//                   .pushNamed('home/main_screen/edit_skill', arguments: [index, serchFieldController]);
//             },
//             backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//             foregroundColor: Colors.black38,
//             icon: Icons.edit,
//           ),
//         ],
//       ),
//       child: Card(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//         color: const Color.fromARGB(255, 253, 236, 166),
//         child: ExpansionTile(
//           title: Text(
//             playerModel?.filteredSkillList[index][0],
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           expandedCrossAxisAlignment: CrossAxisAlignment.start,
//           childrenPadding: const EdgeInsets.only(left: 16),
//           textColor: Colors.lightBlue,
//           collapsedTextColor: Colors.black,
//           expandedAlignment: Alignment.topLeft,
//           children: [
//             Text(
//               playerModel?.filteredSkillList[index][1],
//               style: const TextStyle(fontSize: 18),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CreateSkillScreen extends StatelessWidget {
//   const CreateSkillScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final skillNameController = TextEditingController();
//     final skillDescriptionController = TextEditingController();
//     final playerModel = PlayerModelProvider.of(context);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//                 if (skillNameController.text.isEmpty) return;
//                 playerModel?.addSkill(skill: [skillNameController.text, skillDescriptionController.text]);
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.check))
//         ],
//         title: const Text('Новое умение'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(children: [
//             Container(
//               child: TextField(
//                 textAlign: TextAlign.center,
//                 controller: skillNameController,
//                 maxLines: 1,
//                 decoration: const InputDecoration(
//                   floatingLabelAlignment: FloatingLabelAlignment.center,
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   label: Text('Название'),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(top: 6),
//               child: TextField(
//                 controller: skillDescriptionController,
//                 minLines: 10,
//                 maxLines: null,
//                 decoration: const InputDecoration(
//                   floatingLabelAlignment: FloatingLabelAlignment.center,
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   label: Text('Описание'),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// class EditSkillScreen extends StatelessWidget {
//   const EditSkillScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final arguments = (ModalRoute.of(context)?.settings.arguments) as List;
//     final index = arguments[0];
//     final serchFieldController = arguments[1];
//     final playerModel = PlayerModelProvider.of(context);
//     final skillNameController = TextEditingController(text: playerModel?.filteredSkillList[index][0]);
//     final skillDescriptionController = TextEditingController(text: playerModel?.filteredSkillList[index][1]);

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//                 if (skillNameController.text.isEmpty) return;
//                 playerModel?.editSkill(
//                     index: index, skill: [skillNameController.text, skillDescriptionController.text]);
//                 serchFieldController.clear();
//                 playerModel?.searchSkill(query: '');
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.check))
//         ],
//         title: const Text('Новое умение'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(children: [
//             Container(
//               child: TextField(
//                 textAlign: TextAlign.center,
//                 controller: skillNameController,
//                 maxLines: 1,
//                 decoration: const InputDecoration(
//                   floatingLabelAlignment: FloatingLabelAlignment.center,
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   label: Text('Название'),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(top: 6),
//               child: TextField(
//                 controller: skillDescriptionController,
//                 minLines: 10,
//                 maxLines: null,
//                 decoration: const InputDecoration(
//                   floatingLabelAlignment: FloatingLabelAlignment.center,
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   label: Text('Описание'),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }
