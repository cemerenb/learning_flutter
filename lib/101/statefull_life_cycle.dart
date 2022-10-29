import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.mesaj})
      : super(key: key);
  final String mesaj;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _mesaj = '';
  late bool _isOdd = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    _mesaj = widget.mesaj;
    _isOdd = widget.mesaj.length.isOdd;
    _comnputeName();
  }

  void _comnputeName() {
    if (_isOdd) {
      _mesaj += ' Tek';
    } else {
      _mesaj += ' Çift';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_mesaj),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_mesaj))
          : ElevatedButton(onPressed: () {}, child: Text(_mesaj)),
    );
  }
}
