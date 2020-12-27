syms q1 q2 q3 q4 q5 q6 dl1 dl2 dl3 dl4 dl5 dl6 dq1 dq2 dq3 dq4 dq5 dq6
load("calibration_dataset.mat");
pi = zeros(18,1);
Fisrst step: 
contstruct A matrix:

l2 = 25;
l6 = 90;
l5 = 515;
for iter = 1:50
    % Step 1
    sum1 = zeros(15,15);
    sum2 = zeros(15,1);
    for i = 1:240
        T = FK(q(i),pi)
        %T = Rz(q(i,1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(i,2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(i,3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(i,4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(i,5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(i,6));
        p = T(1:3,4);
        R = T(1:3,1:3);
    
        r1 = [eye(3,3) Skew(p) R zeros(3,3) zeros(3,3)];
        r2 = [eye(3,3) Skew(p) zeros(3,3) R zeros(3,3)];
        r3 = [eye(3,3) Skew(p) zeros(3,3) zeros(3,3) R];
        A = [r1 ; r2 ; r3];
        delta_p = [mA(i)-p;
                   mB(i)-p;
                   mC(i)-p];
        sum1 = sum1 + (A' * A);
        sum2 = sum2 + (A' * delta_p);
    end
    
    est = sum1\sum2;
    p_base = est(1:3);
    r_base= est(4:6);
    u1 = est(7:9);
    u2 = est(10:12);
    u3 = est(13:15);
    
    R_base = Skew(r_base) + eye(3,3);
    T_base = [cat(2,R,p_base);
                     0 0 0 1];
                 
    t_tool1 = [cat(2,eye(3,3),R_base'*u1);
                                 0 0 0 1];
    t_tool2 = [cat(2,eye(3,3),R_base'*u2);
                                 0 0 0 1];
    t_tool3 = [cat(2,eye(3,3),R_base'*u3);
                                 0 0 0 1];
                             
    T_tool = [t_tool1; t_tool2; t_tool3];
    % Step 2
    sum1 = zeros(18,18);
    sum2 = zeros(18,1);
    for i = 1:240
        delta_p = [mA(i)-p;
                   mB(i)-p;
                   mC(i)-p];
        for j = 1:3
            jac = Jn(T_base, T_tool(j), q(i), pi);
            jac_p = jac(1:3,:);
            sum1 = sum1 + jac_p' * jac_p;
            sum2 = sum2 + jac_p' * delta_p((j-1)*3+1:(j-1)*3+4);
        end
    end
    
    pi = sum1\sum2;

end
