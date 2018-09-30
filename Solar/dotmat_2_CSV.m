FileData = load('solar_eecu_imputed2017to2018_ds30min_ema.mat');
A = cell2mat(struct2cell(FileData));

%cell
name = A.name;

%struct
timeinfo = A.timeinfo;
EMA = A.EMA;

name_unit = timeinfo.unit;
name_Ts = timeinfo.Ts;

EMA_Ihat = EMA.Ihat;
EMA_beta = EMA.beta;


%already double.
I = A.I;
T = A.T;
UV = A.UV;
WS = A.WS;
RH = A.RH;
P = A.P;

DT_FT = [I T UV WS RH P];

%datetime
time = A.time;


xlswrite('EMA_Ihat.xlsx',EMA_Ihat);
xlswrite('EMA_beta.xlsx',EMA_beta);
xlswrite('DT_FT.xlsx',DT_FT);
xlswrite('time.xlsx',exceltime(time));

%Table = array2table(DT_FT, 'VariableNames', compose('Var%d', 1:size(DT_FT, 2)));

%struct2csv(DT_FT,'Table.csv')
%csvwrite('solar_eecu_imputed2017to2018_ds30min_ema.csv', DT_FT);

%filename = 'testdata.xlsx';
%xlswrite(filename,DT_FT)
%xlswrite('name.xlsx',name);