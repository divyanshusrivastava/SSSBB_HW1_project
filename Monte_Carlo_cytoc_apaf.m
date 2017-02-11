%% SSSBB Homework Assignment 1
% Group Project Work
%   Group Members: Ankit Sharma (MT16121)
%                  Biswadeep Khan (MT16124)
%                  Divyanshu Srivastava (MT16125)

clear all;
close all;
clc;

%% Input Parameters
time_step = 10^-4;          % Monte_carlo time steps
total_time = time_step*10^8;         % Total Simulation Time
d = 20*10-9;                % lattice spacing
lattice_dim = [60 60 60];   % [x y z] dimensions
cytoc = 100;                % number of cytochrome-c molecules
cytoc_d = 100*10-9;         % size of each cytochrome-c molecule
apaf = 50;                  % number of apaf molecules
apaf_d = 50*10-9;           % size of each apaf molecule

p_left = 1/6;               % Probabilities of movement of a molecule to 
                            % the left, right, up, down, front or 
                            % back in the lattice.
p_right = 1/6;
p_up = 1/6;
p_down = 1/6;
p_front = 1/6;
p_back = 1/6;
%% Initialization
lattice(lattice_dim) = Molecule_class(0);
for i = 1:cytoc
    r = randi(lattice_dim(1), 1, 3);
    mol_obj = Molecule_class;
    mol_obj.molecule_type = 1;       % 1 in lattice means cytochrome-c
    mol_obj.molecule_bonded_with = 0; % 0 in bonded_with means the molecule is unbonded
    lattice(r(1),r(2),r(3)) = mol_obj;
end
for i = 1:apaf
    r = randi(lattice_dim(1), 1, 3);
    mol_obj = Molecule_class;
    mol_obj.molecule_type = 2;       % 2 in lattice means apaf
    mol_obj.molecule_bonded_with = 0; % 0 in bonded_with means the molecule is unbonded
    lattice(r(1),r(2),r(3)) = mol_obj;
end


%for i = 1:60
%    for j = 1:60
%        for k = 1:60
%            lattice(i,j,k)
%        end
%    end
%end

for i = 1:60
    for j = 1:60
        for k = 1:60
            for l = 1:time_step:total_time
                prob_of_rand_move = rand;
                if(prob_of_rand_move <= p_left)
                    %
                elseif (prob_of_rand_move <= p_left + p_right)
                    %   
                elseif (prob_of_rand_move <= p_left + p_right + p_up)
                    %
                elseif (prob_of_rand_move <= p_left + p_right + p_up + p_down)
                    %
                elseif (prob_of_rand_move <= p_left + p_right + p_up + p_down + p_front)
                    %
                else
                    %
                end          
            end
        end
    end
end
