function [dV]=Vstep(V,h,m,mAR,mKM,mCaH,J,...
    VRest,VNaF,VKDR,VAR,VKM,VCaH,...
    gLeak,gNaF,gKDR,gAR,gKM,gCaH,...
    C,exc,dt)

m0=m0Calc(V,exc);
dV=dt./C.*( ...
    -J...
    -gLeak.*(V-VRest) ...
    -gNaF.*m0.^3.*h.*(V-VNaF) ...
    -gKDR.*m.^4.*(V-VKDR) ...
    -gAR.*mAR.*(V-VAR) ...
    -gKM.*mKM.*(V-VKM) ...
    -gCaH.*mCaH.^2.*(V-VCaH) ...
    );