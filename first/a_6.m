% 定义矩阵 A 和 B
A = [4 2 m-2; -3 0 5; 1 5 2*m];
B = [3 4 0; 2 0 -3; -2 1 1];

% 计算 A 的行列式
det_A = det(A);

% 计算 A 的逆矩阵
inv_A = inv(A);

% 计算 A 的特征值和特征向量
[eig_vec_A, eig_val_A] = eig(A);

% 计算 AB^{-1}
AB_inv = A * inv(B);

% 计算 A^{-1}B
inv_A_B = inv(A) * B;

% 构建分块矩阵 [A B]
% block_matrix = ;

% 计算分块矩阵的行最简形
rref_block_matrix = rref([A B]);

% 显示结果
disp('行列式 of A:');
disp(det_A);
disp('逆矩阵 of A:');
disp(inv_A);
disp('特征值 of A:');
disp(eig_val_A);
disp('特征向量 of A:');
disp(eig_vec_A);
disp('AB^{-1}:');
disp(AB_inv);
disp('A^{-1}B:');
disp(inv_A_B);
disp('分块矩阵 [A B] 的行最简形:');
disp(rref_block_matrix);