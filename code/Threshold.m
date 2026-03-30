function threshold = Threshold()
%%
kesi = 50;
epsilon = 0.1;
Ts = 0.001;


rem = 4;

W1 = [0         0         0         0         0         0         0         0         0;
         0         0         0         0         0         0         0         0         0;
         0         0         0         0         0         0         0         0         0;
    1.0000   -1.5000   -0.5000         0         0         0         0         0         0;
    1.0000   -0.5000   -1.5000         0         0         0         0         0         0;
   -0.5000         0    0.5000    1.0000         0         0         0         0         0;
         0   -1.0000         0         0    3.0000    3.0000         0         0         0;
         0         0         0    1.0000         0   -2.5000    1.0000         0         0;
         0         0         0         0   -0.4000   -0.4000    1.0000         0         0];

 Omega1 = -W1;
    N = size(W1);
    for i=1:N
        for j = 1:N
            Omega1(i,i) = Omega1(i,i) + W1(i,j);
        end
    end 
    N = size(Omega1);
    Omega_ff1 = Omega1(4:N,4:N);


W2 =  [0         0         0         0         0         0         0         0         0;
         0         0         0         0         0         0         0         0         0;
         0         0         0         0         0         0         0         0         0;
         0         0         0         0         0         0         0         0         0;
    1.0000   -0.5000   -1.5000         0         0         0         0         0         0;
    1.0000   -1.5000   -0.5000         0         0         0         0         0         0;
   -0.5000         0    0.5000         0         0    1.0000         0         0         0;
         0   -1.0000         0         0    3.0000         0    3.0000         0         0;
         0         0         0         0   -0.4000         0   -0.4000    1.0000         0];

Omega2 = -W2;
    N = size(W2);
    for i=1:N
        for j = 1:N
            Omega2(i,i) = Omega2(i,i) + W2(i,j);
        end
    end 
    Omega2(rem,:) = [];
    Omega2(:,rem) = [];
    N = size(Omega2);
    Omega_ff2 = Omega2(4:N,4:N);

Q1 = [  -5.0592         0         0         0         0         0;
         0   -3.4910         0         0         0         0;
         0         0    9.0170         0         0         0;
         0         0         0    2.5236         0         0;
         0         0         0         0   -0.9936         0;
         0         0         0         0         0    2.3564];

Q2 =    [-5.6837         0         0         0         0;
         0   -5.0368         0         0         0;
         0         0    5.4776         0         0;
         0         0         0    3.3071         0;
         0         0         0         0    4.5213];



l1 = 1;
l2 = 145;

beta = 6.5;

Gamma1 = (2 + kesi) / 2 + sqrt(4 * kesi + kesi^2) / 2 + epsilon;
Gamma2 = (2 + kesi) / 2 - sqrt(4 * kesi + kesi^2) / 2 + epsilon;
Gamma3 = 1 + ((2 + kesi) / 2 + sqrt(4 * kesi + kesi^2) / 2) * epsilon;
Gamma4 = 1 + ((2 + kesi) / 2 - sqrt(4 * kesi + kesi^2) / 2) * epsilon;

Gamma_bar = 1 / (Ts * sqrt(4 * kesi + kesi^2)) * log((Gamma1 * Gamma4) / (Gamma3 * Gamma2));

%%
AA = 1 / (l1);
BB = max(eig(Q1 * Omega_ff1))^2 / (l2);
CC = min(eig(Q1 * Omega_ff1 + Omega_ff1' * Q1));

b = beta - (1 + AA + BB) / CC;

%%
Z1 = Gamma_bar  / (l1 * beta^2 * max(eig(Q1 * Omega_ff1))^2);
Z2 = Gamma_bar  / (l2 * beta^2);
Z3 = 2 * Gamma_bar / (1 + beta * max(eig(Q1 * Omega_ff1 + Omega_ff1' * Q1)));

threshold = min([Z1,Z2,Z3]);

disp(b);
disp(Z1);
disp(Z2);
disp(Z3);

end