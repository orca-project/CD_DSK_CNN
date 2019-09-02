function [Acc,Fa] = TestResults(GT_filename,Output_filename)

FID = fopen(GT_filename);
GT  = fread(FID,'double');
fclose(FID);


FID = fopen(Output_filename);
Prediction  = fread(FID,'uint8');
fclose(FID);


% remove fake garbage test vector
logical_idx = (GT==-1);
GT(logical_idx)=[];
Prediction(logical_idx)=[];


Temp = find(Prediction == GT);
Acc = 100 * size(Temp,1)/size(GT,1);

%% Estimate False Alarm: when prediction is CD (1) but the signal is clean (0)
Fa = 0;
for i = 1:length(GT)
    if (GT(i)==0 )&&(Prediction(i)==1)
        Fa = Fa + 1;
    end
end
Fa = 100 * Fa /size(GT,1)
end

