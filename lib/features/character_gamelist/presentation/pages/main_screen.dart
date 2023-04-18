import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math';
import '../bloc/character_bloc.dart';
import 'character_screen.dart';

import 'inventory_screen.dart';
import 'magic_screen.dart';
import 'skill_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const CharacterScreen(),
    //const InventoryScreen(),
    //const MagicScreen(),
    //const SkillScreen(),
  ];

  void _showDiceWindow(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Color.fromARGB(255, 253, 236, 166),
            content: DialogDice(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const CommonScreen(),
            Expanded(
              child: _widgetOptions[_selectedIndex],
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
            backgroundColor: const Color.fromARGB(255, 194, 164, 75),
            style: TabStyle.fixedCircle,
            onTap: (index) {
              switch (index) {
                case 0:
                  _selectedIndex = 0;
                  setState(() {});
                  break;
                case 1:
                  _selectedIndex = 1;
                  setState(() {});
                  break;
                case 2:
                  _showDiceWindow(context);
                  break;
                case 3:
                  _selectedIndex = 2;
                  setState(() {});
                  break;
                case 4:
                  _selectedIndex = 3;
                  setState(() {});
                  break;
              }
            },
            items: [
              TabItem(
                activeIcon: Image.asset("assets/main_screen_assets/icons/bottom_icons_active/stat_active.png"),
                icon: Image.asset("assets/main_screen_assets/icons/bottom_icons/stat.png"),
                title: 'Персонаж',
              ),
              TabItem(
                activeIcon: Image.asset("assets/main_screen_assets/icons/bottom_icons_active/inventory_active.png"),
                icon: Image.asset("assets/main_screen_assets/icons/bottom_icons/inventory.png"),
                title: 'Сумка',
              ),
              TabItem(
                activeIcon: Image.asset("assets/main_screen_assets/icons/bottom_icons_active/dice_active.png"),
                icon: Image.asset("assets/main_screen_assets/icons/bottom_icons/dice.png"),
                title: 'Сумка',
              ),
              TabItem(
                activeIcon: Image.asset("assets/main_screen_assets/icons/bottom_icons_active/spellbook_active.png"),
                icon: Image.asset("assets/main_screen_assets/icons/bottom_icons/spellbook.png"),
                title: 'Магия',
              ),
              TabItem(
                activeIcon: Image.asset("assets/main_screen_assets/icons/bottom_icons_active/skills_active.png"),
                icon: Image.asset("assets/main_screen_assets/icons/bottom_icons/skills.png"),
                //icon: SvgPicture.asset("assets/main_screen_assets/icons/bottom_icons/Untitled.svg"),
                title: 'Умения',
              ),
            ]));
  }
}

class DiceController {
  final int side;
  DiceController({required this.side});

  var count = 0;
  var result = 0;

  increment() => count++;

  void roll() {
    int sum = 0;
    for (var i = 0; i < (count); i++) {
      sum += Random().nextInt(side) + 1;
    }
    result = sum;
    count = 0;
  }
}

class DialogDice extends StatefulWidget {
  const DialogDice({super.key});

  @override
  State<DialogDice> createState() => _DialogDiceState();
}

