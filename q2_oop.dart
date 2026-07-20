abstract class menuItem{
    final String name;
    final double basePrice;

    static int itemCount = 0;

    menuItem(this.name, this.basePrice){
        itemCount++;
    }
    double price();
    
    void show(){
    print('$name - ${price()} บาท');
    }
}
class Drink extends menuItem{
    final int toppings;

    Drink(String name, double basePrice,this.toppings) : super(name ,basePrice);
}
