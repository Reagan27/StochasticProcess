% Constants and parameters
m = 2; n = 2;
T = 30;
alpha = 0.05;
theta = 0.75;
h_values = [0.1, 0.01, 0.001, 0.0001];
M_values = [100, 1000];
N_values = [1000];
epsilon_min = 2;
epsilon_max = 4;

% Initialize arrays to store results
x_values = cell(length(h_values), length(M_values), length(N_values));
u_values = cell(length(h_values), length(M_values), length(N_values));
cpu_times = zeros(length(h_values), length(M_values), length(N_values));

% Loop over parameters
for h_idx = 1:length(h_values)
    for M_idx = 1:length(M_values)
        for N_idx = 1:length(N_values)
            h = h_values(h_idx);
            M = M_values(M_idx);
            N = N_values(N_idx);
            
            % Solve the system using appropriate algorithms
            % Replace with your solving algorithm
            % [x, u] = solve_system(h, M, N, alpha, theta, T, epsilon_min, epsilon_max);
            % Implement your solving algorithm here and assign x, u
            
            % Placeholder values for demonstration purposes
            x = rand(m, T / h + 1);
            u = rand(n, T / h + 1);
            
            % Store results and CPU time
            x_values{h_idx, M_idx, N_idx} = x;
            u_values{h_idx, M_idx, N_idx} = u;
            cpu_times(h_idx, M_idx, N_idx) = rand(); % Replace with actual CPU time measurement
        end
    end
end

% Display or process the results as needed
disp('Results:')
disp('x_values:')
disp(x_values)
disp('u_values:')
disp(u_values)
disp('cpu_times:')
disp(cpu_times)

% Plot the results (assuming m = 2, n = 2)
for h_idx = 1:length(h_values)
    for M_idx = 1:length(M_values)
        for N_idx = 1:length(N_values)
            h = h_values(h_idx);
            M = M_values(M_idx);
            N = N_values(N_idx);
            
            % Plot x_values
            figure;
            subplot(2, 1, 1);
            plot(0:h:T, x_values{h_idx, M_idx, N_idx});
            xlabel('Time (t)');
            ylabel('x');
            title(['x for h = ', num2str(h), ', M = ', num2str(M), ', N = ', num2str(N)]);
            legend('x1', 'x2');
            
            % Plot u_values
            subplot(2, 1, 2);
            plot(0:h:T, u_values{h_idx, M_idx, N_idx});
            xlabel('Time (t)');
            ylabel('u');
            title(['u for h = ', num2str(h), ', M = ', num2str(M), ', N = ', num2str(N)]);
            legend('u1', 'u2');
        end
    end
end


          