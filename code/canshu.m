
kesi = 50;
epsilon = 0.1;
Ts = 0.000001;


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



l1 = 0.85;
l2 = 135;


D = [0; 
     1];
beta = 6.65;
xi = 0.8;
P = [xi^3, xi^2; xi^2, 2 * xi];

Gamma1 = (2 + kesi) / 2 + sqrt(4 * kesi + kesi^2) / 2 + epsilon;
Gamma2 = (2 + kesi) / 2 - sqrt(4 * kesi + kesi^2) / 2 + epsilon;
Gamma3 = 1 + ((2 + kesi) / 2 + sqrt(4 * kesi + kesi^2) / 2) * epsilon;
Gamma4 = 1 + ((2 + kesi) / 2 - sqrt(4 * kesi + kesi^2) / 2) * epsilon;

Gamma_bar = 1 / (Ts * sqrt(4 * kesi + kesi^2)) * log((Gamma1 * Gamma4) / (Gamma3 * Gamma2));

%image = (sqrt(4 * kesi + kesi^2) / 2) * ((Gamma3 + Gamma4 * exp(-Gamma_bar * sqrt(4 * kesi + kesi^2) * t)) / (Gamma3 - Gamma4 * exp(-Gamma_bar * sqrt(4 * kesi + kesi^2) * t))) - (2 + kesi) / 2;

%%
Z1 = Gamma_bar  / (l1 * beta^2 * max(eig(Q1 * Omega_ff1))^2);
Z2 = Gamma_bar  / (l2 * beta^2);
Z3 = 2 * Gamma_bar / (1 + beta * max(eig(Q1 * Omega_ff1 + Omega_ff1' * Q1)));

Z5 = P * D * D' * P;

upsilon = max(eig(Z5)) / min(eig(P));

a = min([Z1,Z2,Z3]) - upsilon;

%%
AA = 1 / (l1);
BB = max(eig(Q1 * Omega_ff1))^2 / (l2);
CC = min(eig(Q1 * Omega_ff1 + Omega_ff1' * Q1));

b = beta - (1 + AA + BB) / CC;



%%

c = 0:0.1:10;
c_image = (4 * c + c.^3) ./ (2 + c.^2 - sqrt(4 + c.^4));
plot(c, c_image, '-');
ccc = min(c_image);
