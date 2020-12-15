% Функция формирования заданной скорости
% (Регулятор изображения)
 
function zz=im_conti(uu)
    global K; 

    z = uu(1:3);
    p = uu(4:9); 
    ksc = uu(10:12);
    Zc = uu(13:14);
    ksd = uu(15:17);
    xp = uu(10);
    yp = uu(11);
    xa = uu(12);
    zp = uu(13);
    za = uu(14);

    % Cкоростной сигнал по e(t)
    V = K*(ksc-ksd);

    % Матрица связи
    L = [xp/zp  -1/zp  -1-xp*xp;
         yp/zp    0      -xp*yp;
         xa/za  -1/za  -1-xa*xa];

    zz = inv(L)*V;
end