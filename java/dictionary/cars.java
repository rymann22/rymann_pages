import java.util.*;

public class CarDictionary {
    public static void main(String[] args) {
        // Create a HashMap to store car brands and their models
        Map<String, List<String>> cars = new HashMap<>();

        // Add entries to the map
        cars.put("Mazda", Arrays.asList("Miata", "RX7"));
        cars.put("Honda", Arrays.asList("S2000", "NSX"));
        cars.put("Toyota", Arrays.asList("Supra"));
        cars.put("Lexus", Arrays.asList("LFA", "LC500"));

        // Access and print specific entries
        System.out.println("Mazda: " + cars.get("Mazda"));
        System.out.println("Honda: " + cars.get("Honda"));
        System.out.println("Toyota: " + cars.get("Toyota"));
        System.out.println("Lexus: " + cars.get("Lexus"));

        // Loop through all keys and values
        System.out.println("All car brands and models:");
        for (Map.Entry<String, List<String>> entry : cars.entrySet()) {
            System.out.println(entry.getKey() + ": " + String.join(", ", entry.getValue()));
        }
    }
}

