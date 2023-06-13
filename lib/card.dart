import 'package:alura_learnings/icone_estrela.dart';
import 'package:flutter/material.dart';

class CardTarefa extends StatefulWidget {
  final String nome;
  final String imageUrl;
  final int dificuldade;

  const CardTarefa(this.nome, this.imageUrl, this.dificuldade, {super.key});

  @override
  State<CardTarefa> createState() => _CardTarefaState();
}

class _CardTarefaState extends State<CardTarefa> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.blue
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3)
            ),
          ]
        ),
          child: Stack(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.blue
          ),
            ),
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 100,
                      height: 100,
                      child: Image.network(
                        widget.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 200,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              widget.nome,
                              style: TextStyle(
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            width: 200,
                            height: 50,
                            child: Row(
                              children: () {
                                final List<Widget> widgets = [];
                                for (int i = 0; i < widget.dificuldade; i++) {
                                  widgets.add(IconeEstrela());
                                }
                                return widgets;
                              }(),
                            )),
                      ],
                    ),
                    TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered))
                                return Colors.blue.withOpacity(0.08);
                              if (states.contains(MaterialState.focused) ||
                                  states.contains(MaterialState.pressed))
                                return Colors.blue.withOpacity(0.22);
                              return null; // Defer to the widget's default.
                            },
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            if (level < 10) {
                              level++;
                            }
                          });
                        },
                        child: Container(
                          height: 50,
                          child: Column(
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                "Level up",
                                style: TextStyle(fontSize: 11),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: LinearProgressIndicator(
                          value: level / 10,
                        ),
                      ),
                      Text(
                        "Level $level",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
