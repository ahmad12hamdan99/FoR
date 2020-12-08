% EL
clc
clear
syms q1 q2 dq1 dq2 ddq1 ddq2 m1 m2 I1 I2 L g real
%Jacibians
oc0 = [0 0 0]';
R1 = Rz(q1)*Tx(L);
R2 = R1*Rz(q2)*Tx(L);
oc2 = R1*Rz(q2)*Tx(0.5*L);
oc2 = oc2(1:3, 4);
o1 = R1(1:3,4);
oc2 = simplify(oc2)
o0=[0 0 0]';
oc1=[0 0 0]';
zeros=[0 0 0]';
z1 = R1(1:3,3);
z0=[0 0 1]';
Jv1 = [cross(z0,oc0) zeros]
Jv2 = [cross(z0,oc2-o0) cross(z1,oc2-o1)]
Jw1=[z0 zeros]
Jw2=[z0,z1]

%Euler Lagrange method:

q=[q1;q2];
dq = [dq1; dq2];
ddq = [ddq1; ddq2];
R1 = R1(1:3,1:3);
R2 = R2(1:3,1:3);
D1=m1*(Jv1')*Jv1 + Jw1'*R1*I1*R1'*Jw1;
D2=m2*(Jv2')*Jv2 + Jw2'*R2*I2*R2'*Jw2;
D=D1+D2;
D = simplify(D)
% potential 
P = 9.81*oc2(2)*m2
% Gradient of potential energy
G1=diff(P,q1);
G2=diff(P,q2);
G=[G1;G2]
%Coriolis and centrofoidal force
C = Coriolis(D,q,dq,2);
C=simplify(C)
%Equation of motion
tor = D*ddq+C*dq+G;
tor=simplify(tor)
%substitution
D(q1,q2) = subs(D,{m1, m2, I1, I2,L },{3 4 1 2 0.4});
C(q1,q2,dq1,dq2) = subs(C*dq ,{m1, m2, I1, I2,L },{3 4 1 2 0.4});
G(q1,q2) = subs(G ,{m1, m2, I1, I2,L,g},{3 4 1 2 0.4 9.81});


%NE 

m = zeros(2,1,'sym');