% ������� Northern Clipper
% ������� ���������� ������ ������
 
function z=ripa_posi(u)
global m11 m22 m33 d11 d22 d33 d23 d32;

% General parameters
z=zeros(6,1);

% ������� ����������
Vx  = u(1); Vy = u(2); Wz = u(3); phi = u(6);
Px  = u(7); Py = u(8); Qz = u(9);
Fx = u(10); Fy = u(11); Mz = u(12);

% �������������
cf=cos(phi); sf=sin(phi);

% ������ �����
z(1)= -d11*Vx+m11*Px+m11*cf*Fx+m11*sf*Fy;
z(2)= -d22*Vy-d23*Wz+m22*Py-m22*sf*Fx+m22*cf*Fy;
z(3)= -d32*Vy-d33*Wz+m33*Qz+m33*Mz;
z(4)= Vx*cf-Vy*sf;
z(5)= Vx*sf+Vy*cf;
z(6)= Wz;

% 1 - dVx/dt  2 - dVy/dt  3 - dWz/dt
% 4 - dx/dt   5 - dy/dt   6 - dphi/dt