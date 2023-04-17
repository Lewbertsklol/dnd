// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// import '../player_model.dart';

// class MagicScreen extends StatefulWidget {
//   const MagicScreen({super.key});

//   @override
//   State<MagicScreen> createState() => _MagicScreenState();
// }

// class _MagicScreenState extends State<MagicScreen> with TickerProviderStateMixin {
//   late TabController _tabController;
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 10, vsync: this);
//   }

//   bool checkZero({required int? value}) {
//     return value! > 0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);
//     final saveThrow = TextEditingController(text: '${playerModel?.player.klass.magicSaveThrow}');
//     final magicAttac =
//         TextEditingController(text: checkZero(value: playerModel?.player.klass.magicAttac) ? '+${playerModel?.player.klass.magicAttac}' : '${playerModel?.player.klass.magicAttac}');
//     final manaCells = TextEditingController(text: '${playerModel?.player.klass.manaMap[_tabController.index][0]}');
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).pushNamed(
//             'home/main_screen/create_spell',
//             arguments: _tabController.index,
//           );
//         },
//         backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//         child: const Icon(Icons.add),
//       ),
//       backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: 110,
//               child: TextField(
//                 style: const TextStyle(color: Colors.white),
//                 enabled: false,
//                 textAlign: TextAlign.center,
//                 controller: saveThrow,
//                 readOnly: true,
//                 minLines: 1,
//                 maxLines: null,
//                 decoration: const InputDecoration(
//                   fillColor: Color.fromARGB(255, 194, 164, 75),
//                   filled: true,
//                   contentPadding: EdgeInsets.symmetric(vertical: 10),
//                   floatingLabelAlignment: FloatingLabelAlignment.center,
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   label: Text('Спас. бросок', style: TextStyle(color: Colors.white)),
//                   disabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.white, width: 3),
//                   ),
//                 ),
//               ),
//             ),
//             const Expanded(
//               child: SizedBox(
//                 width: 10,
//               ),
//             ),
//             SizedBox(
//               width: 110,
//               child: TextField(
//                 style: const TextStyle(color: Colors.white),
//                 enabled: false,
//                 textAlign: TextAlign.center,
//                 controller: magicAttac,
//                 readOnly: true,
//                 minLines: 1,
//                 maxLines: null,
//                 decoration: const InputDecoration(
//                   fillColor: Color.fromARGB(255, 194, 164, 75),
//                   filled: true,
//                   contentPadding: EdgeInsets.all(10),
//                   floatingLabelAlignment: FloatingLabelAlignment.center,
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   label: Text(
//                     'Атака',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   disabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.white, width: 3),
//                   ),
//                 ),
//               ),
//             ),
//             const Expanded(
//               child: SizedBox(
//                 width: 10,
//               ),
//             ),
//             SizedBox(
//               width: 110,
//               child: TextField(
//                 style: const TextStyle(color: Colors.white),
//                 textAlign: TextAlign.center,
//                 controller: manaCells,
//                 readOnly: true,
//                 minLines: 1,
//                 maxLines: null,
//                 decoration: InputDecoration(
//                   suffixIcon: IconButton(
//                     onPressed: () => playerModel?.createEmptyCell(_tabController.index),
//                     icon: const Icon(Icons.add),
//                     color: Colors.white,
//                   ),
//                   fillColor: const Color.fromARGB(255, 194, 164, 75),
//                   filled: true,
//                   contentPadding: const EdgeInsets.all(10),
//                   floatingLabelAlignment: FloatingLabelAlignment.center,
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   label: const Text(
//                     'Ячейки закл',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   focusedBorder: const OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.white, width: 3),
//                   ),
//                   enabledBorder: const OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.white, width: 3),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         bottom: TabBar(
//           onTap: (_) => setState(() {}),
//           indicatorColor: const Color.fromARGB(255, 253, 236, 166),
//           controller: _tabController,
//           tabs: const [
//             Tab(child: Text('0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('2', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('4', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('6', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('7', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('8', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('9', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         physics: const NeverScrollableScrollPhysics(),
//         controller: _tabController,
//         children: const [
//           SpellScreen(spellLevel: 0),
//           SpellScreen(spellLevel: 1),
//           SpellScreen(spellLevel: 2),
//           SpellScreen(spellLevel: 3),
//           SpellScreen(spellLevel: 4),
//           SpellScreen(spellLevel: 5),
//           SpellScreen(spellLevel: 6),
//           SpellScreen(spellLevel: 7),
//           SpellScreen(spellLevel: 8),
//           SpellScreen(spellLevel: 9),
//         ],
//       ),
//     );
//   }
// }

// class SpellScreen extends StatefulWidget {
//   final int spellLevel;
//   const SpellScreen({
//     super.key,
//     required this.spellLevel,
//   });

//   @override
//   State<SpellScreen> createState() => _SpellScreenState(spellLevel);
// }

// class _SpellScreenState extends State<SpellScreen> {
//   final int spellLevel;
//   _SpellScreenState(
//     this.spellLevel,
//   );

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);
//     List<Widget> listOfCells = [];
//     if (spellLevel > 0) {
//       listOfCells = List<Widget>.generate(
//         playerModel?.player.klass.manaMap[spellLevel][0],
//         (index) => Expanded(
//           child: IconButton(
//             iconSize: 40,
//             color: playerModel?.player.klass.manaMap[spellLevel][index + 1] ? Colors.black : Colors.lightBlue,
//             onPressed: () {
//               playerModel?.player.klass.manaMap[spellLevel][index + 1] = !playerModel.player.klass.manaMap[spellLevel][index + 1];
//               setState(() {});
//             },
//             icon: const Icon(Icons.brightness_1),
//           ),
//         ),
//       );
//     }

//     return Padding(
//       padding: const EdgeInsets.only(top: 4.0),
//       child: Stack(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(top: listOfCells.isEmpty ? 3 : 50),
//             child: ListView.separated(
//                 keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Spell(
//                     index: index,
//                     spellLevel: spellLevel,
//                   );
//                 },
//                 separatorBuilder: (BuildContext context, int index) {
//                   return const SizedBox();
//                 },
//                 itemCount: playerModel?.player.klass.spellMap[spellLevel].length ?? 0),
//           ),
//           Row(
//             children: listOfCells,
//           )
//         ],
//       ),
//     );
//   }
// }

// class Spell extends StatefulWidget {
//   final int index;
//   final int spellLevel;

//   const Spell({
//     super.key,
//     required this.index,
//     required this.spellLevel,
//   });

//   @override
//   State<Spell> createState() => _SpellState(index, spellLevel);
// }

// class _SpellState extends State<Spell> {
//   final int index;
//   final int spellLevel;
//   _SpellState(this.index, this.spellLevel);

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);

//     return Slidable(
//       startActionPane: ActionPane(
//         extentRatio: 0.25,
//         motion: const BehindMotion(),
//         children: [
//           SlidableAction(
//             onPressed: (context) => playerModel?.removeSpell(spellLevel: spellLevel, index: index),
//             backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//             foregroundColor: Colors.black38,
//             icon: Icons.delete,
//           ),
//           SlidableAction(
//             onPressed: (context) {
//               var spell = playerModel?.player.klass.spellMap[spellLevel][index];
//               Navigator.of(context).pushNamed('home/main_screen/edit_spell', arguments: [
//                 spellLevel,
//                 index,
//                 spell,
//               ]);
//             },
//             backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//             foregroundColor: Colors.black38,
//             icon: Icons.edit,
//           ),
//         ],
//       ),
//       child: GestureDetector(
//         onLongPress: () => {
//           setState(() => {playerModel?.prepareSpell(spellLevel: spellLevel, index: index)})
//         },
//         child: Card(
//           shape: playerModel?.player.klass.spellMap[spellLevel][index]['prepared']
//               ? const RoundedRectangleBorder(
//                   side: BorderSide(
//                     width: 3,
//                     color: Colors.lightBlue,
//                   ),
//                   borderRadius: BorderRadius.all(Radius.circular(12)),
//                 )
//               : null,
//           color: const Color.fromARGB(255, 253, 236, 166),
//           child: ExpansionTile(
//             expandedCrossAxisAlignment: CrossAxisAlignment.start,
//             childrenPadding: const EdgeInsets.only(left: 16),
//             textColor: Colors.lightBlue,
//             collapsedTextColor: Colors.black,
//             expandedAlignment: Alignment.topLeft,
//             title: Text(
//               playerModel?.player.klass.spellMap[spellLevel][index]['name'],
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             children: [
//               Text(
//                 'Школа магии: ${playerModel?.player.klass.spellMap[spellLevel][index]['school']}',
//                 style: const TextStyle(fontSize: 18),
//               ),
//               Text(
//                 'Время накладывания: ${playerModel?.player.klass.spellMap[spellLevel][index]['cast']}',
//                 style: const TextStyle(fontSize: 18),
//               ),
//               Text(
//                 'Дистанция: ${playerModel?.player.klass.spellMap[spellLevel][index]['distance']}',
//                 style: const TextStyle(fontSize: 18),
//               ),
//               Row(
//                 children: [
//                   Text(
//                     'Компоненты: ${playerModel?.player.klass.spellMap[spellLevel][index]['components'][0] ? 'B' : ''}',
//                     style: const TextStyle(fontSize: 18),
//                   ),
//                   Text(
//                     ' ${playerModel?.player.klass.spellMap[spellLevel][index]['components'][1] ? 'C' : ''}',
//                     style: const TextStyle(fontSize: 18),
//                   ),
//                   Text(
//                     ' ${playerModel?.player.klass.spellMap[spellLevel][index]['components'][2] ? 'M' : ''}',
//                     style: const TextStyle(fontSize: 18),
//                   ),
//                 ],
//               ),
//               Text(
//                 'Длительность: ${playerModel?.player.klass.spellMap[spellLevel][index]['time']}',
//                 style: const TextStyle(fontSize: 18),
//               ),
//               Text(
//                 'Описание: \n${playerModel?.player.klass.spellMap[spellLevel][index]['description']}',
//                 style: const TextStyle(fontSize: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CreateSpellScreen extends StatefulWidget {
//   const CreateSpellScreen({super.key});

//   @override
//   State<CreateSpellScreen> createState() => _CreateSpellScreenState();
// }

// class _CreateSpellScreenState extends State<CreateSpellScreen> {
//   final spellNameController = TextEditingController();
//   final spellDescriptionController = TextEditingController();
//   final spellSchoolController = TextEditingController();
//   final spellCastController = TextEditingController();
//   final spellDistanceController = TextEditingController();
//   final spellTimeController = TextEditingController();
//   List<bool> components = [false, false, false];
//   Map<dynamic, dynamic> createSpell({
//     required int spellLevel,
//     String name = '',
//     String description = '',
//     String school = '',
//     String distance = '',
//     List components = const [],
//     String cast = '',
//     String time = '',
//   }) {
//     return <dynamic, dynamic>{
//       'name': name,
//       'description': description,
//       'prepared': false,
//       'school': school,
//       'distance': distance,
//       'components': components,
//       'cast': cast,
//       'time': time,
//     };
//   }

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);
//     final spellLevel = ModalRoute.of(context)?.settings.arguments as int;

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//                 if (spellNameController.text.isEmpty) return;
//                 var spell = createSpell(
//                   spellLevel: spellLevel,
//                   name: spellNameController.text,
//                   school: spellSchoolController.text,
//                   cast: spellCastController.text,
//                   distance: spellDistanceController.text,
//                   components: components,
//                   time: spellTimeController.text,
//                   description: spellDescriptionController.text,
//                 );
//                 playerModel?.addSpell(spellLevel: spellLevel, spell: spell);
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.check))
//         ],
//         title: const Text('Новое заклинание'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
             
