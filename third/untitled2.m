% 参数设置
N = 1000; % 种群大小
p = 0.6; % 初始基因频率 p
q = 1 - p; % 初始基因频率 q
generations = 100; % 模拟的世代数

% 初始化基因型频率
AA = N * p^2;
Aa = N * 2 * p * q;
aa = N * q^2;

% 存储每一代的基因型频率和基因频率
genotype_frequencies = zeros(generations, 3);
gene_frequencies = zeros(generations, 2);

for gen = 1:generations
    % 计算当前基因频率
    p_current = (2 * AA + Aa) / (2 * N);
    q_current = 1 - p_current;
    
    % 存储当前基因型频率和基因频率
    genotype_frequencies(gen, :) = [AA, Aa, aa] / N;
    gene_frequencies(gen, :) = [p_current, q_current];
    
    % 随机交配生成下一代
    % 生成配子
    gametes_A = AA * 1 + Aa * 0.5;
    gametes_a = aa * 1 + Aa * 0.5;
    
    % 下一代基因型频率
    AA = gametes_A * gametes_A / N;
    Aa = 2 * gametes_A * gametes_a / N;
    aa = gametes_a * gametes_a / N;
end

% 绘制结果
figure;
subplot(2,1,1);
plot(1:generations, genotype_frequencies);
legend('AA', 'Aa', 'aa');
xlabel('繁育代数');
% ylabel('Genotype Frequency');
title('基因型频率');
% 
subplot(2,1,2);
plot(1:generations, gene_frequencies);
legend('p', 'q');
xlabel('繁育代数');
% ylabel('Gene Frequency');
title('基因频率');