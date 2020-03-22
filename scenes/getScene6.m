%{
 * Copyright (C) 2013-2025, The Regents of The University of Michigan.
 * All rights reserved.
 * This software was developed in the Biped Lab (https://www.biped.solutions/) 
 * under the direction of Jessy Grizzle, grizzle@umich.edu. This software may 
 * be available under alternative licensing terms; contact the address above.
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * The views and conclusions contained in the software and documentation are those
 * of the authors and should not be interpreted as representing official policies,
 * either expressed or implied, of the Regents of The University of Michigan.
 * 
 * AUTHOR: Bruce JK Huang (bjhuang[at]umich.edu)
 * WEBSITE: https://www.brucerobot.com/
%}

function [object_list, color_list] = getScene6()    
    %% Description: 
    %12 targets in the scene, in different positions and orentations except
    %for no constrained of the elevation angle.(no upper and lower bowl)
    

    %% Create object list
    num_obj = 12;    
    object_list(num_obj).object_vertices = struct();
    color_list = getColors(num_obj);
    
    %% Create objects
    objects1 = genShape("polygon", 1.2, 4);
    objects2 = genShape("polygon", 1.0, 5);
    objects3 = genShape("polygon", 0.8, 6);
    
    % Plot original polygon (2D)
    % pgon = polyshape(objects1.y, objects1.z);
    % plot(fig_handle(1), pgon)
    % viewCurrentPlot(fig_handle(1), "2D")

    % Plot original polygon (3D)
    % plotConnectedVerticesStructure(fig_handle(2), vertices, 'b')

    %% move away the polygon
    disp("--- Moving obstacles...")
    
    % Move Object1
    object1_mat = convertXYZstructToXYZmatrix(objects1);
    object1_mat_h = converToHomogeneousCoord(object1_mat);
    rpy = [0 0 20]; % in degree
    xyz = [2.5, 9, 0];
    moved_obj1_mat_h = moveByRPYXYZ(object1_mat_h, rpy, xyz);
    object_list(1).object_vertices = convertXYZmatrixToXYZstruct(moved_obj1_mat_h);

    rpy = [0 0 25]; % in degree
    xyz = [12.5, 9, 0];
    moved_obj2_mat_h = moveByRPYXYZ(object1_mat_h, rpy, xyz);
    object_list(2).object_vertices = convertXYZmatrixToXYZstruct(moved_obj2_mat_h);
    
    rpy = [0 0 45]; % in degree
    xyz = [6, -5, 0];
    moved_obj3_mat_h = moveByRPYXYZ(object1_mat_h, rpy, xyz);
    object_list(3).object_vertices = convertXYZmatrixToXYZstruct(moved_obj3_mat_h);
    
    rpy = [0 0 35]; % in degree
    xyz = [-10, 9, 0];
    moved_obj4_mat_h = moveByRPYXYZ(object1_mat_h, rpy, xyz);
    object_list(4).object_vertices = convertXYZmatrixToXYZstruct(moved_obj4_mat_h);
    
    
    % Move Object2
    object2_mat = convertXYZstructToXYZmatrix(objects2);
    object2_mat_h = converToHomogeneousCoord(object2_mat);

    rpy = [0 0 15]; % in degree
    xyz = [15, 10, 0.1];
    moved_obj5_mat_h = moveByRPYXYZ(object2_mat_h, rpy, xyz);
    object_list(5).object_vertices = convertXYZmatrixToXYZstruct(moved_obj5_mat_h);

    rpy = [0 0 -25]; % in degree
    xyz = [7, -3, 0.2];
    moved_obj6_mat_h = moveByRPYXYZ(object2_mat_h, rpy, xyz);
    object_list(6).object_vertices = convertXYZmatrixToXYZstruct(moved_obj6_mat_h);

    rpy = [0 0 5]; % in degree
    xyz = [15, -10, 0.1];
    moved_obj7_mat_h = moveByRPYXYZ(object2_mat_h, rpy, xyz);
    object_list(7).object_vertices = convertXYZmatrixToXYZstruct(moved_obj7_mat_h);

    rpy = [0 0 -35]; % in degree
    xyz = [7, -3, 0.2];
    moved_obj8_mat_h = moveByRPYXYZ(object2_mat_h, rpy, xyz);
    object_list(8).object_vertices = convertXYZmatrixToXYZstruct(moved_obj8_mat_h);
    
    % Move Object3
    object3_mat = convertXYZstructToXYZmatrix(objects3);
    object3_mat_h = converToHomogeneousCoord(object3_mat);
    rpy = [5 5 0]; % in degree
    xyz = [10, 0, 0];
    moved_obj9_mat_h = moveByRPYXYZ(object3_mat_h, rpy, xyz);
    object_list(9).object_vertices = convertXYZmatrixToXYZstruct(moved_obj9_mat_h);
    
    rpy = [0 0 0]; % in degree
    xyz = [-10, 4, 0];
    moved_obj10_mat_h = moveByRPYXYZ(object3_mat_h, rpy, xyz);
    object_list(10).object_vertices = convertXYZmatrixToXYZstruct(moved_obj10_mat_h);
    
    rpy = [0 0 0]; % in degree
    xyz = [10, 5, 0];
    moved_obj11_mat_h = moveByRPYXYZ(object3_mat_h, rpy, xyz);
    object_list(11).object_vertices = convertXYZmatrixToXYZstruct(moved_obj11_mat_h);
    
    rpy = [0 0 0]; % in degree
    xyz = [-10, -8, 0];
    moved_obj12_mat_h = moveByRPYXYZ(object3_mat_h, rpy, xyz);
    object_list(12).object_vertices = convertXYZmatrixToXYZstruct(moved_obj12_mat_h);
end