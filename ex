expenses = []

def add_expense():
    date = input("Enter the date (YYYY-MM-DD): ")
    description = input("Enter a description: ")
    amount = float(input("Enter the amount: "))
    expenses.append({"date": date, "description": description, "amount": amount})
    print("Expense added successfully!")

def view_expenses():
    if not expenses:
        print("No expenses found!")
    else:
        print("Expenses:")
        for expense in expenses:
            print(f"Date: {expense['date']}, Description: {expense['description']}, Amount: {expense['amount']}")

def main():
    while True:
        print("\n1. Add Expense")
        print("2. View Expenses")
        print("3. Quit")
        choice = input("Enter your choice (1-3): ")
        if choice == "1":
            add_expense()
        elif choice == "2":
            view_expenses()
        elif choice == "3":
            break
        else:
            print("Invalid choice! Please try again.")

if _name_ == "_main_":
    main()
