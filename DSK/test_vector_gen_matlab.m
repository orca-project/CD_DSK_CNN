function [result_filename_I,result_filename_Q,result_filename_busy_flag_bin] = test_vector_gen_matlab(mat_filename, num_slot, slot_len, varargin)
% mat_filename: KUL captured file. Or [40 50], [40 80], [60 90] like array
% to generate data by Matlab
% num_slot: how many tests will be done.
% slot_len: 160, 320, 640, etc.

disp('Input:');
disp(mat_filename);

disp('Output:');
if (mat_filename(1)~=40 && mat_filename(1)~=60)
    disp('The 1st element of 1st argument has to be 40 or 60!');
    return;
end
signature_str = [num2str(mat_filename(1)) '_' num2str(mat_filename(2))];
result_filename_I = ['I_' signature_str, '_' num2str(num_slot) 'slot_len' num2str(slot_len) '.bin'];
disp(result_filename_I);
result_filename_Q = ['Q_' signature_str, '_' num2str(num_slot) 'slot_len' num2str(slot_len) '.bin'];
disp(result_filename_Q);
result_filename_busy_flag = ['Answer_' signature_str, '_' num2str(num_slot) 'slot_len' num2str(slot_len) '.txt'];
disp(result_filename_busy_flag);
result_filename_busy_flag_bin = ['Answer_' signature_str, '_' num2str(num_slot) 'slot_len' num2str(slot_len) '.bin'];
disp(result_filename_busy_flag_bin);

% if (exist(result_filename_I,'file')==2 && exist(result_filename_Q,'file')==2 && exist(result_filename_busy_flag,'file')==2 && exist(result_filename_busy_flag_bin,'file')==2 )
%     disp('Test vector files exist.');
%     return;
% end

s_test_vector = zeros(slot_len, num_slot);
% busy_flag = randi(3,1,num_slot)-2;
busy_flag = randi(2,1,num_slot)-1;

self_dbm = mat_filename(1);
interfere_dbm = mat_filename(2);
sir = interfere_dbm-self_dbm;
rcos_fir = rcosdesign(1,8,64,'normal');
discard_len = (length(rcos_fir)-1)/2;
signal = sign(randn(1e6,1)) + sign(randn(1e6,1))*1i;
signal = conv(upsample(signal,64),rcos_fir);
signal = signal(discard_len+1 : end-discard_len);

if ~isempty(varargin)
    normalized_fo = varargin{1};
    fo_seq = exp(1i.*2.*pi.*(0:(1/64):(1e6-(1/64))).'.*normalized_fo);
    signal = signal.*fo_seq;
end

if self_dbm==40
    snr = 37.4;
    scale = 4.707792410728323e+03;
elseif self_dbm==60
    snr = 20.6;
    scale = 4.433659749635197e+05;
end
signal = signal/sqrt(scale);

interfere = sign(randn(1e6,1)) + sign(randn(1e6,1))*1i;
interfere = conv(upsample(interfere,64),rcos_fir);
interfere = interfere/sqrt(scale*(10^(sir/10)));
interfere = interfere(discard_len+1 : end-discard_len);

noise = randn(1e6,1) + randn(1e6,1)*1i;
noise = conv(upsample(noise,64),rcos_fir);
noise = noise/sqrt(scale*(10^(snr/10)));
noise = noise(discard_len+1 : end-discard_len);

slot_len_new = slot_len*16;
for i=1:num_slot
    sp = randi(1e6*64-slot_len_new+1);
    signal_slot = signal(sp:16:(sp+slot_len_new-1));
    sp = randi(1e6*64-slot_len_new+1);
    noise_slot = noise(sp:16:(sp+slot_len_new-1));
    sp = randi(1e6*64-slot_len_new+1);
    s_test_vector(:,i) = signal_slot + noise_slot + interfere(sp:16:(sp+slot_len_new-1))*busy_flag(i);
end

fileID = fopen(result_filename_I,'w');
fwrite(fileID,real(s_test_vector(:)),'double');
fclose(fileID);

fileID = fopen(result_filename_Q,'w');
fwrite(fileID,imag(s_test_vector(:)),'double');
fclose(fileID);

disp(' ');
disp(['Write ' num2str(length(s_test_vector(:))) ' samples. Should be ' num2str(slot_len*num_slot*8) ' bytes for each I and Q file.']);
fileID = fopen(result_filename_busy_flag,'w');
for i=1:num_slot
    fprintf(fileID, '%d\n', busy_flag(i));
end
fclose(fileID);
disp(['Correct answer is in ' result_filename_busy_flag '. 1 means busy/collision; 0 means clear/idle.']);

fileID = fopen(result_filename_busy_flag_bin,'w');
fwrite(fileID,busy_flag,'double');
fclose(fileID);
%busy_flag
disp(['Correct answer is in ' result_filename_busy_flag_bin '(binary, double precision). 1 means busy/collision; 0 means clear/idle.']);

