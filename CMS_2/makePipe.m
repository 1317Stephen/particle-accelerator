function [] = makePipe(R,heightStart,heightEnd)
%% description
% make the cylinder pipe that appears particle track
% 
% [X,Y,Z] = CYLINDER2(R,D,N) forms the unit cylinder based on the symmetry axis D and the generator curve in the vector R. Vector R contains the radius at equally spaced points along the unit height of the cylinder. D is a vector that defines the direction of the symmetry axis. The cylinder has N points around the circumference. 
% 
% [X,Y,Z] = CYLINDER2 default to R = [1 1], D = [0,0,1] and N = 20
% 
% [X,Y,Z] = CYLINDER2(R) default to D = [0,0,1] and N = 20
% 
% [X,Y,Z] = CYLINDER2(R,D) default to N = 20
% 
% SURF(X,Y,Z) displays the cylinder.


%% Test :vertical 1
% [x,y,z] = cylinder(10,1000);
% surf(x,y,z)
% shading interp
% alpha(0.1)

%% Test :vertical 2
% [x,y,z] = cylinder(10,1000);
% h=surf(x,y,z);
% set(h,'linestyle','none');
% alpha(0.1);

%% horizontal
[x y z] = cylinder2(R,[1 0 0],1000);
x(1,:)=heightStart;
x(2,:) = heightEnd;
h = surf(x,y,z);
% set(h,'linestyle','none', 'FaceColor', [0,0,0]);
set(h,'linestyle','none');
% set(hgtransform, 'Matrix', makehgtform('scale', size));
alpha(0.3);

end

