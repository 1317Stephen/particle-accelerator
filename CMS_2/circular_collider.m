function [] = circular_collider(radius, x, y,z, opposite)
[coords, h] = ellipse3D(radius, radius, x, y, z);
for i=1:length(coords(1,:))
    hold off;
    px = coords(1,i);
	py = coords(2,i);
	pz = coords(3,i);
    
    px_opposite = coords(1,length(coords(1,:))-i+1);
    py_opposite = coords(2,length(coords(2,:))-i+1);
    pz_opposite = coords(3,length(coords(3,:))-i+1);
    
    if opposite==0
        plot3( coords(1,:), coords(2,:), coords(3,:), px, py, pz,'.-', 'MarkerSize',20);
    else
        plot3( coords(1,:), coords(2,:), coords(3,:), px_opposite, py_opposite, pz_opposite,'.-', 'MarkerSize',20);
    end
    
	
%     hold on;
%     
%     hold off;
%     plot3( coords(1,:), coords(2,:), coords(3,:),px, py, pz,'.-', 'MarkerSize',20, px_opposite, py_opposite, pz_opposite,'.-', 'MarkerSize',20);
%     axis off;
	pause(0.005);
end


end

