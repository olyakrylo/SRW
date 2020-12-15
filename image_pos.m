% ������� ���������� ������ ������
% ��� ��������� ����������� � ������� �����
 
function zz=image_pos(uu)
zz=zeros(5,1);
fc=0.05; % �������� ���������� ������
% ���� �� ���������� fc

% ������� ����������
xp = uu(1); yp = uu(2); xa= uu(3); 
Zp = uu(4); Za = uu(5);
u  = uu(6);  v = uu(7);  r = uu(8); 
d1 = uu(9); d2 = uu(10); d3 = uu(11);

% ������ �����
zz(1) = (xp*u-v-(1+xp*xp)*r*Zp)/Zp+d1;
zz(2) = (yp*u-xp*yp*r*Zp)/Zp+d2;
zz(3) = (xa*u-v-(1+xa*xa)*r*Za)/Za+d3;
zz(4) = -u+r*xp*Zp;
zz(5) = -u+r*xa*Za;

% 1 - dxp/dt  2 - dyp/dt  3 - dxa/dt  
% 4 - dZp/dt  5 - dZa/dt