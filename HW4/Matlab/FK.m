function T =FK(q)
L1 = 1 ; L2 = 1 ; L3=1;


T = Rz(q(1))*Tz(L1)*Ry(q(2))*Tx(L2)*Ry(q(3))*Tx(L3);

end