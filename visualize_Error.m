u_pred = PGNN_Output(phi, Ts, typeOfTransform, thetahat, networkSize, n_params)';
err_fit = output' - u_pred;           % 每个时刻的预测残差 u_true - u_pred
t = (0:size(err_fit,1)-1)*Ts;       % 构造时间轴

figure;
plot(t, err_fit, 'LineWidth', 2);
grid on;
xlabel('Time [s]');
ylabel('Prediction error (u - \^u)');
title('PGNN Fitting Error');