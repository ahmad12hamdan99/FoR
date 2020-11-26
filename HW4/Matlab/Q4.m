clear;clc;
p1 = [1,0,2]; p2= [sqrt(2)/2 , sqrt(2)/2 , 1.2];
v0 = 0 ; 
dt = 0.1; vmax = 1 ; accmax = 10;
n=0;
while (floor(dt*10^n)~=dt*10^n)
    n=n+1;
end
E = 1*10^-n;
ta= vmax/accmax;
if rem(ta,dt)~=0
    ta_new = round(ta,n)+E;
else
    ta_new = round(ta,n);
end
t1f = abs(p2(1)-p1(1))/vmax + ta_new;
t2f = abs(p2(2)-p1(2))/vmax + ta_new;
t3f = abs(p2(3)-p1(3))/vmax + ta_new;
if rem(t1f,dt)~=0
    t1f_new = round(t1f,n)+E;
else
    t1f_new = round(t1f,n);
end
if rem(t2f,dt)~=0
    t2f_new = round(t2f,n)+E;
else
    t2f_new = round(t2f,n);
end
if rem(t3f,dt)~=0
    t3f_new = round(t3f,n)+E;
else
    t3f_new = round(t3f,n);
end
tf=[t1f_new t2f_new t3f_new];
tf_new=max(tf);

v1_new = ((p2(1)-p1(1))/(tf_new-ta_new));
a1_new = v1_new/ta_new;
v2_new = ((p2(2)-p1(2))/(tf_new-ta_new));
a2_new = v2_new/ta_new;
v3_new = ((p2(3)-p1(3))/(tf_new-ta_new));
a3_new = v3_new/ta_new;

%axis -x- coefficients:
% t0 --> ta:
a10 = p1(1);
a11 = v0;
a12 = 0.5*a1_new;


% ta --> tf-ta:
a20 = p1(1) + 0.5*a1_new*ta_new^2 - v1_new*ta_new;
a21 = v1_new;

% tf-ta --> tf:
a30 = p2(1) - 0.5*a1_new*tf_new^2;
a31 = a1_new*tf_new;
a32 = -0.5*a1_new;

% axis -y-  coefficients:
% t0 --> ta:
b10 = p1(2);
b11 = v0;
b12 = 0.5*a2_new;


% ta --> tf-ta:
b20 = p1(2) + 0.5*a2_new*ta_new^2 - v2_new*ta_new;
b21 = v2_new;

% tf-ta --> tf:
b30 = p2(2) - 0.5*a2_new*tf_new^2;
b31 = a2_new*tf_new;
b32 = -0.5*a2_new;

% joint 3 - coefficients:
% t0 --> ta:
c10 = p1(3);
c11 = v0;
c12 = 0.5*a3_new;


% ta --> tf-ta:
c20 = p1(3) + 0.5*a3_new*ta_new^2 - v3_new*ta_new;
c21 = v3_new;

% tf-ta --> tf:
c30 = p2(3) - 0.5*a3_new*tf_new^2;
c31 = a3_new*tf_new;
c32 = -0.5*a3_new;

t = 0:0.01:tf_new;
x = (a10+a11.*t+a12.*t.^2).*(t<=ta_new)...
    +(a20+a21.*t).*(t>ta_new).*(t<=(tf_new-ta_new))...
    +(a30+a31.*t+a32.*t.^2).*(t>(tf_new-ta_new)).*(t<=tf_new);
vx = (a11+2*a12.*t).*(t<=ta_new)...
    +(a21).*(t>ta_new).*(t<=(tf_new-ta_new))...
    +(a31+2*a32.*t).*(t>(tf_new-ta_new)).*(t<=tf_new);
ax = (2*a12).*(t<=ta_new)...
    +(0).*(t>ta_new).*(t<=(tf_new-ta_new))...
    +(2*a32).*(t>(tf_new-ta_new)).*(t<=tf_new);
