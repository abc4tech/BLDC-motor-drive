function f = currentgen(Iastar, pos)
% ka=1;
% sq3=1.732050808;
% ir=Iastar;
% sq=0.866025;
% per=fix(pos/2/pi)*360;
% %Sector selection from 0 degrees (0-60;60-120...);
% 
% if (sin(pos)<sq3/2)&(cos(pos)>0.5)&(sin(pos)>=0),  iar=ir;ibr=-ir;icr=0;fa=1;fb=-1;fc=0;end;
% if (sin(pos)>sq3/2)&(abs(cos(pos))<0.5),	   iar=ir;ibr=0;icr=-ir;fa=1;fb=0;fc=-1;end;
% if (sin(pos)<sq3/2)&(cos(pos)<-0.5)&(sin(pos)>=0), iar=0;ibr=ir;icr=-ir;fa=0;fb=1;fc=-1;end;
% if (sin(pos)>-sq3/2)&(cos(pos)<-0.5)&(sin(pos)<0), iar=-ir;ibr=ir;icr=0;fa=-1;fb=1;fc=0;end;
% if (sin(pos)<-sq3/2)&(abs(cos(pos))<=0.5),	   iar=-ir;ibr=0;icr=ir;fa=-1;fb=0;fc=1;end;
% if (sin(pos)>-sq3/2)&(cos(pos)>0.5)&(sin(pos)<0),  iar=0;ibr=-ir;icr=ir;fa=0;fb=-1;fc=1;end;
% ean=ka*fa;
% ebn=ka*fb;
% ecn=ka*fc;
% 
% f=[iar;ibr;icr;ean;ebn;ecn];


ref = Iastar;
anglecase = fix(rem(radtodeg(pos),360)/60);
ka=1;

switch anglecase
    case 0        
        ftemp = [ref;-ref;0];
        act(ftemp(:)>0) = 1;
        act(ftemp(:)<0) = -1;
        act(ftemp(:)==0) = 0;
            
    case 1
        ftemp = [ref;0;-ref];
        act(ftemp(:)>0) = 1;
        act(ftemp(:)<0) = -1;
        act(ftemp(:)==0) = 0;
        
    case 2
        ftemp = [0;ref;-ref];
        act(ftemp(:)>0) = 1;
        act(ftemp(:)<0) = -1;
        act(ftemp(:)==0) = 0;

    case 3
        ftemp = [-ref;ref;0];
        act(ftemp(:)>0) = 1;
        act(ftemp(:)<0) = -1;
        act(ftemp(:)==0) = 0;

    case 4
        ftemp = [-ref;0;ref];
        act(ftemp(:)>0) = 1;
        act(ftemp(:)<0) = -1;
        act(ftemp(:)==0) = 0;

    case 5
        ftemp = [0;-ref;ref];
        act(ftemp(:)>0) = 1;
        act(ftemp(:)<0) = -1;
        act(ftemp(:)==0) = 0;
 
end
f=[ftemp;ka*act'];


end