class _DialogDiceState extends State<DialogDice> {
  DiceController dice4d = DiceController(side: 4);
  DiceController dice6d = DiceController(side: 6);
  DiceController dice8d = DiceController(side: 8);
  DiceController dice10d = DiceController(side: 10);
  DiceController dice12d = DiceController(side: 12);
  DiceController dice20d = DiceController(side: 20);
  DiceController dice100d = DiceController(side: 100);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              showBadge: dice4d.count > 0,
              badgeContent: Text('${dice4d.count}'),
              child: IconButton(
                icon: Image.asset('assets/main_screen_assets/icons/dice/4.png'),
                onPressed: () {
                  setState(() {
                    dice4d.increment();
                  });
                },
              ),
            ),
            Text(
              '  =  ${dice4d.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              showBadge: dice6d.count > 0,
              badgeContent: Text("${dice6d.count}"),
              child: IconButton(
                icon: Image.asset('assets/main_screen_assets/icons/dice/6.png'),
                onPressed: () {
                  setState(() {
                    dice6d.increment();
                  });
                },
              ),
            ),
            Text(
              '  =  ${dice6d.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              showBadge: dice8d.count > 0,
              badgeContent: Text("${dice8d.count}"),
              child: IconButton(
                icon: Image.asset('assets/main_screen_assets/icons/dice/8.png'),
                onPressed: () {
                  setState(() {
                    dice8d.increment();
                  });
                },
              ),
            ),
            Text(
              '  =  ${dice8d.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              showBadge: dice10d.count > 0,
              badgeContent: Text("${dice10d.count}"),
              child: IconButton(
                icon: Image.asset('assets/main_screen_assets/icons/dice/10.png'),
                onPressed: () {
                  setState(() {
                    dice10d.increment();
                  });
                },
              ),
            ),
            Text(
              '  =  ${dice10d.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              showBadge: dice12d.count > 0,
              badgeContent: Text("${dice12d.count}"),
              child: IconButton(
                icon: Image.asset('assets/main_screen_assets/icons/dice/12.png'),
                onPressed: () {
                  setState(() {
                    dice12d.increment();
                  });
                },
              ),
            ),
            Text(
              '  =  ${dice12d.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              showBadge: dice20d.count > 0,
              badgeContent: Text("${dice20d.count}"),
              child: IconButton(
                icon: Image.asset('assets/main_screen_assets/icons/dice/20.png'),
                onPressed: () {
                  setState(() {
                    dice20d.increment();
                  });
                },
              ),
            ),
            Text(
              '  =  ${dice20d.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              showBadge: dice100d.count > 0,
              badgeContent: Text("${dice100d.count}"),
              child: IconButton(
                icon: Image.asset('assets/main_screen_assets/icons/dice/100.png'),
                onPressed: () {
                  setState(() {
                    dice100d.increment();
                  });
                },
              ),
            ),
            Text(
              '  =  ${dice100d.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  dice4d.roll();
                  dice6d.roll();
                  dice8d.roll();
                  dice10d.roll();
                  dice12d.roll();
                  dice20d.roll();
                  dice100d.roll();
                });
              },
              label: const Text("БРОСОК"),
              backgroundColor: const Color.fromARGB(255, 194, 164, 75),
            ),
            Text(
              '  =  ${dice4d.result + dice6d.result + dice8d.result + dice10d.result + dice12d.result + dice20d.result + dice100d.result}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class CommonScreen extends StatelessWidget {
  const CommonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final characterName = ModalRoute.of(context)?.settings.arguments as String;
    context.read<CharacterBloc>().add(GetCharacterEvent(characterName));
    
    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        if (state is CharacterInitial) {
          return const Center(child: SizedBox());
        }
        state as CharacterLoaded;
        return Container(
          height: 270,
          width: double.infinity,
          color: const Color.fromARGB(255, 253, 236, 166),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: ShieldWidget(
                        lineWidth: 3,
                        child: Text(
                          '${state.character.cd}',
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                    Stack(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(border: Border.all(width: 3), borderRadius: BorderRadius.circular(150)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0),
                          child: SizedBox(
                            height: 68,
                            width: 68,
                            child: CircularProgressIndicator(
                              color: Colors.lightBlue,
                              strokeWidth: 7,
                              value: state.character.exp.value / state.character.exp.expToLevel,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${state.character.exp.level}',
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text('Уровень'),
                            ],
                          ),
                        )
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: Text(
                          '${state.character.initiative}',
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const RotatedBox(
                      quarterTurns: 1,
                      child: Text('ИНИЦ-ВА'),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 5), //!----------------------------
                        child: Row(
                          children: [
                            const RotatedBox(
                              quarterTurns: -1,
                              child: Text('ВСЕГО'),
                            ),
                            Column(
                              children: [
                                const Text('ХИТЫ'),
                                Container(
                                  width: 146,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 3,
                                      color: Colors.black,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 70,
                                            height: 47,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: Center(
                                                child: Text(
                                              '${state.character.hp.maxHP}',
                                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          Container(
                                            width: 70,
                                            height: 47,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '${state.character.hp.currHP}',
                                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 70,
                                            height: 47,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '${state.character.hp.maxBonusHP}',
                                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 70,
                                            height: 47,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '${state.character.hp.currBonusHP}',
                                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const Text('ВРЕМЕННЫЕ ХИТЫ'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 11),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 11.0),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text('ОСТАЛОСЬ'),
                    ),
                  ),
                  const SizedBox(
                    width: 43,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5), //!-----------------------------------------
                    child: Column(
                      children: [
                        const Text("ВСЕГО"),
                        Container(
                          height: 100,
                          width: 73,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3), borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 47,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '!',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 47,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '!',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text("ОСТАЛОСЬ"),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 11.0),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text('КОСТЬ ХИТОВ'),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(border: Border.all()),
                child: SvgPicture.asset("assets/main_screen_assets/icons/bottom_icons/Untitled.svg"),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ShieldWidget extends StatelessWidget {
  final Widget child;
  final double lineWidth;
  const ShieldWidget({
    super.key,
    required this.child,
    this.lineWidth = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
          painter: LinePainter(lineWidth: lineWidth),
        ),
        Center(
          child: child,
        ),
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  final double lineWidth;
  LinePainter({required this.lineWidth});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = lineWidth
      ..color = Colors.black
      ..style = PaintingStyle.stroke;

    final arc1 = Path();

    arc1.moveTo(size.width * 0, size.height * 0.25);
    arc1.arcToPoint(Offset(size.width * 0.15, size.height * 0.05), radius: const Radius.circular(30), clockwise: false);
    arc1.lineTo(size.width * 0.5, size.height * 0);
    arc1.lineTo(size.width * 0.85, size.height * 0.05);
    arc1.arcToPoint(Offset(size.width * 1, size.height * 0.25), radius: const Radius.circular(30), clockwise: false);
    arc1.arcToPoint(Offset(size.width * 0.5, size.height * 1), radius: Radius.circular(size.height), clockwise: true);
    arc1.arcToPoint(Offset(size.width * 0, size.height * 0.23), radius: Radius.circular(size.height), clockwise: true);
    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => true;
}
