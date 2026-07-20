const double vatRate = 0.07;
void main(){
 final String shopName = 'Dart Cafe';
 print('ร้าน : $shopName');
 print('อัตราภาษี : $vatRate');
 print('-----');
 List<String> catecoris = ['เครื่องดื่ม','ของคาว','ของหวาน'];
 print('หมวดหมู่ : $catecoris');

 Map<String,int> menu = {
 'ลาเต้': 55,
 'ข้าวผัด':60,
 'ชาเขียว':50,
 'กะเพรา':45
 };
 print('จำนวนเมนู : ${menu.length} รายการ');
 print('ราคาลาเต้ : ${menu['ลาเต้']} บาท');
 print('----');
 print('เมนูราคา 50 บาท ขึ้นไป');
 for(var entry in menu.entries){
 if (entry.value >= 50){
 print('${entry.key} : ${entry.value} บาท');
 }
 }
 print('----');
 double calcTotal({required int price, required int qty, double discount = 0}){
 return (price * qty - discount) * (1 + vatRate);
 }
 final noDiscount = calcTotal(price: 55, qty: 2);
 final withDiscount = calcTotal(price: 55, qty: 2, discount: 10);
 print('ยอดสุทธิ (ไม่มีส่วนลด) : $noDiscount');

print('ยอดสุทธิ (ส่วนลด 10 บาท) : $withDiscount');
 print('----');
 String? coupon;
 print('ความยาวคูปอง : ${coupon?.length ?? 0}');
 coupon ??= 'No-coupon';
 print('คูปองหลังกำหนดค่า : $coupon');
}