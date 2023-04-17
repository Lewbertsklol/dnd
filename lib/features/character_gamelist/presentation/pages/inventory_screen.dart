// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// import '../entities.dart';
// import '../player_model.dart';

// class InventoryScreen extends StatefulWidget {
//   const InventoryScreen({super.key});

//   @override
//   State<InventoryScreen> createState() => _InventoryScreenState();
// }

// class _InventoryScreenState extends State<InventoryScreen> with TickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 6, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           switch (_tabController.index) {
//             case 0:
//               Navigator.of(context).pushNamed('home/main_screen/create_item', arguments: ItemType.weapon);
//               break;
//             case 1:
//               Navigator.of(context).pushNamed('home/main_screen/create_item', arguments: ItemType.armor);
//               break;
//             case 2:
//               Navigator.of(context).pushNamed('home/main_screen/create_item', arguments: ItemType.tools);
//               break;
//             case 3:
//               Navigator.of(context).pushNamed('home/main_screen/create_item', arguments: ItemType.food);
//               break;
//             case 4:
//               Navigator.of(context).pushNamed('home/main_screen/create_item', arguments: ItemType.questItems);
//               break;
//             case 5:
//               Navigator.of(context).pushNamed('home/main_screen/create_item', arguments: ItemType.other);
//               break;
//           }
//         },
//         backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//         child: const Icon(Icons.add),
//       ),
//       backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: const Color.fromARGB(255, 194, 164, 75),
//         centerTitle: true,
//         title: const Text("Сумка"),
//         bottom: TabBar(
//           indicatorColor: const Color.fromARGB(255, 253, 236, 166),
//           controller: _tabController,
//           tabs: const [
//             Tab(child: Text('1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('2', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('4', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//             Tab(child: Text('6', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         physics: const NeverScrollableScrollPhysics(),
//         controller: _tabController,
//         children: [
//           InventoryCategoryScreen(category: playerModel?.player.klass.inventory.weapon ?? <Item>[]),
//           InventoryCategoryScreen(category: playerModel?.player.klass.inventory.armor ?? <Item>[]),
//           InventoryCategoryScreen(category: playerModel?.player.klass.inventory.tools ?? <Item>[]),
//           InventoryCategoryScreen(category: playerModel?.player.klass.inventory.food ?? <Item>[]),
//           InventoryCategoryScreen(category: playerModel?.player.klass.inventory.questItems ?? <Item>[]),
//           InventoryCategoryScreen(category: playerModel?.player.klass.inventory.other ?? <Item>[]),
//         ],
//       ),
//     );
//   }
// }

// class InventoryCategoryScreen extends StatelessWidget {
//   final List<Item> category;
//   const InventoryCategoryScreen({
//     Key? key,
//     required this.category,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 3),
//       child: ListView.separated(
//           keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//           itemBuilder: (BuildContext context, int index) {
//             return ItemCard(
//               index: index,
//               item: category[index],
//             );
//           },
//           separatorBuilder: (BuildContext context, int index) {
//             return const SizedBox();
//           },
//           itemCount: category.length),
//     );
//   }
// }

// class ItemCard extends StatelessWidget {
//   final Item item;
//   final int index;

//   const ItemCard({
//     Key? key,
//     required this.item,
//     required this.index,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final playerModel = PlayerModelProvider.of(context);

//     return Slidable(
//       startActionPane: ActionPane(
//         extentRatio: 0.25,
//         motion: const BehindMotion(),
//         children: [
//           SlidableAction(
//             onPressed: (context) => {playerModel?.removeItem(index: index, category: item.itemType)},
//             backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//             foregroundColor: Colors.black38,
//             icon: Icons.delete,
//           ),
//           SlidableAction(
//             onPressed: (context) => {
//               Navigator.of(context).pushNamed('home/main_screen/edit_item', arguments: [item, index])
//             },
//             backgroundColor: const Color.fromARGB(255, 253, 236, 166),
//             foregroundColor: Colors.black38,
//             icon: Icons.edit,
//           ),
//         ],
//       ),
//       child: Card(
//         color: const Color.fromARGB(255, 253, 236, 166),
//         child: ExpansionTile(
//           expandedCrossAxisAlignment: CrossAxisAlignment.start,
//           childrenPadding: const EdgeInsets.only(left: 16),
//           textColor: Colors.lightBlue,
//           collapsedTextColor: Colors.black,
//           expandedAlignment: Alignment.topLeft,
//           title: Text(
//             item.name,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           children: [
//             Text(
//               item.description,
//               style: const TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CreateItemScreen extends StatelessWidget {
//   const CreateItemScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final itemType = ModalRoute.of(context)?.settings.arguments as ItemType;
//     final itemNameController = TextEditingController();
//     final itemDescriptionController = TextEditingController();
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
//                 if (itemNameController.text.isEmpty) return;
//                 playerModel?.addItem(item: Item(name: itemNameController.text, description: itemDescriptionController.text, itemType: itemType));
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.check))
//         ],
//         title: const Text('Новый предмет'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(children: [
//             Container(
//               child: TextField(
//                 textAlign: TextAlign.center,
//                 controller: itemNameController,
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
//                 controller: itemDescriptionController,
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

// class EditItemScreen extends StatelessWidget {
//   const EditItemScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final arguments = ModalRoute.of(context)?.settings.arguments as List;
//     final Item item = arguments[0];
//     final int index = arguments[1];
//     final itemNameController = TextEditingController(text: item.name);
//     final itemDescriptionController = TextEditingController(text: item.description);

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
//                 if (itemNameController.text.isEmpty) return;
//                 playerModel?.editItem(
//                     index: index, category: item.itemType, editedItem: Item(name: itemNameController.text, description: itemDescriptionController.text, itemType: item.itemType));
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.check))
//         ],
//         title: const Text('Новый предмет'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(children: [
//             Container(
//               child: TextField(
//                 textAlign: TextAlign.center,
//                 controller: itemNameController,
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
//                 controller: itemDescriptionController,
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
