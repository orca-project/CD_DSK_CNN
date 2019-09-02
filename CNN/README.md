# CNN based method

----------------------
Data: 01.09.2019
Verified on:

* Python 2.7.15+
* Tensorflow 1.14.0 
* Ubuntu 18.04.3 (64bit)
----------------------

To generate a test vector from the USRP-captured data, use test_vector_gen function in Matlab. 
The number of vectors MUST be a factor of 1024.
* Example:

test_vector_gen('2dbm_40dbm_75dbm.mat', 1024*2, 160);
			
Similarly, one may generate the test vector by Matlab (simulated data based) using test_vector_gen_matlab.m function.

---------------------

Find the executabl file in TestModelCM.ZIP. 
To execute the CNN model, run the following command in a terminal:

$ ./TestModelCM 160 Filename_I FileName_Q SIC_Level

* Example:

	$ ./TestModelCM 160 2dbm_40dbm_75dbm_2048slot_len160_I.bin 2dbm_40dbm_75dbm_2048slot_len160_Q.bin 40
		
* Example:

	$ ./TestModelCM 160 2dbm_60dbm_75dbm_2048slot_len160_I.bin 2dbm_60dbm_75dbm_2048slot_len160_Q.bin 60

The script saves the prediction in OutPut.bin file. 

-------------------

You can TestResults function in Matlab to estimate the accuracy.

* Example:

	[Acc, Fa ] = TestResults('2dbm_40dbm_75dbm_2048slot_len160_answer.bin','OutPut.bin')
			
-------------------

The CNN model can calculate the performance directly:

$ ./TestModelCM 160 Filename_I FileName_Q SIC_Level FileName_answer

* Example:

	$ ./TestModelCM 160 2dbm_40dbm_75dbm_2048slot_len160_I.bin 2dbm_40dbm_75dbm_2048slot_len160_Q.bin 40 2dbm_40dbm_75dbm_2048slot_len160_answer.bin



