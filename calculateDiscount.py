def calculate_discount(price,percentageDiscount):
    if percentageDiscount>=20:
        price = price*0.8
        return price
    else:
        return  price
 
def main():
    price = int(input("Enter the price of the item: "))
    percentageDiscount = int(input("Enter the percentage discount: "))
    finalPrice = calculate_discount(price,percentageDiscount)
    print("The final price is: ",finalPrice)
    
if __name__ == "__main__":
    main()