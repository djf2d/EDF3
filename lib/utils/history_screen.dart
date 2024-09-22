import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/home_screen/presentation/widgets/chart_section.dart';
import '../features/home_screen/presentation/widgets/upcoming_payments_list_item.dart';
import 'app_router.dart';
import 'theme.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const ChartSection(),
                const SizedBox(height: 54),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 14),
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(child: Text('Icon')),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              children: [
                                Text('Income'),
                                Text('17,856.3 JOD'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 14),
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(child: Text('Icon')),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              children: [
                                Text('Outcome'),
                                Text('17,856.3 JOD'),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Upcoming Payments",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context)
                            .push(AppRouter.upcomingPaymentsScreen);
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: AppTheme.hightLighted,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40), // Minor spacing
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 180,
              child: ListView.builder(
                itemCount: 40,
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const UpcomingPaymentsListItem();
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 100))
        ],
      ),
    );
  }
}
