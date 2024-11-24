# Define the dictionary
cars = {
    "Mazda": ["Miata", "RX7"],
    "Honda": ["S2000", "NSX"],
    "Toyota": ["Supra"],
    "Lexus": ["LFA", "LC500"]
}

# Access and print specific entries
print("Mazda:", cars["Mazda"])
print("Honda:", cars["Honda"])
print("Toyota:", cars["Toyota"])
print("Lexus:", cars["Lexus"])

# Loop through all keys and values
print("All car brands and models:")
for brand, models in cars.items():
    print(f"{brand}: {', '.join(models)}")

