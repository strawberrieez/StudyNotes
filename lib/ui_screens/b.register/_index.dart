import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:studynotes/dt_domains/a.auth/_index.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.register.data.dart';
part 'b.register.ctrl.dart';
part 'c.register.view.dart';
part 'widgets/a.register.appbar.dart';
part 'widgets/d.register.delta.dart';
part 'widgets/e.register.echo.dart';

RegisterData get _dt => Data.register.st;
RegisterCtrl get _ct => Ctrl.register;
AuthProv get _pv => Prov.auth.st;
AuthServ get _sv => Serv.auth;
