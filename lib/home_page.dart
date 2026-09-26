import 'package:flutter/material.dart';
import 'add_transaction_page.dart';
import 'edit_transaction_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),

      // =========================
      // NỘI DUNG CHÍNH
      // =========================
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================
              // THANH TRÊN
              // =========================
              Row(
                children: [
                  const Icon(
                    Icons.menu,
                    size: 28,
                    color: Colors.black,
                  ),

                  const SizedBox(width: 18),

                  const Expanded(
                    child: Text(
                      'Quản lý thu chi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1D2433),
                      ),
                    ),
                  ),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.notifications_none,
                        size: 29,
                        color: Colors.black,
                      ),

                      Positioned(
                        right: -2,
                        top: -3,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // =========================
              // SỐ DƯ HIỆN TẠI
              // =========================
              Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF4B84F8),
                      Color(0xFF1565E8),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 4),

                        const Text(
                          'SỐ DƯ HIỆN TẠI  👁',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          '5.000.000 đ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    // Ví nhỏ ở góc
                    Positioned(
                      right: 8,
                      bottom: 16,
                      child: Container(
                        width: 60,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2783E8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              top: -14,
                              left: 16,
                              child: Container(
                                width: 33,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF72C884),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),

                            Positioned(
                              right: -2,
                              top: 13,
                              child: Container(
                                width: 25,
                                height: 23,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1459B6),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Center(
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Center(
                        child: Text(
                          '━ • • •',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // =========================
              // TỔNG THU / CHI
              // =========================
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 78,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAF8EC),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 19,
                            backgroundColor: Color(0xFF68C879),
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),

                          const SizedBox(width: 8),

                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TỔNG THU NHẬP',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(height: 4),

                                Text(
                                  '8.000.000 đ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 78,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBED),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 19,
                            backgroundColor: Color(0xFFFF6E73),
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),

                          const SizedBox(width: 8),

                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TỔNG CHI TIÊU',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(height: 4),

                                Text(
                                  '3.000.000 đ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 22),

              // =========================
              // GIAO DỊCH GẦN ĐÂY
              // =========================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Giao dịch gần đây',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1D2433),
                    ),
                  ),

                  Text(
                    'Xem tất cả',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // =========================
              // DANH SÁCH
              // =========================
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    transactionItem(
                      context,
                      icon: Icons.restaurant,
                      iconColor: Colors.orange,
                      title: 'Ăn trưa',
                      category: 'Ăn uống',
                      date: '03/09/2024',
                      money: '-50.000 đ',
                      moneyColor: Colors.red,
                    ),

                    transactionItem(
                      context,
                      icon: Icons.directions_car,
                      iconColor: Colors.blue,
                      title: 'Xăng xe',
                      category: 'Di chuyển',
                      date: '03/09/2024',
                      money: '-100.000 đ',
                      moneyColor: Colors.red,
                    ),

                    transactionItem(
                      context,
                      icon: Icons.attach_money,
                      iconColor: Colors.green,
                      title: 'Lương tháng 9',
                      category: 'Thu nhập',
                      date: '01/09/2024',
                      money: '+8.000.000 đ',
                      moneyColor: Colors.green,
                    ),

                    transactionItem(
                      context,
                      icon: Icons.shopping_cart,
                      iconColor: Colors.purple,
                      title: 'Mua sắm',
                      category: 'Mua sắm',
                      date: '31/08/2024',
                      money: '-300.000 đ',
                      moneyColor: Colors.red,
                    ),

                    transactionItem(
                      context,
                      icon: Icons.school,
                      iconColor: Colors.teal,
                      title: 'Học phí',
                      category: 'Giáo dục',
                      date: '30/08/2024',
                      money: '-500.000 đ',
                      moneyColor: Colors.red,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      // =========================
      // NÚT +
      // =========================
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTransactionPage(),
            ),
          );
        },
        backgroundColor: const Color(0xFF2878E8),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),

      // =========================
      // MENU DƯỚI
      // =========================
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF2878E8),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Giao dịch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline),
            label: 'Thống kê',
          ),
        ],
      ),
    );
  }

  // =========================
  // WIDGET GIAO DỊCH
  // =========================
  Widget transactionItem(
      BuildContext context, {
        required IconData icon,
        required Color iconColor,
        required String title,
        required String category,
        required String date,
        required String money,
        required Color moneyColor,
      }) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Row(
        children: [
          // Icon
          CircleAvatar(
            radius: 18,
            backgroundColor: iconColor,
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),

          const SizedBox(width: 10),

          // Tên + danh mục
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1D2433),
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // Ngày + tiền
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                date,
                style: const TextStyle(
                  fontSize: 9,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 3),

              Text(
                money,
                style: TextStyle(
                  fontSize: 11,
                  color: moneyColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          // Nút sửa
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const EditTransactionPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.edit,
              color: Colors.blue,
              size: 18,
            ),
            tooltip: 'Sửa giao dịch',
          ),
        ],
      ),
    );
  }
}