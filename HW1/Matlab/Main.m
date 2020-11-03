clear;clc;
%Constants
l1=0.4; l2=0.025; l3=0.56; l4=0.025; l5=0.515 ; l6=0.09;

%q = sym('q',[1 6]);
%[T,R03,R36]=FK(q);
%testing FK and IK
for i=1:25 
    b1 = [-pi -pi -pi -pi -pi -pi];
    b2 = [pi pi pi pi pi pi];
    qt = (b2-b1).*rand(1,6) + b1
    T=FK(qt)
    rad2deg(qt);
    qn=IK(T)
    for j=1:size(qn,1)
        Ts=FK(qn(j,:))
        if norm(T-Ts)>1e-3
            qn(j,:)
            disp('error in computing IK')
        end
    end
end

