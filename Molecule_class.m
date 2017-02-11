% Class created coresponding to molecules with variables as molecule_type
% and bonded_with
classdef Molecule_class
    properties
        molecule_type
        molecule_bonded_with
    end
    methods
        function obj = Molecule_class(constructor_input)
            if nargin > 0
                obj.molecule_type = constructor_input;
                obj.molecule_bonded_with = constructor_input;
            end          
        end
    end
end