delete log.txt
diary('log.txt');

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_40dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_50dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_60dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_70dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_75dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_80dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_85dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_90dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');

[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 40], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 50], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 60], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 70], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 75], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 80], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 85], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([40 90], 10240, 160);
coherent_classifier(160, ifile,qfile, 40);
TestResults(answer_bin,'OutPut.bin');

[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_60dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_70dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_80dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_85dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_60dbm_90dbm.mat',10240,160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');

[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 60], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 70], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 80], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 85], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');
[ifile,qfile,answer_bin] = test_vector_gen_matlab([60 90], 10240, 160);
coherent_classifier(160, ifile,qfile, 60);
TestResults(answer_bin,'OutPut.bin');

diary off;