import 'package:dnd/core/constants/app_strings_ru.dart';
import 'package:dnd/features/character_gamelist/presentation/widgets/add_exp.dart';
import 'package:dnd/features/character_gamelist/presentation/widgets/add_stat_value.dart';
import 'package:dnd/features/character_gamelist/presentation/widgets/remove_weapon.dart';
import 'package:dnd/features/character_list_view/domain/entities/stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../character_list_view/domain/entities/competence.dart';
import '../../../character_list_view/domain/entities/weapon.dart';
import '../bloc/character_bloc.dart';
import '../widgets/change_competence_competence.dart';
import '../widgets/change_competence_master.dart';
import '../widgets/change_save_throw_master.dart';
import '../widgets/change_weapon_master.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _expController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _expController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        state as CharacterLoaded;
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
          },
          child: Scaffold(
            floatingActionButton: _tabController.index == 3
                ? FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 194, 164, 75),
                    onPressed: () => {Navigator.of(context).pushNamed('home/main_screen/create_weapon')},
                    child: const Icon(
                      Icons.add,
                    ),
                  )
                : null,
            resizeToAvoidBottomInset: true,
            backgroundColor: const Color.fromARGB(255, 253, 236, 166),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: const Color.fromARGB(255, 194, 164, 75),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130,
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(7),
                      ],
                      onSubmitted: (value) {
                        addExp(context, state, int.tryParse(_expController.text) ?? 0); //!
                        FocusScope.of(context).unfocus();
                        _expController.clear();
                        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
                      },
                      keyboardType: TextInputType.phone,
                      controller: _expController,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      maxLines: 1,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            addExp(context, state, int.tryParse(_expController.text) ?? 0);
                            FocusScope.of(context).unfocus();
                            _expController.clear();
                            SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
                          },
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                        ),
                        fillColor: const Color.fromARGB(255, 194, 164, 75),
                        filled: true,
                        contentPadding: const EdgeInsets.all(10),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text('Опыт', style: TextStyle(color: Colors.white)),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 3),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              bottom: TabBar(
                onTap: (int index) => setState(() => {}),
                indicatorColor: const Color.fromARGB(255, 253, 236, 166),
                controller: _tabController,
                tabs: const [
                  Tab(
                    text: "Харак - ки",
                  ),
                  Tab(
                    text: "Сп.броски",
                  ),
                  Tab(
                    text: "Навыки",
                  ),
                  Tab(
                    text: "Оружие",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: const [
                StatsScreen(),
                SaveThrowScreen(),
                CompetenceScreen(),
                WeaponScreen(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class WeaponScreen extends StatelessWidget {
  const WeaponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        state as CharacterLoaded;
        return Padding(
          padding: const EdgeInsets.only(top: 3),
          child: ListView.separated(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemBuilder: (BuildContext context, int index) {
                return WeaponCard(
                  weapon: state.character.weapons[index],
                  index: index,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox();
              },
              itemCount: state.character.weapons.length),
        );
      },
    );
  }
}

class WeaponCard extends StatelessWidget {
  final Weapon weapon;
  final int index;
  const WeaponCard({super.key, required this.weapon, required this.index});

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        state as CharacterLoaded;
        return Slidable(
          startActionPane: ActionPane(
            extentRatio: 0.25,
            motion: const BehindMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => removeWeapon(context, state, weapon),
                backgroundColor: const Color.fromARGB(255, 253, 236, 166),
                foregroundColor: Colors.black38,
                icon: Icons.delete,
              ),
              SlidableAction(
                onPressed: (context) {
                  Navigator.of(context).pushNamed('home/main_screen/edit_weapon', arguments: [weapon, index]);
                },
                backgroundColor: const Color.fromARGB(255, 253, 236, 166),
                foregroundColor: Colors.black38,
                icon: Icons.edit,
              ),
            ],
          ),
          child: GestureDetector(
            onLongPress: () => changeWeaponMaster(context, state, weapon),
            child: Card(
              shape: weapon.master
                  ? const RoundedRectangleBorder(
                      side: BorderSide(
                        width: 3,
                        color: Colors.lightBlue,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )
                  : null,
              color: const Color.fromARGB(255, 253, 236, 166),
              child: ExpansionTile(
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                childrenPadding: const EdgeInsets.only(left: 16),
                textColor: Colors.lightBlue,
                collapsedTextColor: Colors.black,
                expandedAlignment: Alignment.topLeft,
                title: Row(
                  children: [
                    SizedBox(
                      width: 140,
                      child: Text(
                        weapon.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    state.character.getAttackChanceWithWeapon(weapon) > 0
                        ? Text(
                            'Атк +${state.character.getAttackChanceWithWeapon(weapon)}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            'Атк ${state.character.getAttackChanceWithWeapon(weapon)}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    const Expanded(child: SizedBox()),
                    state.character.getAttackDamageWithWeapon(weapon) > 0
                        ? Text(
                            '   Урн ${weapon.dice} +${state.character.getAttackDamageWithWeapon(weapon)}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            '   Урн ${weapon.dice}  ${state.character.getAttackDamageWithWeapon(weapon)}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ],
                ),
                children: [
                  Text(
                    'Тип оружия: ${weapon.weaponType}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Тип урона: ${weapon.typeDamage}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Дистанция: ${weapon.distance}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Описание: \n${weapon.description}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// class CreateWeaponScreen extends StatefulWidget {
//   const CreateWeaponScreen({super.key});

//   @override
//   State<CreateWeaponScreen> createState() => _CreateWeaponScreenState();
// }

// RangeType choosedType({required bool melee, required bool range, required bool combo}) {
//   if (melee) return RangeType.melee;
//   if (range) return RangeType.range;
//   return RangeType.combo;
// }

// Weapon createWeapon(
//         {required String name,
//         required String typeDamage,
//         required String distance,
//         required String dice,
//         required RangeType rangeType,
//         required int bonusAttackChance,
//         required int bonusAttackDamage,
//         required String description,
//         bool master = false}) =>
//     Weapon(
//         name: name,
//         typeDamage: typeDamage,
//         distance: distance,
//         dice: dice,
//         master: master,
//         rangeType: rangeType,
//         bonusAttackChance: bonusAttackChance,
//         bonusAttackDamage: bonusAttackDamage,
//         description: description);

// class _CreateWeaponScreenState extends State<CreateWeaponScreen> {
//   final weaponNameController = TextEditingController();
//   final weaponTypeDamageController = TextEditingController();
//   final weaponDistanceController = TextEditingController();
//   final weaponDiceController = TextEditingController();
//   final weaponBonusChanceController = TextEditingController();
//   final weaponBonusDamageController = TextEditingController();
//   final weaponDescriptionController = TextEditingController();

//   bool melee = false;
//   bool range = false;
//   bool combo = false;

//   @override
//   Widget build(BuildContext context) {
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
//                 if (weaponNameController.text.isEmpty) return;
//                 var weapon = createWeapon(
//                   name: weaponNameController.text,
//                   typeDamage: weaponTypeDamageController.text,
//                   distance: weaponDistanceController.text,
//                   dice: weaponDiceController.text,
//                   rangeType: choosedType(melee: melee, range: range, combo: combo),
//                   bonusAttackChance: int.tryParse(weaponBonusChanceController.text) ?? 0,
//                   bonusAttackDamage: int.tryParse(weaponBonusDamageController.text) ?? 0,
//                   description: weaponDescriptionController.text,
//                 );
//                 playerModel?.addWeapon(weapon: weapon);
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.check))
//         ],
//         title: const Text('Новое оружие'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Container(
//                 child: TextField(
//                   textAlign: TextAlign.center,
//                   controller: weaponNameController,
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
//                   controller: weaponTypeDamageController,
//                   maxLines: 1,
//                   decoration: const InputDecoration(
//                     floatingLabelAlignment: FloatingLabelAlignment.center,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     label: Text('Тип урона'),
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
//                         controller: weaponDistanceController,
//                         textAlign: TextAlign.center,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('Дистанция'),
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
//                         controller: weaponDiceController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text(
//                             'Кость',
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
//                               label: Text('Тип оружия'),
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
//                                       'Б',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: melee ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() {
//                                       melee = true;
//                                       range = false;
//                                       combo = false;
//                                     }),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'Д',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: range ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() {
//                                       melee = false;
//                                       range = true;
//                                       combo = false;
//                                     }),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'Ф',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: combo ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() {
//                                       melee = false;
//                                       range = false;
//                                       combo = true;
//                                     }),
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
//                       flex: 1,
//                       child: TextField(
//                         textAlign: TextAlign.center,
//                         controller: weaponBonusChanceController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('+ Атк'),
//                           hintText: '0',
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: TextField(
//                         textAlign: TextAlign.center,
//                         controller: weaponBonusDamageController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('+ Урн'),
//                           hintText: '0',
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
//                   controller: weaponDescriptionController,
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

// class EditWeaponScreen extends StatefulWidget {
//   const EditWeaponScreen({super.key});

//   @override
//   State<EditWeaponScreen> createState() => _EditWeaponScreenState();
// }

// class _EditWeaponScreenState extends State<EditWeaponScreen> {
//   late final TextEditingController weaponNameController;
//   late final TextEditingController weaponTypeDamageController;
//   late final TextEditingController weaponDistanceController;
//   late final TextEditingController weaponDiceController;
//   late final TextEditingController weaponBonusChanceController;
//   late final TextEditingController weaponBonusDamageController;
//   late final TextEditingController weaponDescriptionController;
//   late final int index;
//   late bool master;
//   late bool melee;
//   late bool range;
//   late bool combo;

//   @override
//   void didChangeDependencies() {
//     final arguments = (ModalRoute.of(context)?.settings.arguments) as List;
//     final Weapon weapon = arguments[0];
//     index = arguments[1];
//     master = weapon.master;
//     melee = weapon.rangeType == RangeType.melee ? true : false;
//     range = weapon.rangeType == RangeType.range ? true : false;
//     combo = weapon.rangeType == RangeType.combo ? true : false;
//     weaponNameController = TextEditingController(text: weapon.name);
//     weaponTypeDamageController = TextEditingController(text: weapon.typeDamage);
//     weaponDistanceController = TextEditingController(text: weapon.distance);
//     weaponDiceController = TextEditingController(text: weapon.dice);
//     weaponBonusChanceController = TextEditingController(text: weapon.bonusAttackChance.toString());
//     weaponBonusDamageController = TextEditingController(text: weapon.bonusAttackDamage.toString());
//     weaponDescriptionController = TextEditingController(text: weapon.description);
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
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
//                 if (weaponNameController.text.isEmpty) return;
//                 var weapon = createWeapon(
//                   name: weaponNameController.text,
//                   typeDamage: weaponTypeDamageController.text,
//                   distance: weaponDistanceController.text,
//                   dice: weaponDiceController.text,
//                   master: master,
//                   rangeType: choosedType(melee: melee, range: range, combo: combo),
//                   bonusAttackChance: int.tryParse(weaponBonusChanceController.text) ?? 0,
//                   bonusAttackDamage: int.tryParse(weaponBonusDamageController.text) ?? 0,
//                   description: weaponDescriptionController.text,
//                 );
//                 playerModel?.editWeapon(weapon: weapon, index: index);
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.check))
//         ],
//         title: const Text('Редактировать оружие'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Container(
//                 child: TextField(
//                   textAlign: TextAlign.center,
//                   controller: weaponNameController,
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
//                   controller: weaponTypeDamageController,
//                   maxLines: 1,
//                   decoration: const InputDecoration(
//                     floatingLabelAlignment: FloatingLabelAlignment.center,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     label: Text('Тип урона'),
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
//                         controller: weaponDistanceController,
//                         textAlign: TextAlign.center,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('Дистанция'),
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
//                         controller: weaponDiceController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text(
//                             'Кость',
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
//                               label: Text('Тип оружия'),
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
//                                       'Б',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: melee ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() {
//                                       melee = true;
//                                       range = false;
//                                       combo = false;
//                                     }),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'Д',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: range ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() {
//                                       melee = false;
//                                       range = true;
//                                       combo = false;
//                                     }),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: IconButton(
//                                     padding: const EdgeInsets.only(top: 15),
//                                     icon: Text(
//                                       'Ф',
//                                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: combo ? Colors.red : Colors.black),
//                                     ),
//                                     onPressed: () => setState(() {
//                                       melee = false;
//                                       range = false;
//                                       combo = true;
//                                     }),
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
//                       flex: 1,
//                       child: TextField(
//                         textAlign: TextAlign.center,
//                         controller: weaponBonusChanceController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('+ Атк'),
//                           hintText: '0',
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: TextField(
//                         textAlign: TextAlign.center,
//                         controller: weaponBonusDamageController,
//                         maxLines: 1,
//                         decoration: const InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.center,
//                           floatingLabelBehavior: FloatingLabelBehavior.always,
//                           label: Text('+ Урн'),
//                           hintText: '0',
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
//                   controller: weaponDescriptionController,
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

class CompetenceScreen extends StatelessWidget {
  const CompetenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        state as CharacterLoaded;
        return Padding(
          padding: const EdgeInsets.only(top: 3),
          child: ListView.separated(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemBuilder: (BuildContext context, int index) {
                return CompetenceCard(
                  competence: state.character.competences[index],
                  index: index,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox();
              },
              itemCount: state.character.competences.length),
        );
      },
    );
  }
}

class CompetenceCard extends StatelessWidget {
  final Competence competence;
  final int index;
  const CompetenceCard({super.key, required this.competence, required this.index});

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        state as CharacterLoaded;
        return GestureDetector(
          onLongPress: () => {
            changeCompetenceMastered(context, state, competence),
          },
          child: Card(
            shape: state.character.competences[index].mastered
                ? const RoundedRectangleBorder(
                    side: BorderSide(
                      width: 3,
                      color: Colors.lightBlue,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  )
                : null,
            color: const Color.fromARGB(255, 253, 236, 166),
            child: ListTile(
              leading: (competence.competenced) && (competence.mastered)
                  ? ElevatedButton(
                      onPressed: () {
                        changeCompetenced(context, state, competence);
                      },
                      child: state.character.competences[index].competenced ? const Text('Компетенция!') : const Text('Компетенция?'),
                    )
                  : null,
              title: Text(RuStrings.nameOfCompetenceByType(competence.competenceType)),
              trailing: Text('${state.character.getValueOfCompetenceByType(competence.competenceType)}'),
            ),
          ),
        );
      },
    );
  }
}

class SaveThrowScreen extends StatelessWidget {
  const SaveThrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(top: 4), child: SaveThrowCard());
  }
}

class SaveThrowCard extends StatelessWidget {
  const SaveThrowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        state as CharacterLoaded;
        return Column(
          children: [
            GestureDetector(
              onLongPress: () => changeSaveThrowMaster(context, state, state.character.getStatByType(StatType.STR)),
              child: Card(
                shape: state.character.getStatByType(StatType.STR).saveThrowMastered
                    ? const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                          color: Colors.lightBlue,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )
                    : const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                color: const Color.fromARGB(255, 253, 236, 166),
                child: Padding(
                  padding: const EdgeInsets.all(6.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Сила',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '${state.character.getSaveThrowValue(StatType.STR)}',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () => changeSaveThrowMaster(context, state, state.character.getStatByType(StatType.DEX)),
              child: Card(
                shape: state.character.getStatByType(StatType.DEX).saveThrowMastered
                    ? const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                          color: Colors.lightBlue,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )
                    : const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                color: const Color.fromARGB(255, 253, 236, 166),
                child: Padding(
                  padding: const EdgeInsets.all(6.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ловкость',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '${state.character.getSaveThrowValue(StatType.DEX)}',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () => changeSaveThrowMaster(context, state, state.character.getStatByType(StatType.VIT)),
              child: Card(
                shape: state.character.getStatByType(StatType.VIT).saveThrowMastered
                    ? const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                          color: Colors.lightBlue,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )
                    : const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                color: const Color.fromARGB(255, 253, 236, 166),
                child: Padding(
                  padding: const EdgeInsets.all(6.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Телосложение',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '${state.character.getSaveThrowValue(StatType.VIT)}',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () => changeSaveThrowMaster(context, state, state.character.getStatByType(StatType.INT)),
              child: Card(
                shape: state.character.getStatByType(StatType.INT).saveThrowMastered
                    ? const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                          color: Colors.lightBlue,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )
                    : const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                color: const Color.fromARGB(255, 253, 236, 166),
                child: Padding(
                  padding: const EdgeInsets.all(6.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Интеллект',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '${state.character.getSaveThrowValue(StatType.INT)}',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () => changeSaveThrowMaster(context, state, state.character.getStatByType(StatType.WIS)),
              child: Card(
                shape: state.character.getStatByType(StatType.WIS).saveThrowMastered
                    ? const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                          color: Colors.lightBlue,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )
                    : const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                color: const Color.fromARGB(255, 253, 236, 166),
                child: Padding(
                  padding: const EdgeInsets.all(6.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Мудрость',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '${state.character.getSaveThrowValue(StatType.WIS)}',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () => changeSaveThrowMaster(context, state, state.character.getStatByType(StatType.CHR)),
              child: Card(
                shape: state.character.getStatByType(StatType.CHR).saveThrowMastered
                    ? const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                          color: Colors.lightBlue,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )
                    : const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                color: const Color.fromARGB(255, 253, 236, 166),
                child: Padding(
                  padding: const EdgeInsets.all(6.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Харизма',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '${state.character.getSaveThrowValue(StatType.CHR)}',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));
    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        state as CharacterLoaded;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(RuStrings.STR),
                        Text(
                          checkZero(value: state.character.getStatByType(StatType.STR).modificator)
                              ? '+${state.character.getStatByType(StatType.STR).modificator}'
                              : '${state.character.getStatByType(StatType.STR).modificator}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () => removeStatValue(context, state, state.character.getStatByType(StatType.STR)), icon: const Icon(Icons.remove)),
                            ),
                            Text('${state.character.getStatByType(StatType.STR).value}'),
                            Expanded(
                              child: IconButton(onPressed: () => addStatValue(context, state, state.character.getStatByType(StatType.STR)), icon: const Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(RuStrings.DEX),
                        Text(
                          checkZero(value: state.character.getStatByType(StatType.DEX).modificator)
                              ? '+${state.character.getStatByType(StatType.DEX).modificator}'
                              : '${state.character.getStatByType(StatType.DEX).modificator}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () => removeStatValue(context, state, state.character.getStatByType(StatType.DEX)), icon: const Icon(Icons.remove)),
                            ),
                            Text('${state.character.getStatByType(StatType.DEX).value}'),
                            Expanded(
                              child: IconButton(onPressed: () => addStatValue(context, state, state.character.getStatByType(StatType.DEX)), icon: const Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(RuStrings.VIT),
                        Text(
                          checkZero(value: state.character.getStatByType(StatType.VIT).modificator)
                              ? '+${state.character.getStatByType(StatType.VIT).modificator}'
                              : '${state.character.getStatByType(StatType.VIT).modificator}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () => removeStatValue(context, state, state.character.getStatByType(StatType.VIT)), icon: const Icon(Icons.remove)),
                            ),
                            Text('${state.character.getStatByType(StatType.VIT).value}'),
                            Expanded(
                              child: IconButton(onPressed: () => addStatValue(context, state, state.character.getStatByType(StatType.VIT)), icon: const Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 115,
                    decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 115,
                    decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 115,
                    decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () => removeStatValue(context, state, state.character.getStatByType(StatType.INT)), icon: const Icon(Icons.remove)),
                            ),
                            Text('${state.character.getStatByType(StatType.INT).value}'),
                            Expanded(
                              child: IconButton(onPressed: () => addStatValue(context, state, state.character.getStatByType(StatType.INT)), icon: const Icon(Icons.add)),
                            ),
                          ],
                        ),
                        Text(
                          checkZero(value: state.character.getStatByType(StatType.INT).modificator)
                              ? '+${state.character.getStatByType(StatType.INT).modificator}'
                              : '${state.character.getStatByType(StatType.INT).modificator}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        const Text(RuStrings.INT),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () => removeStatValue(context, state, state.character.getStatByType(StatType.WIS)), icon: const Icon(Icons.remove)),
                            ),
                            Text('${state.character.getStatByType(StatType.WIS).value}'),
                            Expanded(
                              child: IconButton(onPressed: () => addStatValue(context, state, state.character.getStatByType(StatType.WIS)), icon: const Icon(Icons.add)),
                            ),
                          ],
                        ),
                        Text(
                          checkZero(value: state.character.getStatByType(StatType.WIS).modificator)
                              ? '+${state.character.getStatByType(StatType.WIS).modificator}'
                              : '${state.character.getStatByType(StatType.WIS).modificator}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        const Text(RuStrings.WIS),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () => removeStatValue(context, state, state.character.getStatByType(StatType.CHR)), icon: const Icon(Icons.remove)),
                            ),
                            Text('${state.character.getStatByType(StatType.CHR).value}'),
                            Expanded(
                              child: IconButton(onPressed: () => addStatValue(context, state, state.character.getStatByType(StatType.CHR)), icon: const Icon(Icons.add)),
                            ),
                          ],
                        ),
                        Text(
                          checkZero(value: state.character.getStatByType(StatType.CHR).modificator)
                              ? '+${state.character.getStatByType(StatType.CHR).modificator}'
                              : '${state.character.getStatByType(StatType.CHR).modificator}',
                          style: const TextStyle(fontSize: 30),
                        ),
                        const Text(RuStrings.CHR),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

bool checkZero({required int value}) {
  return value > 0;
}
