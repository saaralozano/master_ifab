import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:master_ifab/config/config.dart';
import 'package:master_ifab/presentation/providers/theme_provider.dart';
import 'package:master_ifab/presentation/screens/screens.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    )
  );
}

class MainApp extends ConsumerWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final tenebrisModusEst = ref.watch(estTenebrisModusProvider);

    final electusColor = ref.watch(electusColorProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(electusColor: electusColor, tenebrisModusEst: tenebrisModusEst).getTheme(),
    );
  }
}
