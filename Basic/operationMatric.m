
A1 = [1 1 1; 1 1 1]
A2 = [2 2 2; 2 2 2]
A3 = [3 3 3; 3 3 3]

%% combine Matric

x = [A1;A2;A3] % vertical concatenate

y = [A1 A2 A3] % horizontal concatenate

%% for unbalance matric

B1 = [1;1]
B2 = [2 2;2 2]
B3 = [3 3 3;3 3 3]

z = [B1 B2 B3 B2 B1] % only for vertical concatenate

%% Transposition Matric [from horizontal to vertical]
H = [1 2 3;4 5 6]

G = H' % transposition command





