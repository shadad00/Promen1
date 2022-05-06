function [erroresHeun erroresRk4]=punto12Promen(f,a,b,ya,expi,expf,sol)
    erroresHeun = zeros(expf-expi, 4);
    erroresRk4 = zeros(expf-expi, 4);
    i = 1;

    for k=expi:expf
        h = (b-a)/(2^k);

        erroresHeun(i,1) = h;
        erroresRk4(i,1) = h;

        [TPH FPH] = heun(f,a,b,ya,2^k);
        errorHeun = abs(FPH(end)-feval(sol,b));
        erroresHeun(i,2) = errorHeun/h;
        erroresHeun(i,3) = errorHeun/(h^2);
        erroresHeun(i,4) = errorHeun/(h^3);

        [TRK FRK] = rk4(f,a,b,ya,2^k);
        errorRk4 = abs(FRK(end)-feval(sol,b));
        erroresRk4(i,2) = errorRk4/(h^3);
        erroresRk4(i,3) = errorRk4/(h^4);
        erroresRk4(i,4) = errorRk4/(h^5);

        i = i+1;
    end
end