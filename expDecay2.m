function newX=expDecay2(x,alpha,beta,dt)
newX=x+dt.*( ...
    alpha.*(1-x)-beta.*x...
    );