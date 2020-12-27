function J=Jn(T_b, T_t, q, pi)
%Numerical derivatives 
disp('Numerical Method')
T=FK(q,pi);
R=T(1:3,1:3);

l2 = 25;
l6 = 90;
l5 = 515;

j1=Rz(q(1))*Txd(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];

J1=[j1(1,4);j1(2,4);j1(3,4);j1(3,2);j1(1,3);j1(2,1)];

j2=Rz(q(1))*Tx(l2+pi(1))*Tyd(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];

J2=[j2(1,4);j2(2,4);j2(3,4);j2(3,2);j2(1,3);j2(2,1)];

j3=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rxd(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];

J3=[j3(1,4);j3(2,4);j3(3,4);j3(3,2);j3(1,3);j3(2,1)];

j4=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ryd(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];

J4=[j4(1,4);j4(2,4);j4(3,4);j4(3,2);j4(1,3);j4(2,1)];

j5=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Txd(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];

J5=[j5(1,4);j5(2,4);j5(3,4);j5(3,2);j5(1,3);j5(2,1)];

j6=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rxd(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];

J6=[j6(1,4);j6(2,4);j6(3,4);j6(3,2);j6(1,3);j6(2,1)];

j7=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rzd(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J7=[j7(1,4);j7(2,4);j7(3,4);j7(3,2);j7(1,3);j7(2,1)];

j8=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ryd(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J8=[j8(1,4);j8(2,4);j8(3,4);j8(3,2);j8(1,3);j8(2,1)];

j9=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*txd(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J9=[j9(1,4);j9(2,4);j9(3,4);j9(3,2);j9(1,3);j9(2,1)];

j10=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tzd(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J10=[j10(1,4);j10(2,4);j10(3,4);j10(3,2);j10(1,3);j10(2,1)];

j11=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rzd(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J11=[j11(1,4);j11(2,4);j11(3,4);j11(3,2);j11(1,3);j11(2,1)];

j12=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rxd(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J12=[j12(1,4);j12(2,4);j12(3,4);j12(3,2);j12(1,3);j12(2,1)];

j13=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Tyd(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J13=[j13(1,4);j13(2,4);j13(3,4);j13(3,2);j13(1,3);j13(2,1)];

j14=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tzd(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J14=[j14(1,4);j14(2,4);j14(3,4);j14(3,2);j14(1,3);j14(2,1)];

j15=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rzd(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J15=[j15(1,4);j15(2,4);j15(3,4);j15(3,2);j15(1,3);j15(2,1)];

j16=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ryd(q(5)+pi(16))*Tz(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J16=[j16(1,4);j16(2,4);j16(3,4);j16(3,2);j16(1,3);j16(2,1)];

j17=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tzd(pi(17))*Rz(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J17=[j17(1,4);j17(2,4);j17(3,4);j17(3,2);j17(1,3);j17(2,1)];

j18=Rz(q(1))*Tx(l2+pi(1))*Ty(pi(2))*Rx(pi(3))*Ry(q(2)+pi(4))*Tx(pi(5))*Rx(pi(6))*Rz(pi(7))*Ry(q(3)+pi(8))*tx(l6+pi(9))*Tz(l5+pi(10))*Rz(pi(11))*Rx(q(4)+pi(12))*Ty(pi(13))*Tz(pi(14))*Rz(pi(15))*Ry(q(5)+pi(16))*Tz(pi(17))*Rzd(pi(18))*Rx(q(6))*[inv(R) zeros(3,1); 0 0 0 1];
J18=[j18(1,4);j18(2,4);j18(3,4);j18(3,2);j18(1,3);j18(2,1)];





J=[J1 J2 J3 J4 J5 J6 J7 J8 J9 J10 J11 J12 J13 J14 J15 J16 J17 J18];
end