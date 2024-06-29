%Copyright 2024 Jade Vincent

%This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
%This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
%You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

% made By Jade (J) E Vincent 6/28/2024

clear; clc; close all;
Cb1x = 20; %Collum One Location
Cb2x = 0; %Collum Two Position
Cb1y = 6; %Collum One Location
Cb2y = 0; %Collum Two Position

X = 15; %X Postion
Y = 0; %Y Postition
Z = 5; %Z Postition

C = 30; %Carriage Arm Length


A1 = X-Cb1x; %Collum One Distance from (0,0)
A2 = X+Cb2x; %Collum two Distance from (0,0)

Bs1 = C^2-A1^2; %Calculate Carriage One Height Squared
B1 = sqrt(Bs1)+Z; %Find The Final Height (sqrt Of Carriage Height square)

Bs2 = C^2-A2^2; %Calculate Carriage Two Height Squared
B2 = sqrt(Bs2)+Z; %Find The Final Height (sqrt Of Carriage Height square)

%Plot X and Z Values For Carriage One, Carriage Two And The Target Position 
xPlot = [Cb1x, X, Cb2x];
zPlot = [B1, Z, B2];

figure
axis equal
plot(xPlot, zPlot,...
    'MarkerFaceColor',[1 0 0],...
    'MarkerEdgeColor', [1 0 0],... 
    'Marker', 'square',...
    'LineWidth', 6,...
    'Color',[0.313725501298904 0.313725501298904 0.313725501298904])
