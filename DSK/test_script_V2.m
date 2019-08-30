
clc
clear 

delete log.txt
diary('log.txt');

Results = [];
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_40dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_45dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_50dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_55dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_60dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_65dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_70dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_75dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_80dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

% [ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_85dbm.mat',10240,160);
% coherent_classifier(160, ifile,qfile, 40);
% [Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]
% 
% [ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_90dbm.mat',10240,160);
% coherent_classifier(160, ifile,qfile, 40);
% [Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

Results = [Results;[-1,-1]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 40], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 45], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 50], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 55], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 60], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 65], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 70], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 75], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 80], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

% [ifile,qfile,answer_bin] = test_vector_gen_matlab([40 85], 10240, 160);
% coherent_classifier(160, ifile,qfile, 40);
% [Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]
% 
% [ifile,qfile,answer_bin] = test_vector_gen_matlab([40 90], 10240, 160);
% coherent_classifier(160, ifile,qfile, 40);
% [Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]


Results = [Results;[-1,-1]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_60dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_65dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_70dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_75dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_80dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_85dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

% [ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_90dbm.mat',10240,160);
% coherent_classifier(160, ifile,qfile, 60);
% [Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]


Results = [Results;[-1,-1]];


[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 60], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 65], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 70], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 75], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 80], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 85], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
[Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

% [ifile,qfile,answer_bin] = test_vector_gen_matlab([60 90], 10240, 160);
% coherent_classifier(160, ifile,qfile, 60);
% [Acc,FA]=TestResults(answer_bin,'OutPut.bin');Results = [Results;[Acc,FA]]

diary off;

ResultsToWrite = floor(Results*1e4)/1e4;
T = table(ResultsToWrite(:,1),ResultsToWrite(:,2))

filename = 'TempEX.xlsx';
writetable(T,filename,'Sheet',1,'Range','D1')


