% Create instances of the 'Car' and 'Bicycle' classes
myCar = Car('Toyota', 'Camry', 4);
myBike = Bicycle('Trek', 'Mountain Bike', 'Mountain');

% Display information about the vehicles
myCar.displayInfo(); % Polymorphism - Calls Car's displayInfo method
myBike.displayInfo(); % Polymorphism - Calls Bicycle's displayInfo method
