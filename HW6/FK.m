function T = FK(q,pi)
l2 = 25;
l6 = 90;
l5 = 515;
display(pi(4))
T = Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*Tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6));
end