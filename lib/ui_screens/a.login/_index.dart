
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:studynotes/dt_domains/a.auth/_index.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.login.data.dart';
part 'b.login.ctrl.dart';
part 'c.login.view.dart';

LoginData get _dt => Data.login.st;
LoginCtrl get _ct => Ctrl.login;
AuthProv get _pv => Prov.auth.st;
AuthServ get _sv => Serv.auth;