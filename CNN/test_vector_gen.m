function test_vector_gen(mat_filename, num_slot, slot_len)
disp('Input:');
disp(mat_filename);

disp('Output:');
result_filename_I = [mat_filename(1:end-4), '_' num2str(num_slot) 'slot_len' num2str(slot_len) '_I.bin'];
disp(result_filename_I);
result_filename_Q = [mat_filename(1:end-4), '_' num2str(num_slot) 'slot_len' num2str(slot_len) '_Q.bin'];
disp(result_filename_Q);
result_filename_busy_flag = [mat_filename(1:end-4), '_' num2str(num_slot) 'slot_len' num2str(slot_len) '_answer.txt'];
disp(result_filename_busy_flag);
result_filename_busy_flag_bin = [mat_filename(1:end-4), '_' num2str(num_slot) 'slot_len' num2str(slot_len) '_answer.bin'];
disp(result_filename_busy_flag_bin);

tmp = load(mat_filename);
s_pure = [tmp.cleanSignal;tmp.falsealarmSignal].';
s_mixed = tmp.detectionSignal.';

num_row = size(s_pure,1);
num_col_pure = size(s_pure,2);
num_col_mixed = size(s_mixed,2);

s_total = {s_pure, s_mixed};

s_test_vector = zeros(slot_len, num_slot);

busy_flag = zeros(1,num_slot);

for i=1:num_slot
    busy_flag(i) = randi(2)-1;
    row_sp = randi(num_row-slot_len+1);
    
    col_idx = randi(num_col_pure)*(1-busy_flag(i)) + randi(num_col_mixed)*busy_flag(i);

    set_idx = busy_flag(i)+1;
    s_test_vector(:,i) = s_total{set_idx}(row_sp:(row_sp+slot_len-1),col_idx);
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

fileID = fopen(result_filename_busy_flag_bin,'w');
fwrite(fileID,busy_flag,'double');
fclose(fileID);
%busy_flag
disp(['Correct answer is in ' result_filename_busy_flag '. 1 means busy/collision; 0 means clear/idle.']);

