classdef Vehicle
    properties
        Brand
        Model
    end
    
    methods
        function obj = Vehicle(brand, model)
            obj.Brand = brand;
            obj.Model = model;
        end
        
        function displayInfo(obj)
            fprintf('Brand: %s, Model: %s\n', obj.Brand, obj.Model);
        end
    end
end
