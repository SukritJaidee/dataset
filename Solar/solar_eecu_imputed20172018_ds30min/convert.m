FileData = load('solar_eecu_imputed20172018_ds30min.mat');
A = cell2mat(struct2cell(FileData));

%cell
name = A.name;

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

xlswrite('DT_FT.xlsx',DT_FT);
xlswrite('time.xlsx',exceltime(time));