import 'package:flutter/material.dart';
import 'add_transaction_page.dart';
import 'edit_transaction_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),

      // ==================================================
      // NỘI DUNG TRANG CHỦ
      // ==================================================
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ==================================================
              // THANH TRÊN
              // ==================================================
              Row(
                children: [
                  const Icon(
                    Icons.menu,
                    size: 27,
                    color: Color(0xFF202632),
                  ),

                  const SizedBox(width: 18),

                  const Expanded(
                    child: Text(
                      'Quản lý thu chi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202632),
                      ),
                    ),
                  ),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.notifications_none,
                        size: 29,
                        color: Color(0xFF202632),
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

              const SizedBox(height: 18),

              // ==================================================
              // THẺ SỐ DƯ
              // ==================================================
              Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.fromLTRB(18, 16, 18, 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF4D88F8),
                      Color(0xFF1764E8),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    // Nội dung chữ
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            'SỐ DƯ HIỆN TẠI  👁',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Center(
                          child: Text(
                            '5.000.000 đ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 31,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Ví ở góc phải
                    Positioned(
                      right: 3,
                      bottom: 16,
                      child: SizedBox(
                        width: 70,
                        height: 62,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            // Tờ tiền
                            Positioned(
                              top: 0,
                              left: 13,
                              child: Container(
                                width: 35,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF71C983),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),

                            // Ví
                            Positioned(
                              left: 0,
                              bottom: 0,
                              child: Container(
                                width: 62,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2B83E8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 0,
                                      top: 14,
                                      child: Container(
                                        width: 27,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF155AB7),
                                          borderRadius:
                                          BorderRadius.circular(7),
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

                            // Đồng xu
                            Positioned(
                              left: 2,
                              bottom: -3,
                              child: Container(
                                width: 19,
                                height: 19,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFC93D),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.attach_money,
                                  color: Colors.orange,
                                  size: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Chỉ báo
                    const Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          '━ • • •',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // ==================================================
              // THU NHẬP / CHI TIÊU
              // ==================================================
              Row(
                children: [
                  Expanded(
                    child: summaryCard(
                      title: 'TỔNG THU NHẬP',
                      money: '8.000.000 đ',
                      backgroundColor: const Color(0xFFEAF8EC),
                      iconColor: const Color(0xFF69C879),
                      icon: Icons.arrow_downward,
                      moneyColor: Colors.green,
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: summaryCard(
                      title: 'TỔNG CHI TIÊU',
                      money: '3.000.000 đ',
                      backgroundColor: const Color(0xFFFFEBED),
                      iconColor: const Color(0xFFFF7075),
                      icon: Icons.arrow_upward,
                      moneyColor: Colors.red,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 22),

              // ==================================================
              // GIAO DỊCH GẦN ĐÂY
              // ==================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Giao dịch gần đây',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF202632),
                    ),
                  ),

                  Text(
                    'Xem tất cả',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2878E8),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // ==================================================
              // DANH SÁCH GIAO DỊCH
              // ==================================================
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
            ],
          ),
        ),
      ),

      // ==================================================
      // NÚT +
      // ==================================================
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
        elevation: 5,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),

      // ==================================================
      // THANH MENU DƯỚI
      // ==================================================
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

  // ==================================================
  // Ô THU NHẬP / CHI TIÊU
  // ==================================================
  Widget summaryCard({
    required String title,
    required String money,
    required Color backgroundColor,
    required Color iconColor,
    required IconData icon,
    required Color moneyColor,
  }) {
    return Container(
      height: 76,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 19,
            backgroundColor: iconColor,
            child: Icon(
              icon,
              color: Colors.white,
              size: 22,
            ),
          ),

          const SizedBox(width: 8),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 9,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  money,
                  style: TextStyle(
                    fontSize: 12,
                    color: moneyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ==================================================
  // ITEM GIAO DỊCH
  // ==================================================
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
                    color: Color(0xFF202632),
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
              size: 17,
              color: Color(0xFF1687F2),
            ),
            tooltip: 'Sửa',
          ),
        ],
      ),
    );
  }
}