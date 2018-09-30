FileData = load('solar_eecu_ema_beta09.mat');
A = cell2mat(struct2cell(FileData));

I = A.I;
time = A.time;

xlswrite('time.xlsx',exceltime(time));
xlswrite('I.xlsx',I);