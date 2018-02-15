%doti mērijumu dati
%kurus mēs noformesim kā vektorus
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7];
%%Pamēģinasim uzzimet grafiku
plot(Um,Im 'o-')
 plot(Um,Im 'o-')
            ↑
{Error: Unexpected MATLAB expression.
} 
plot(Um,Im ' o - ')
 plot(Um,Im ' o - ')
            ↑
{Error: Unexpected MATLAB expression.
} 
plot(Um,Im 'o-')
 plot(Um,Im 'o-')
            ↑
{Error: Unexpected MATLAB expression.
} 
plot(Um,Im ('o-')
 plot(Um,Im ('o-')
                  ↑
{Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
} 
plot(Um,Im ('o-'))
{Index exceeds matrix dimensions.
} 
plot(Um,Im,'o-')
%iznāca lauzta līnija, tas mums neder
%tapēc mēģināsim uzminēt
%kāda matematiska sakarība apraksta
%apraksta Im atkarību no Um
55

ans =

    55

%%
%peiņemsim ka sakarību apraskta
%2.kārtas polinoms
% y = C(1)*x.^2+C(2)*x+C(3)
%Polinoma koeficentus atradīs
%Matlab funkcija POLYFIT
%sintakse ir šāda:
% C = polyfit(x,y,N)
%kur N - ir polinoma kārta
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

%lai iegūtu gludu līniju
%noformēšu vēl vienu "x"
U = -1:0.01:3.2;
%tad rēķināšu "y"
I = C(1)*U.^2+C(2)*U+C(3);
%zīmesim grafiku
%mērijuma dati būs ar "o"
%pielaikotais polinoms ar līniju
plot(Um,Im,'o',U,I)
%%
%lai iegūtu labākus rezultātus paņemsim
%3.kārtas polinmu
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

U = -1:0.01:3.2

U =

  Columns 1 through 5

   -1.0000   -0.9900   -0.9800   -0.9700   -0.9600

  Columns 6 through 10

   -0.9500   -0.9400   -0.9300   -0.9200   -0.9100

  Columns 11 through 15

   -0.9000   -0.8900   -0.8800   -0.8700   -0.8600

  Columns 16 through 20

   -0.8500   -0.8400   -0.8300   -0.8200   -0.8100

  Columns 21 through 25

   -0.8000   -0.7900   -0.7800   -0.7700   -0.7600

  Columns 26 through 30

   -0.7500   -0.7400   -0.7300   -0.7200   -0.7100

  Columns 31 through 35

   -0.7000   -0.6900   -0.6800   -0.6700   -0.6600

  Columns 36 through 40

   -0.6500   -0.6400   -0.6300   -0.6200   -0.6100

  Columns 41 through 45

   -0.6000   -0.5900   -0.5800   -0.5700   -0.5600

  Columns 46 through 50

   -0.5500   -0.5400   -0.5300   -0.5200   -0.5100

  Columns 51 through 55

   -0.5000   -0.4900   -0.4800   -0.4700   -0.4600

  Columns 56 through 60

   -0.4500   -0.4400   -0.4300   -0.4200   -0.4100

  Columns 61 through 65

   -0.4000   -0.3900   -0.3800   -0.3700   -0.3600

  Columns 66 through 70

   -0.3500   -0.3400   -0.3300   -0.3200   -0.3100

  Columns 71 through 75

   -0.3000   -0.2900   -0.2800   -0.2700   -0.2600

  Columns 76 through 80

   -0.2500   -0.2400   -0.2300   -0.2200   -0.2100

  Columns 81 through 85

   -0.2000   -0.1900   -0.1800   -0.1700   -0.1600

  Columns 86 through 90

   -0.1500   -0.1400   -0.1300   -0.1200   -0.1100

  Columns 91 through 95

   -0.1000   -0.0900   -0.0800   -0.0700   -0.0600

  Columns 96 through 100

   -0.0500   -0.0400   -0.0300   -0.0200   -0.0100

  Columns 101 through 105

         0    0.0100    0.0200    0.0300    0.0400

  Columns 106 through 110

    0.0500    0.0600    0.0700    0.0800    0.0900

  Columns 111 through 115

    0.1000    0.1100    0.1200    0.1300    0.1400

  Columns 116 through 120

    0.1500    0.1600    0.1700    0.1800    0.1900

  Columns 121 through 125

    0.2000    0.2100    0.2200    0.2300    0.2400

  Columns 126 through 130

    0.2500    0.2600    0.2700    0.2800    0.2900

  Columns 131 through 135

    0.3000    0.3100    0.3200    0.3300    0.3400

  Columns 136 through 140

    0.3500    0.3600    0.3700    0.3800    0.3900

  Columns 141 through 145

    0.4000    0.4100    0.4200    0.4300    0.4400

  Columns 146 through 150

    0.4500    0.4600    0.4700    0.4800    0.4900

  Columns 151 through 155

    0.5000    0.5100    0.5200    0.5300    0.5400

  Columns 156 through 160

    0.5500    0.5600    0.5700    0.5800    0.5900

  Columns 161 through 165

    0.6000    0.6100    0.6200    0.6300    0.6400

  Columns 166 through 170

    0.6500    0.6600    0.6700    0.6800    0.6900

  Columns 171 through 175

    0.7000    0.7100    0.7200    0.7300    0.7400

  Columns 176 through 180

    0.7500    0.7600    0.7700    0.7800    0.7900

  Columns 181 through 185

    0.8000    0.8100    0.8200    0.8300    0.8400

  Columns 186 through 190

    0.8500    0.8600    0.8700    0.8800    0.8900

  Columns 191 through 195

    0.9000    0.9100    0.9200    0.9300    0.9400

  Columns 196 through 200

    0.9500    0.9600    0.9700    0.9800    0.9900

  Columns 201 through 205

    1.0000    1.0100    1.0200    1.0300    1.0400

  Columns 206 through 210

    1.0500    1.0600    1.0700    1.0800    1.0900

  Columns 211 through 215

    1.1000    1.1100    1.1200    1.1300    1.1400

  Columns 216 through 220

    1.1500    1.1600    1.1700    1.1800    1.1900

  Columns 221 through 225

    1.2000    1.2100    1.2200    1.2300    1.2400

  Columns 226 through 230

    1.2500    1.2600    1.2700    1.2800    1.2900

  Columns 231 through 235

    1.3000    1.3100    1.3200    1.3300    1.3400

  Columns 236 through 240

    1.3500    1.3600    1.3700    1.3800    1.3900

  Columns 241 through 245

    1.4000    1.4100    1.4200    1.4300    1.4400

  Columns 246 through 250

    1.4500    1.4600    1.4700    1.4800    1.4900

  Columns 251 through 255

    1.5000    1.5100    1.5200    1.5300    1.5400

  Columns 256 through 260

    1.5500    1.5600    1.5700    1.5800    1.5900

  Columns 261 through 265

    1.6000    1.6100    1.6200    1.6300    1.6400

  Columns 266 through 270

    1.6500    1.6600    1.6700    1.6800    1.6900

  Columns 271 through 275

    1.7000    1.7100    1.7200    1.7300    1.7400

  Columns 276 through 280

    1.7500    1.7600    1.7700    1.7800    1.7900

  Columns 281 through 285

    1.8000    1.8100    1.8200    1.8300    1.8400

  Columns 286 through 290

    1.8500    1.8600    1.8700    1.8800    1.8900

  Columns 291 through 295

    1.9000    1.9100    1.9200    1.9300    1.9400

  Columns 296 through 300

    1.9500    1.9600    1.9700    1.9800    1.9900

  Columns 301 through 305

    2.0000    2.0100    2.0200    2.0300    2.0400

  Columns 306 through 310

    2.0500    2.0600    2.0700    2.0800    2.0900

  Columns 311 through 315

    2.1000    2.1100    2.1200    2.1300    2.1400

  Columns 316 through 320

    2.1500    2.1600    2.1700    2.1800    2.1900

  Columns 321 through 325

    2.2000    2.2100    2.2200    2.2300    2.2400

  Columns 326 through 330

    2.2500    2.2600    2.2700    2.2800    2.2900

  Columns 331 through 335

    2.3000    2.3100    2.3200    2.3300    2.3400

  Columns 336 through 340

    2.3500    2.3600    2.3700    2.3800    2.3900

  Columns 341 through 345

    2.4000    2.4100    2.4200    2.4300    2.4400

  Columns 346 through 350

    2.4500    2.4600    2.4700    2.4800    2.4900

  Columns 351 through 355

    2.5000    2.5100    2.5200    2.5300    2.5400

  Columns 356 through 360

    2.5500    2.5600    2.5700    2.5800    2.5900

  Columns 361 through 365

    2.6000    2.6100    2.6200    2.6300    2.6400

  Columns 366 through 370

    2.6500    2.6600    2.6700    2.6800    2.6900

  Columns 371 through 375

    2.7000    2.7100    2.7200    2.7300    2.7400

  Columns 376 through 380

    2.7500    2.7600    2.7700    2.7800    2.7900

  Columns 381 through 385

    2.8000    2.8100    2.8200    2.8300    2.8400

  Columns 386 through 390

    2.8500    2.8600    2.8700    2.8800    2.8900

  Columns 391 through 395

    2.9000    2.9100    2.9200    2.9300    2.9400

  Columns 396 through 400

    2.9500    2.9600    2.9700    2.9800    2.9900

  Columns 401 through 405

    3.0000    3.0100    3.0200    3.0300    3.0400

  Columns 406 through 410

    3.0500    3.0600    3.0700    3.0800    3.0900

  Columns 411 through 415

    3.1000    3.1100    3.1200    3.1300    3.1400

  Columns 416 through 420

    3.1500    3.1600    3.1700    3.1800    3.1900

  Column 421

    3.2000

I = C(1)*U.^3+C(2).^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
%tagad izmeģinasim citas kartas
%% izmantosim POLYPAL funkciju
%tas pats kas iepriekš
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

%I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
I = polyval(C,U);
plot(Um,Im,'o',U,I)

%Piebilde
%polyfit = POLYnominal FITing rēķina koef
%POLYVAL = POLTnominal VALues reķina vertibas
%4.kartai
%pie kārtas vienāds ar punktu skaits -1
%izn;ak polinomalā interpolācija
%iet precīzi caur punktiem
%polinomalā aproksmācija
%% ja kārta ir parak liela
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

C = polyfit(Um,Im,4)

C =

   -0.0557    0.4436   -0.6159    0.0221    2.2373

plot(Um,Im,'o',U,I)
plot(Um,Im,'o',U,I)
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

I = polyval(C,U)

I =

  Columns 1 through 5

    1.1132    1.1307    1.1479    1.1650    1.1819

  Columns 6 through 10

    1.1986    1.2151    1.2314    1.2475    1.2634

  Columns 11 through 15

    1.2792    1.2947    1.3101    1.3253    1.3403

  Columns 16 through 20

    1.3551    1.3697    1.3842    1.3985    1.4126

  Columns 21 through 25

    1.4265    1.4403    1.4538    1.4673    1.4805

  Columns 26 through 30

    1.4936    1.5065    1.5192    1.5318    1.5442

  Columns 31 through 35

    1.5564    1.5685    1.5804    1.5921    1.6037

  Columns 36 through 40

    1.6151    1.6264    1.6375    1.6484    1.6592

  Columns 41 through 45

    1.6699    1.6804    1.6907    1.7009    1.7110

  Columns 46 through 50

    1.7208    1.7306    1.7402    1.7496    1.7590

  Columns 51 through 55

    1.7681    1.7771    1.7860    1.7948    1.8034

  Columns 56 through 60

    1.8119    1.8202    1.8284    1.8365    1.8444

  Columns 61 through 65

    1.8522    1.8599    1.8674    1.8748    1.8821

  Columns 66 through 70

    1.8893    1.8963    1.9032    1.9100    1.9166

  Columns 71 through 75

    1.9232    1.9296    1.9359    1.9421    1.9482

  Columns 76 through 80

    1.9541    1.9600    1.9657    1.9713    1.9768

  Columns 81 through 85

    1.9822    1.9875    1.9927    1.9978    2.0027

  Columns 86 through 90

    2.0076    2.0124    2.0170    2.0216    2.0260

  Columns 91 through 95

    2.0304    2.0347    2.0388    2.0429    2.0469

  Columns 96 through 100

    2.0508    2.0546    2.0583    2.0619    2.0654

  Columns 101 through 105

    2.0688    2.0722    2.0754    2.0786    2.0817

  Columns 106 through 110

    2.0847    2.0876    2.0905    2.0933    2.0960

  Columns 111 through 115

    2.0986    2.1011    2.1036    2.1060    2.1083

  Columns 116 through 120

    2.1106    2.1127    2.1149    2.1169    2.1189

  Columns 121 through 125

    2.1208    2.1226    2.1244    2.1261    2.1278

  Columns 126 through 130

    2.1294    2.1309    2.1324    2.1339    2.1352

  Columns 131 through 135

    2.1365    2.1378    2.1390    2.1402    2.1413

  Columns 136 through 140

    2.1423    2.1434    2.1443    2.1452    2.1461

  Columns 141 through 145

    2.1470    2.1477    2.1485    2.1492    2.1499

  Columns 146 through 150

    2.1505    2.1511    2.1517    2.1522    2.1527

  Columns 151 through 155

    2.1531    2.1535    2.1539    2.1543    2.1546

  Columns 156 through 160

    2.1550    2.1552    2.1555    2.1557    2.1559

  Columns 161 through 165

    2.1561    2.1563    2.1565    2.1566    2.1567

  Columns 166 through 170

    2.1568    2.1569    2.1570    2.1570    2.1571

  Columns 171 through 175

    2.1571    2.1572    2.1572    2.1572    2.1572

  Columns 176 through 180

    2.1572    2.1572    2.1572    2.1572    2.1572

  Columns 181 through 185

    2.1572    2.1572    2.1572    2.1572    2.1572

  Columns 186 through 190

    2.1572    2.1572    2.1572    2.1573    2.1573

  Columns 191 through 195

    2.1574    2.1574    2.1575    2.1576    2.1578

  Columns 196 through 200

    2.1579    2.1580    2.1582    2.1584    2.1586

  Columns 201 through 205

    2.1589    2.1591    2.1594    2.1597    2.1600

  Columns 206 through 210

    2.1604    2.1608    2.1612    2.1617    2.1622

  Columns 211 through 215

    2.1627    2.1633    2.1638    2.1645    2.1651

  Columns 216 through 220

    2.1659    2.1666    2.1674    2.1682    2.1691

  Columns 221 through 225

    2.1700    2.1710    2.1720    2.1731    2.1742

  Columns 226 through 230

    2.1753    2.1765    2.1778    2.1791    2.1805

  Columns 231 through 235

    2.1819    2.1834    2.1849    2.1865    2.1882

  Columns 236 through 240

    2.1899    2.1917    2.1935    2.1955    2.1974

  Columns 241 through 245

    2.1995    2.2016    2.2038    2.2060    2.2083

  Columns 246 through 250

    2.2107    2.2132    2.2158    2.2184    2.2211

  Columns 251 through 255

    2.2238    2.2267    2.2296    2.2326    2.2357

  Columns 256 through 260

    2.2389    2.2422    2.2455    2.2489    2.2525

  Columns 261 through 265

    2.2561    2.2598    2.2636    2.2674    2.2714

  Columns 266 through 270

    2.2755    2.2797    2.2839    2.2883    2.2927

  Columns 271 through 275

    2.2973    2.3019    2.3067    2.3116    2.3165

  Columns 276 through 280

    2.3216    2.3268    2.3321    2.3375    2.3430

  Columns 281 through 285

    2.3486    2.3543    2.3602    2.3661    2.3722

  Columns 286 through 290

    2.3784    2.3847    2.3911    2.3976    2.4043

  Columns 291 through 295

    2.4111    2.4180    2.4250    2.4322    2.4395

  Columns 296 through 300

    2.4469    2.4544    2.4621    2.4699    2.4778

  Columns 301 through 305

    2.4859    2.4941    2.5024    2.5109    2.5195

  Columns 306 through 310

    2.5282    2.5371    2.5461    2.5553    2.5646

  Columns 311 through 315

    2.5741    2.5837    2.5934    2.6033    2.6133

  Columns 316 through 320

    2.6235    2.6339    2.6444    2.6550    2.6658

  Columns 321 through 325

    2.6768    2.6879    2.6991    2.7106    2.7221

  Columns 326 through 330

    2.7339    2.7458    2.7579    2.7701    2.7825

  Columns 331 through 335

    2.7950    2.8078    2.8207    2.8337    2.8470

  Columns 336 through 340

    2.8604    2.8740    2.8877    2.9016    2.9158

  Columns 341 through 345

    2.9300    2.9445    2.9591    2.9740    2.9890

  Columns 346 through 350

    3.0041    3.0195    3.0351    3.0508    3.0667

  Columns 351 through 355

    3.0828    3.0991    3.1156    3.1323    3.1492

  Columns 356 through 360

    3.1662    3.1835    3.2010    3.2186    3.2365

  Columns 361 through 365

    3.2545    3.2728    3.2912    3.3099    3.3288

  Columns 366 through 370

    3.3478    3.3671    3.3866    3.4062    3.4261

  Columns 371 through 375

    3.4462    3.4666    3.4871    3.5078    3.5288

  Columns 376 through 380

    3.5500    3.5713    3.5929    3.6148    3.6368

  Columns 381 through 385

    3.6591    3.6816    3.7043    3.7272    3.7504

  Columns 386 through 390

    3.7738    3.7974    3.8212    3.8453    3.8696

  Columns 391 through 395

    3.8941    3.9189    3.9439    3.9691    3.9946

  Columns 396 through 400

    4.0203    4.0463    4.0725    4.0989    4.1256

  Columns 401 through 405

    4.1525    4.1796    4.2070    4.2347    4.2626

  Columns 406 through 410

    4.2908    4.3192    4.3478    4.3767    4.4059

  Columns 411 through 415

    4.4353    4.4649    4.4948    4.5250    4.5555

  Columns 416 through 420

    4.5862    4.6171    4.6483    4.6798    4.7116

  Column 421

    4.7436

plot(Um,Im,'o',U,I)
C = polyfit(Um,Im,10)
[Warning: Polynomial is not unique; degree >= number of
data points.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m', 70)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m',70,0)">line 70</a>)] 

C =

  Columns 1 through 5

   -0.0318    0.2240   -0.4986    0.3455         0

  Columns 6 through 10

         0         0         0         0         0

  Column 11

    2.2000

I = polyval(C,U);
plot(Um,Im,'o',U,I)
%ja sakritība ir lineāra
C = polyfit(Um,Im1);
{Undefined function or variable 'Im1'.
} 
C = polyfit(Um,Im,1)

C =

    0.7434    1.6936

I = polyval(C,U);
plot(Um,Im,'o',U,I)
%%vairākas mērijumu sērijas
%pieņemsim kad mainam spriegumu
%bet strāvu mainam 5 reizies
Um=[-1 0.3 1.5 2.5 3.2];
Im=[1.1 2.2 2.1 3.2 4.7;
       0.9 1.8 2.6 3.3 4.5;
       1.0 2.0 2.4 3.4 4.3;
       0.8 2.1 2.5 3.5 4.4;
       1.0 2.1 2.3 3.4 4.6];
%kā matlabs zīmēs matricas?
figure,plot(Um,Im,'o-')
%lai iznāktu pareizi transponēsim matricu
figure,plot(Um,Im','o-')
%secinajums: matlab zīmē matricas pa stabiņiem
%lai polyfit varētu aprēķinātir jāpaņem
%videjā vērtība
Ivid = mean(Im)

Ivid =

    0.9600    2.0400    2.3800    3.3600    4.5000

C = polyfit(Um,Ivid,4);
U = -1:0.01:3.2;
I = polyval(C,U);
%uzzīmēsim
%ar melnām zvaignītēm apzimejiet vidējo
%ar līniju apzimejiet pielaikoto polinomu
figure,plot(Um,Ivid,'*k','o-')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Invalid first data argument
} 
figure,plot(Um,Im,Ivid,'*k','o-')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Data must be a single matrix Y or a list of pairs X,Y.
} 
figure,plot(Um,Im','o',Um,Ivid,'*k',U,I,'-')
figure,plot(Um,Im','o',Um,Ivid,'*k',U,I,)
 figure,plot(Um,Im','o',Um,Ivid,'*k',U,I,)
                                         ↑
{Error: Unbalanced or unexpected parenthesis or bracket.
} 
figure,plot(Um,Im','o',Um,Ivid,'*k',U,I,'-')
%% kā attēlot vidējo kvadtrātisko novirzi
Ivid_kv_novirze = std(Im);
errorbar(Um,Ivid,Ivid_kv_novirze)
%%
%% Datu iegūšana no grafiski uzdotiem datiem
cd

/home/user

ls
Desktop  DMI  Documents  Downloads  image1.JPG	image2.JPG  lab1_diary.m  VirtualBox VMs

%% Pieņemsim ka mums ir grafiks JPG formātā
%1. ielasām JPG uz matlab
A = imread('image.JPG');
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('imread>get_full_filename', '/usr/local/MATLAB/R2016b/toolbox/matlab/imagesci/imread.p', 481)" style="font-weight:bold">imread>get_full_filename</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/imagesci/imread.p',481,0)">line 481</a>)
File "image.JPG" does not exist.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('imread', '/usr/local/MATLAB/R2016b/toolbox/matlab/imagesci/imread.p', 344)" style="font-weight:bold">imread</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/imagesci/imread.p',344,0)">line 344</a>)
    filename = get_full_filename(fid, errmsg, filename);
} 
A = imread('image1.JPG');
B = imread('image2.JPG');
%2. uzzīmēsim
figure(1), image(A);
%%
figure(2), image(B);
figure(2), image([0 14],[0 18]B);
 figure(2), image([0 14],[0 18]B);
                               ↑
{Error: Unexpected MATLAB expression.
} 
figure(2), image([0 14],[0 18],B);
% Y ass ir uz otru pusi
figure(2), image([0 14],[80 0],B);
set(gca,'Ydir','ņormal')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('matlab.graphics.axis.Axes/set')" style="font-weight:bold">matlab.graphics.axis.Axes/set</a>
While setting property 'YDir' of class '<a href="matlab:doc matlab.graphics.axis.Axes">Axes</a>':
'ņormal' is not a valid value. Use one of these values:
'normal' | 'reverse'.
} 
set(gca,'Ydir','ņormal')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('matlab.graphics.axis.Axes/set')" style="font-weight:bold">matlab.graphics.axis.Axes/set</a>
While setting property 'YDir' of class '<a href="matlab:doc matlab.graphics.axis.Axes">Axes</a>':
'ņormal' is not a valid value. Use one of these values:
'normal' | 'reverse'.
} 
figure(2), image([0 14],[0 80],B);
set(gca,'Ydir','ņormal')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('matlab.graphics.axis.Axes/set')" style="font-weight:bold">matlab.graphics.axis.Axes/set</a>
While setting property 'YDir' of class '<a href="matlab:doc matlab.graphics.axis.Axes">Axes</a>':
'ņormal' is not a valid value. Use one of these values:
'normal' | 'reverse'.
} 
set(gca,'Ydir','ņormal');
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('matlab.graphics.axis.Axes/set')" style="font-weight:bold">matlab.graphics.axis.Axes/set</a>
While setting property 'YDir' of class '<a href="matlab:doc matlab.graphics.axis.Axes">Axes</a>':
'ņormal' is not a valid value. Use one of these values:
'normal' | 'reverse'.
} 
diary off
