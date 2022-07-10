import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/data/model/todo_model.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/service/navigation_service.dart';

import 'bloc/todo_bloc.dart';
import 'pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosBloc()
            ..add(
              LoadTodosEvent(todos: todoListDemo),
            ),
        ),
        
      ],
      child: MaterialApp(
            title: 'NSG BIOLABS',
             navigatorKey: NavigationService.navigatorKey,
            debugShowCheckedModeBanner: false,
            locale: const Locale("en"),
            theme: ThemeData(
              textTheme: CustomTextStyle.textFontApp,
            ),
            home: HomePage(),
            // translationsKeys: AppTranslation.translations,
          ),
    );
  }
}