//               Container(
//                 child: TextField(
//                   textAlign: TextAlign.center,
//                   controller: spellNameController,
//                   maxLines: 1,
//                   decoration: const InputDecoration(
//                     floatingLabelAlignment: FloatingLabelAlignment.center,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     label: Text('Название'),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 6),
//                 child: TextField(
//                   textAlign: TextAlign.center,
//                   controller: spellSchoolController,
//                   maxLines: 1,
//                   decoration: const InputDecoration(
//                     floatingLabelAlignment: FloatingLabelAlignment.center,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     label: Text('Школа магии'),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 6),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         controller: spellCastController,
//                         textAlign: TextAlign.center,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('Время накладывания'),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Expanded(
//                       child: TextField(
//                         textAlign: TextAlign.center,
//                         controller: spellDistanceController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text(
//                             'Дистанция',
//                           ),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 6),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Stack(
//                         children: [
//                           const TextField(
//                             enabled: false,
//                             readOnly: true,
//                             maxLines: 1,
//                             decoration: InputDecoration(
//                               disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
//                               floatingLabelAlignment: FloatingLabelAlignment.center,
//                               floatingLabelBehavior: FloatingLabelBehavior.always,
//                               label: Text('Компоненты'),
//                               border: OutlineInputBorder(),
//                             ),
//                           ),
//                           Positioned(
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'В',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: components[0] ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() => {components[0] = !components[0]}),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'C',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: components[1] ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() => {components[1] = !components[1]}),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'M',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: components[2] ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() => {components[2] = !components[2]}),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Expanded(
//                       child: TextField(
//                         textAlign: TextAlign.center,
//                         controller: spellTimeController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('Длительность'),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 6),
//                 child: TextField(
//                   controller: spellDescriptionController,
//                   minLines: 10,
//                   maxLines: null,
//                   decoration: const InputDecoration(
//                     floatingLabelAlignment: FloatingLabelAlignment.center,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     label: Text('Описание'),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class EditSpellScreen extends StatefulWidget {
//   const EditSpellScreen({super.key});

//   @override
//   State<EditSpellScreen> createState() => _EditSpellScreenState();
// }

// class _EditSpellScreenState extends State<EditSpellScreen> {
//   late final TextEditingController spellNameController;
//   late final TextEditingController spellDescriptionController;
//   late final TextEditingController spellSchoolController;
//   late final TextEditingController spellCastController;
//   late final TextEditingController spellDistanceController;
//   late final TextEditingController spellTimeController;
//   late final List<bool> components;
//   late dynamic spellLevel;
//   late dynamic index;
//   late dynamic spell;

//   @override
//   void didChangeDependencies() {
//     final playerModel = PlayerModelProvider.of(context);
//     final arguments = (ModalRoute.of(context)?.settings.arguments) as List;
//     spellLevel = arguments[0];
//     index = arguments[1];
//     spell = arguments[2];
//     spellNameController = TextEditingController(text: spell['name']);
//     spellDescriptionController = TextEditingController(text: spell['description']);
//     spellSchoolController = TextEditingController(text: spell['school']);
//     spellCastController = TextEditingController(text: spell['cast']);
//     spellDistanceController = TextEditingController(text: spell['distance']);
//     spellTimeController = TextEditingController(text: spell['time']);
//     components = playerModel?.player.klass.spellMap[spellLevel][index]['components'];
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);

