function filtered_signal = low_pass_filter(input_signal, fs)
    N = 50;
    fc = 3000;
    h = fir1(N, fc/(fs/2), 'low', hamming(N+1));
    filtered_signal = filter(h, 1, input_signal);
end