y = (b10+b11.*t+b12.*t.^2).*(t<=ta_new)...
    +(b20+b21.*t).*(t>ta_new).*(t<=(tf_new-ta_new))...
    +(b30+b31.*t+b32.*t.^2).*(t>(tf_new-ta_new)).*(t<=tf_new);
vy = (b11+2*b12.*t).*(t<=ta_new)...
    +(b21).*(t>ta_new).*(t<=(tf_new-ta_new))...
    +(b31+2*b32.*t).*(t>(tf_new-ta_new)).*(t<=tf_new);
ay = (2*b12).*(t<=ta_new)...
    +(0).*(t>ta_new).*(t<=(tf_new-ta_new))....
    +(2*b32).*(t>(tf_new-ta_new)).*(t<=tf_new);
 z= (c10+c11.*t+c12.*t.^2).*(t<=ta_new)...
    +(c20+c21.*t).*(t>ta_new).*(t<=(tf_new-ta_new))...
    +(c30+c31.*t+c32.*t.^2).*(t>(tf_new-ta_new)).*(t<=tf_new);
vz = (c11+2*c12.*t).*(t<=ta_new)...
    +(c21).*(t>ta_new).*(t<=(tf_new-ta_new))...
    +(c31+2*c32.*t).*(t>(tf_new-ta_new)).*(t<=tf_new);
az = (2*c12).*(t<=ta_new)...
    +(0).*(t>ta_new).*(t<=(tf_new-ta_new))....
    +(2*c32).*(t>(tf_new-ta_new)).*(t<=tf_new);
 subplot(3,3,1)
 plot(t,x,'g-')
 title('x vs time')
 grid on
 subplot(3,3,2)
 plot(t,vx,'b-')
 title('vx vs time')
 grid on
  subplot(3,3,3)
 plot(t,ax,'k-')
 title('ax vs time')
 grid on
  subplot(3,3,4)
 plot(t,y,'g-')
 title('y vs time')
 grid on
 subplot(3,3,5)
 plot(t,vy,'b-')
 title('vy vs time')
 grid on
  subplot(3,3,6)
 plot(t,ay,'k-')
 title('ay vs time')
 grid on
  subplot(3,3,7)
 plot(t,z,'g-')
 title('z vs time')
 grid on
 subplot(3,3,8)
 plot(t,vz,'b-')
 title('vz vs time')
 grid on
  subplot(3,3,9)
 plot(t,az,'k-')
 title('az vs time')
 grid on
 q=zeros(3,length(x));
 dq=zeros(3,length(x));
for i = 1:length(x)
    pnt=[x; y; z];
    q(:,i)=IK(pnt(:,i));
    v = [vx;vy;vz];
    j = Jg(q(:,i)');
    dq(:,i) = inv(j(1:3,:)) * v(:,i);
    T = FK(q(:,i)');
    Actual(:,i) = T(1:3,4);
end

figure
subplot(311)
plot(t, x )
hold on 
plot(t,Actual(1,:),'k--')
grid on
legend('X_{des}','x_{actual}')
subplot(312)
plot(t, y )
hold on 
plot(t,Actual(2,:),'k--')
grid on
legend('y_{des}','y_{actual}')
subplot(313)
plot(t, z )
hold on 
plot(t,Actual(3,:),'k--')
grid on
legend('z_{des}','z_{actual}')
figure
subplot(321)
plot(t, q(1,:))
ylabel('joint 1 position')
grid on
subplot(323)
plot(t, q(2,:))
ylabel('joint 2 position')
grid on
subplot(325)
plot(t, q(3,:))
ylabel('joint 3 position')
grid on
subplot(322)
plot(t, dq(1,:))
ylabel('joint 1 velocity')
grid on
subplot(324)
plot(t, dq(2,:))
ylabel('joint 2 velocity')
grid on
subplot(326)
plot(t, dq(3,:))
ylabel('joint 3 velocity')
grid on