//     void updateSpell({
//       required Map<dynamic, dynamic> spell,
//       String name = '',
//       String description = '',
//       String school = '',
//       String distance = '',
//       List components = const [],
//       String cast = '',
//       String time = '',
//     }) {
//       spell['name'] = name;
//       spell['description'] = description;
//       spell['school'] = school;
//       spell['distance'] = distance;
//       spell['components'] = components;
//       spell['cast'] = cast;
//       spell['time'] = time;
//     }

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 if (spellNameController.text.isEmpty) return;
//                 SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//                 updateSpell(
//                   spell: spell,
//                   name: spellNameController.text,
//                   description: spellDescriptionController.text,
//                   school: spellSchoolController.text,
//                   distance: spellDistanceController.text,
//                   components: components,
//                   cast: spellCastController.text,
//                   time: spellTimeController.text,
//                 );
//                 playerModel?.editSpell(
//                   spellLevel: spellLevel,
//                   index: index,
//                   spell: spell,
//                 );
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.check))
//         ],
//         title: const Text('Изменить заклинание'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Container(
//                 child: TextField(
//                   textAlign: TextAlign.center,
//                   controller: spellNameController,
//                   maxLines: 1,
//                   decoration: const InputDecoration(
//                     floatingLabelAlignment: FloatingLabelAlignment.center,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     label: Text('Название'),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 6),
//                 child: TextField(
//                   textAlign: TextAlign.center,
//                   controller: spellSchoolController,
//                   maxLines: 1,
//                   decoration: const InputDecoration(
//                     floatingLabelAlignment: FloatingLabelAlignment.center,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     label: Text('Школа магии'),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 6),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         controller: spellCastController,
//                         textAlign: TextAlign.center,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('Время накладывания'),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Expanded(
//                       child: TextField(
//                         textAlign: TextAlign.center,
//                         controller: spellDistanceController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text(
//                             'Дистанция',
//                           ),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 6),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Stack(
//                         children: [
//                           const TextField(
//                             enabled: false,
//                             readOnly: true,
//                             textAlign: TextAlign.center,
//                             maxLines: 1,
//                             decoration: InputDecoration(
//                               disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
//                               floatingLabelAlignment: FloatingLabelAlignment.center,
//                               floatingLabelBehavior: FloatingLabelBehavior.always,
//                               label: Text('Компоненты'),
//                               border: OutlineInputBorder(),
//                             ),
//                           ),
//                           Positioned(
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'В',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: components[0] ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() => {components[0] = !components[0]}),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'C',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: components[1] ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() => {components[1] = !components[1]}),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'M',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: components[2] ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() => {components[2] = !components[2]}),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Expanded(
//                       child: TextField(
//                         textAlign: TextAlign.center,
//                         controller: spellTimeController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('Длительность'),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(top: 6),
//                 child: TextField(
//                   controller: spellDescriptionController,
//                   minLines: 10,
//                   maxLines: null,
//                   decoration: const InputDecoration(
//                     floatingLabelAlignment: FloatingLabelAlignment.center,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     label: Text('Описание'),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
