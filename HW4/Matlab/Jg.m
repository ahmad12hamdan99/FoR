function J=Jg(q)
 T=FK(q);
% Geometrical Jacobian
%disp('Geometrical Method')
L1 = 1 ; L2 = 1 ; L3=1;


O=T(1:3,4);
T1=Rz(q(1))*Tz(L1);
T2=T1*Ry(q(2))*Tx(L2);

R1=T1(1:3,1:3);
R2=T2(1:3,1:3);

% The first joint (revolute)
O0 = [0 0 0]';
z0 = [0 0 1]';
Jv1 = cross(z0, O - O0);
Jw1 = z0;

% The second joint (revolute)
O1=T1(1:3,4);
z1 = R1*[0 1 0]';
Jv2 = cross(z1, O - O1);
Jw2 = z1;

% The third joint (revolute)
O2=T2(1:3,4);
z2 = R2*[0 1 0]';
Jv3 = cross(z2, O - O2);
Jw3 = z2;



Jv = [Jv1, Jv2, Jv3];
Jw = [Jw1, Jw2, Jw3];
J = [Jv; Jw];
end