A = [9, 5; 2, 6];
t = [];

for i = 1:20
    x = 2 * rand(2, 1) - 1;
    for j = 1:40
        x = A * x;
        if x(1) ~= 0
            t = [t; x(2) / x(1)];
        end
    end
end

% 判断是否有极限
limit_value = t; % 取最后20个值求平均作为极限值
disp('极限值为: ');
disp(limit_value);



% A=[9,5;2,6];
% t=[];
% for i=1:20
%     x=2*rand(2,1)-1;
%     t(length(t)+1,1:2)=x;
%     for j=1:40
%         x=A*x;
%         t(length(t)+1,1:2)=x;
%     end
% end
% plot(t(:,1),t(:,2),'*');
% grid on;


