#PRNAME teste
#DIRNAM "C:\Users\ferre\Desktop\teste\Hardware\teste_H"
#DATYPE 1
#NBMANT 19
#NBEXPO 8
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4
@main LOAD 1
SET maini
#arrays maintab 64 "tab.txt"
#arrays maintab4 32768 "tab4.txt"
LOAD 0.0
SET mainy0
LOAD 0.0
SET mainy1
LOAD 0.0
SET mainy2
LOAD 0.0
SET mainy3
LOAD 0.0
SET mainy4
LOAD 0.0
SET mainy5
LOAD 0.0
SET mainy6
LOAD 0.0
SET mainy7
LOAD 0.0
SET mainy8
LOAD 0.0
SET mainy9
@L1 LOAD 70000
GRE maini
LINV
JZ L1end
LOAD mainy1
SET mainy0
LOAD mainy2
SET mainy1
LOAD mainy3
SET mainy2
LOAD mainy4
SET mainy3
LOAD mainy5
SET mainy4
LOAD mainy6
SET mainy5
LOAD mainy7
SET mainy6
LOAD mainy8
SET mainy7
LOAD mainy9
SET mainy8
LOAD 0
PUSH
IN
SET mainy9
LOAD mainy0
MLT 0.00593553638820624
PLD mainy2
MLT 0.0334750141531402
SADD
PLD mainy4
MLT 0.186583254594347
SADD
PLD mainy6
MLT 0.183716308953715
SADD
PLD mainy8
MLT 0.0465525617898154
SADD
PLD mainy1
MLT 0.0154574735389829
ADD 0.993900038892485
PLD mainy3
MLT 0.0758466999853315
SADD
PLD mainy5
MLT 0.313157325614765
SADD
PLD mainy7
MLT 0.0974585252517160
SADD
PLD mainy9
MLT 0.0144144957389582
SADD
NEG
SADD
SET mainsoma0
LOAD mainy1
MLT 0.0245550330272507
PLD mainy3
MLT 0.150404068607401
SADD
PLD mainy5
MLT 0.156136821498537
SADD
PLD mainy7
MLT 0.0458151854173858
SADD
PLD mainy9
MLT 0.00725412172631758
SADD
PLD mainy0
MLT 0.00757675614084130
ADD 1.05974593148350
PLD mainy2
MLT 0.0622116313519591
SADD
PLD mainy4
MLT 0.248878233488042
SADD
PLD mainy6
MLT 0.0864920012979946
SADD
PLD mainy8
MLT 0.0213842027596014
SADD
NEG
SADD
SET mainsoma1
LOAD mainy0
MLT 0.0140687512463048
PLD mainy2
MLT 0.140443688776052
SADD
PLD mainy4
MLT 0.150595510707323
SADD
PLD mainy6
MLT 0.0429679669922397
SADD
PLD mainy8
MLT 0.00976663454653212
SADD
PLD mainy1
MLT 0.0517227347222095
ADD 1.16549844382548
PLD mainy3
MLT 0.248590361907531
SADD
PLD mainy5
MLT 0.0786540234103503
SADD
PLD mainy7
MLT 0.0213914396081503
SADD
PLD mainy9
MLT 0.00275867818180536
SADD
NEG
SADD
SET mainsoma2
LOAD mainy0
MLT 0.0000596501284629742
ADD 0.138871943729863
PLD mainy2
MLT 0.000466346740722656
SADD
PLD mainy4
MLT 0.00184788475713698
SADD
PLD mainy6
MLT 0.000636724599570474
SADD
PLD mainy8
MLT 0.000156419885325004
SADD
PLD mainy1
MLT 0.000184901343478345
PLD mainy3
MLT 0.00111872678008096
SADD
PLD mainy5
MLT 0.00114171831243059
SADD
PLD mainy7
MLT 0.000334335315612612
SADD
PLD mainy9
MLT 0.0000506141878402122
SADD
NEG
SADD
SET mainsoma3
LOAD 3.0
LES mainsoma0
PLD 3.0
NEG
PLD mainsoma0
SLES
SLAND
JZ L2else
LOAD 16
MLT mainsoma0
ABS
SET mainindice0
JMP L2end
@L2else LOAD 64.0
SET mainindice0
@L2end LOAD 3.0
LES mainsoma1
PLD 3.0
NEG
PLD mainsoma1
SLES
SLAND
JZ L3else
LOAD 16
MLT mainsoma1
ABS
SET mainindice1
JMP L3end
@L3else LOAD 64.0
SET mainindice1
@L3end LOAD 3.0
LES mainsoma2
PLD 3.0
NEG
PLD mainsoma2
SLES
SLAND
JZ L4else
LOAD 16
MLT mainsoma2
ABS
SET mainindice2
JMP L4end
@L4else LOAD 64.0
SET mainindice2
@L4end LOAD 1.0
LES mainsoma3
PLD 1.0
NEG
PLD mainsoma3
SLES
SLAND
JZ L5else
LOAD 16384
MLT mainsoma3
ABS
SET mainindice3
JMP L5end
@L5else LOAD 32769.0
SET mainindice3
@L5end LOAD 64.0
LES mainindice0
JZ L6else
LOAD 0
LES mainsoma0
JZ L7else
LOAD mainindice0
PUSH
SRF
LOAD maintab
NEG
SET mainlute_out_n_0
JMP L7end
@L7else LOAD mainindice0
PUSH
SRF
LOAD maintab
SET mainlute_out_n_0
@L7end JMP L6end
@L6else LOAD 0
LES mainsoma0
JZ L8else
LOAD 1.0
NEG
SET mainlute_out_n_0
JMP L8end
@L8else LOAD 1.0
SET mainlute_out_n_0
@L8end @L6end LOAD 64.0
LES mainindice1
JZ L9else
LOAD 0
LES mainsoma1
JZ L10else
LOAD mainindice1
PUSH
SRF
LOAD maintab
NEG
SET mainlute_out_n_1
JMP L10end
@L10else LOAD mainindice1
PUSH
SRF
LOAD maintab
SET mainlute_out_n_1
@L10end JMP L9end
@L9else LOAD 0
LES mainsoma1
JZ L11else
LOAD 1.0
NEG
SET mainlute_out_n_1
JMP L11end
@L11else LOAD 1.0
SET mainlute_out_n_1
@L11end @L9end LOAD 64.0
LES mainindice2
JZ L12else
LOAD 0
LES mainsoma2
JZ L13else
LOAD -1
PLD mainindice2
PUSH
SRF
LOAD maintab
SMLT
SET mainlute_out_n_2
JMP L13end
@L13else LOAD mainindice2
PUSH
SRF
LOAD maintab
SET mainlute_out_n_2
@L13end JMP L12end
@L12else LOAD 0
LES mainsoma2
JZ L14else
LOAD 1.0
NEG
SET mainlute_out_n_2
JMP L14end
@L14else LOAD 1.0
SET mainlute_out_n_2
@L14end @L12end LOAD 32768.0
LES mainindice3
JZ L15else
LOAD 0
LES mainsoma3
JZ L16else
LOAD mainindice3
PUSH
SRF
LOAD maintab4
NEG
SET mainlute_out_n_3
JMP L16end
@L16else LOAD mainindice3
PUSH
SRF
LOAD maintab4
SET mainlute_out_n_3
@L16end JMP L15end
@L15else LOAD 0
LES mainsoma3
JZ L17else
LOAD 15795.0
NEG
SET mainlute_out_n_3
JMP L17end
@L17else LOAD 15795.0
SET mainlute_out_n_3
@L17end @L15end LOAD 10.2534060751568
MLT mainlute_out_n_1
PLD 1358.22773877427
MLT mainlute_out_n_3
SADD
PLD 5.05703188427083
MLT mainlute_out_n_0
PLD 7.48328296625035
MLT mainlute_out_n_2
SADD
PLD 189.214868378811
SADD
NEG
SADD
PLD 100
SMLT
SET mainsaida_rede
LOAD 0
PLD mainsaida_rede
OUT
LOAD 1
ADD maini
SET maini
JMP L1
@L1end @fim JMP fim