classdef Bicycle < Vehicle
    properties
        Type
    end
    
    methods
        function obj = Bicycle(brand, model, type)
            obj@Vehicle(brand, model);
            obj.Type = type;
        end
        
        function bikeType = getBicycleType(obj)
            bikeType = obj.Type;
        end
        
        function displayInfo(obj)
            fprintf('Bicycle - Brand: %s, Model: %s, Type: %s\n', obj.Brand, obj.Model, obj.Type);
        end
    end
end
