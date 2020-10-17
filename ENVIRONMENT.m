%% ENVIRONMENT CLASS

% Setting and initialising environment parameters and functions

%% Setup

close all
set(0,'DefaultFigureWindowStyle','docked')
clc
clf
clear

%% Parameters

% workspace = [-x x -y y -z z]
workspace = [-500 500 -100 100 0 100];
axis equal;

%% Environment

% Table setup
[f,v,data] = plyread('table.ply','tri');
vertexColours = [data.vertex.red, data.vertex.green, data.vertex.blue]/255;

% ---- this part of code does not work ----------------------
%Table start position at(0,0,100)
tablePose = eye(4);
forwardTR = makehgtform('translate',[0,0,100]);
% -----------------------------------------------------------
hold on;

% PLOT TRISURF
tableMesh_h = trisurf(f,v(:,1),v(:,2), v(:,3) ...
    ,'FaceVertexCData',vertexColours,'EdgeColor','interp','EdgeLighting','flat');

%%

% Bottles setup
[f,v,data] = plyread('beer_bottle.ply','tri');
vertexColours = [data.vertex.red, data.vertex.green, data.vertex.blue]/255;
hold on;

% PLOT TRISURF
beer_bottleMesh_h = trisurf(f,v(:,1),v(:,2), v(:,3) ...   
    ,'FaceVertexCData',vertexColours,'EdgeColor','interp','EdgeLighting','flat');
