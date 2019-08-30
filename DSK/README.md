# Domain Specific Knowledge based method

Your Matlab version should >= R2017b!

Test with USRP captured data set (Remember to download files firstly) in Matlab:

    [ifile,qfile,answer_bin] = test_vector_gen_from_kul_capture('2dbm_40dbm_70dbm.mat',10240,160);

    10240 slots, 160samples/slot

    coherent_classifier(160, ifile,qfile, 40); % 40 means self interfere is 40dBm series

    TestResults(answer_bin,'OutPut.bin');

Test with Matlab generated data set in Matlab:

    [ifile,qfile,answer_bin] = test_vector_gen_matlab([40 70], 10240, 160); % simulation data genneration of 2dbm_40dbm_70dbm.mat

    10240 slots, 160samples/slot

    coherent_classifier(160, ifile,qfile, 40); % 40 means self interfere is 40dBm series

    TestResults(answer_bin,'OutPut.bin');

Run all tests in Matlab, please check:

    test_script.m
    or
    test_script_V2.m

