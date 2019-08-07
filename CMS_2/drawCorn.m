function [ output_args ] = drawCorn( input_args )
% https://stackoverflow.com/questions/26939349/how-to-draw-a-cone-with-given-height-and-radius
%   자세한 설명 위치
R = 1; %// radius
H = 3; %// height
N = 100; %// number of points to define the circumference
[x, y, z] = cylinder([0 R], N);
mesh(x, y, H*z)

end

