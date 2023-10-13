classdef Car < Vehicle
    properties
        NumDoors
    end
    
    methods
        function obj = Car(brand, model, numDoors)
            obj@Vehicle(brand, model);
            obj.NumDoors = numDoors;
        end
        
        function doors = getNumDoors(obj)
            doors = obj.NumDoors;
        end
        
        function displayInfo(obj)
            fprintf('Car - Brand: %s, Model: %s, Doors: %d\n', obj.Brand, obj.Model, obj.NumDoors);
        end
    end
end
