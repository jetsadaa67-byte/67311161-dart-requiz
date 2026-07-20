Future<Map<String,dynamic>> fetchOrder (int orderID) async{
  await Future.delayed(Duration(seconds: 2));

  if(orderID <= 0){
    throw Exception('รหัสคำสั่งซื้อไม่ถูกต้อง');
  }
  return {
    'id':orderID,
    'menu': 'ลาเต้',
    'total': 65.0
  };
}

Stream<String> trackOrder() async*{
  await Future.delayed(Duration(seconds: 1));
  yield ('รับออเดอร์แล้ว');
  await Future.delayed(Duration(seconds: 1));
  yield ('กำลังจัดทำ');
  await Future.delayed(Duration(seconds: 1));
  yield ('จัดส่งเรียบร้อยแล้ว');
  
}

void main() async{
  print('เริ่มโหลดข้อมูล...');

  try {
    final result = await fetchOrder(7);
    print('ได้รับข้อมูลออเดอร์ : $result');
  } catch (e){
    print('เกิดข้อผิดพลาด : $e');
  } finally {
    print('จบรายการ');
  }
  await Future.delayed(Duration(seconds: 1));
  print('----');
  try {
    final result = await fetchOrder(0);
    print('ได้รับข้อมูลออเดอร์ : $result');
  } catch (e){
    print('เกิดข้อผิดพลาด : $e');
  } finally {
    print('จบรายการ');
  }
  await Future.delayed(Duration(seconds: 1));
  print('----');
  await for(final status in trackOrder()){
    print('สถานะ : $status');
  }
  await Future.delayed(Duration(seconds: 1));
  print('ติมตามสถานะเสร็จสิ้น');
}
