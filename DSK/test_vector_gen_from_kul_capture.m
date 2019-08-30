% Author: Xianjun Jiao, imec, Belgium, xianjun.jiao@imec.be

function [result_filename_I,result_filename_Q,result_filename_busy_flag_bin] = test_vector_gen_from_kul_capture(mat_filename, num_slot, slot_len)
% mat_filename: KUL captured file

% num_slot: how many tests will be done. 
% Garbage vector is mixed, but won't be counted when call TestResults. 
% Garbage test vector to make sure we have independent test from slot to
% slot.

% slot_len: 160, 320, 640, etc.

disp('Input:');
disp(mat_filename);
disp(' ');
disp('Output:');
signature_str = mat_filename(1:end-4);
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

tmp = load(mat_filename);
s_pure = [tmp.cleanSignal;tmp.falsealarmSignal].';
s_mixed = tmp.detectionSignal.';

num_row = size(s_pure,1);
num_col_pure = size(s_pure,2);
num_col_mixed = size(s_mixed,2);

s_total = {s_pure, s_mixed};

busy_flag = randi(2,1,num_slot)-1;
% busy_flag(2:2:end) = -1; % garbage test vector to make sure we have independent test from slot to slot
% for i=1:2:num_slot
for i=1:1:num_slot
    row_sp = randi(num_row-slot_len+1);
    col_idx = randi(num_col_pure)*(1-busy_flag(i)) + randi(num_col_mixed)*busy_flag(i);
    set_idx = busy_flag(i)+1;
    s_test_vector(:,i) = s_total{set_idx}(row_sp:(row_sp+slot_len-1),col_idx);
end
% [~,permute_idx] = sort(randi(5*slot_len,1,slot_len));
% for i=2:2:num_slot
%     tmp_flag = randi(3)-1;
%     logical_flag = (tmp_flag==2);
%     s_test_vector(:,i) = ones(slot_len,1)*7.9e13*tmp_flag*(~logical_flag) + s_test_vector(permute_idx,i-1)*logical_flag;
% end

[~,permute_idx] = sort(randi(5*num_slot,1,num_slot));
busy_flag = busy_flag(permute_idx);
s_test_vector = s_test_vector(:,permute_idx);

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
disp(['Correct answer is in ' result_filename_busy_flag_bin '(binary, double precision). 1 means busy/collision; 0 means clear/idle.']);

