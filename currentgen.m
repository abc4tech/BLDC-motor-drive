function f = currentgen(Iastar, pos)

ref = Iastar;
angle = abs(rem(radtodeg(pos),360));

if (angle>=0 && angle<=60)
    ftemp = [ref;-ref;0];
    act = [1;-1;0];
elseif(angle>60 && angle<=120)
    ftemp = [ref;0;-ref];
    act = [1;0;-1];
elseif(angle>120 && angle<=180)
    ftemp = [0;ref;-ref];
    act = [0;1;-1];
elseif(angle>180 && angle<=240)
    ftemp = [-ref;ref;0];
    act = [-1;1;0];
elseif(angle>240 && angle<=300)
    ftemp = [-ref;0;ref];
    act = [-1;0;1];
elseif(angle>300 && angle<360)
    ftemp = [0;-ref;ref];
    act = [0;-1;1];
end
f=[ftemp;act];

end


