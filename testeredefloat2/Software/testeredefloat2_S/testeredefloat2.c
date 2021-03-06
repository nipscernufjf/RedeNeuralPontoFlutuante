#PRNAME testeredefloat2
#DIRNAM "C:\Users\LuccaViccini\Desktop\UFJF\IC\IC_Luciano\Rede_Neural\testeredefloat2\Hardware\testeredefloat2_H"
#DATYPE 1
#NBMANT 19
#NBEXPO 8
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4

void main() 
{
    
    float tab[64]"tab.txt";
    float tab4[32768]"tab4.txt";

    float y0 = -1.0;
    float y1 = 0.0;
    float y2 = 12.0;
    float y3 = 60.0;
    float y4 = 115.0;
    float y5 = 64.0;
    float y6 = 18.0;
    float y7 = 4.0;
    float y8 = 2.0;
    float y9 = 3.0;
    
    //neuronios fazendo produto de inteiros e seus respectivos pesos e somando aos seus respectvios bias
    float soma0 = 0.00593553638820624*y0           + 0.0334750141531402*y2    + 0.186583254594347*y4    + 0.183716308953715*y6    + 0.0465525617898154*y8           - (0.993900038892485               + 0.0154574735389829 *y1                  + 0.0758466999853315*y3             + 0.313157325614765*y5       + 0.0974585252517160*y7       + 0.0144144957389582*y9);
    float soma1 = 0.0245550330272507*y1            + 0.150404068607401*y3     + 0.156136821498537*y5    + 0.0458151854173858*y7   + 0.00725412172631758*y9          - (1.05974593148350                + 0.00757675614084130*y0                  + 0.0622116313519591*y2             + 0.248878233488042*y4       + 0.0864920012979946*y6       + 0.0213842027596014*y8);
    float soma2 = 0.0140687512463048*y0            + 0.140443688776052*y2     + 0.150595510707323*y4    + 0.0429679669922397*y6   + 0.00976663454653212*y8          - (1.16549844382548                + 0.0517227347222095*y1                   + 0.248590361907531*y3              + 0.0786540234103503*y5      + 0.0213914396081503*y7       + 0.00275867818180536*y9);
    float soma3 = 0.138871943729863                + 0.0000596501284629742*y0 + 0.000466346740722656*y2 + 0.00184788475713698*y4  + 0.000636724599570474*y6         + 0.000156419885325004*y8          - (0.000184901343478345*y1                + 0.00111872678008096*y3            + 0.00114171831243059*y5     + 0.000334335315612612*y7     + 0.0000506141878402122*y9);
    
    //out(0, soma0);
    //out(0, soma1);
    //out(0, soma2);
    //out(0, soma3);
    
    int indice0;
    int indice1;
    int indice2;
    int indice3;
    
    if (soma0 < 3.0 && -3.0 < soma0)
    
        indice0 = abs(soma0*16);  
    else  
    //indice0 = [64.0];
        indice0 = 64.0;
        //indice0 = 13;
      
    if (soma1 < 3.0 && -3.0 < soma1)
        indice1 = abs(soma1*16);
    else
        indice1 = 64.0;
    //indice1 = 65;
    
    if (soma2 < 3.0 && -3.0 < soma2 )
        indice2 = abs(soma2*16);
    else
        indice2 = 64.0;
        //indice2 = 24;
    
    if (soma3 < 1.0 && -1.0 < soma3)
        indice3 = abs(soma3*16384);
    else
        indice3 = 32769.0;
    //indice3 = 3720;
    
    //out(0,indice0);
    //out(0,indice1);
    //out(0,indice2);
    //out(0,indice3);
    
    float lute_out_n_0;
    float lute_out_n_1;
    float lute_out_n_2;
    float lute_out_n_3;
    
    
    if (indice0 < 64.0){
        if (soma0 < 0){
            lute_out_n_0 = -tab[indice0];
            
    }
        else{
            lute_out_n_0 = tab[indice0];
        }
    }
    else{
        if (soma0 < 0){
            lute_out_n_0 = -1.0;
        }
        else{
            lute_out_n_0 = 1.0;
        }
    }
    

    if (indice1 < 64.0){
        if (soma1 < 0){
            lute_out_n_1 = -tab[indice1];
            
        }
        else{
            lute_out_n_1 = tab[indice1];
        }
    }
    else{
        if (soma1 < 0){
            lute_out_n_1 = -1.0;
        }
        else{
            lute_out_n_1 = 1.0;
        }
    }
    
    
    if (indice2 < 64.0){
        if (soma2 < 0){
            lute_out_n_2 = -1*tab[indice2];        
        }
        else{
            lute_out_n_2 = tab[indice2];
        }
    }
    else{
        if (soma2 < 0){
            lute_out_n_2 = -1.0;
        }
        else{
            lute_out_n_2 = 1.0;
        }
    }
    

    if (indice3 < 32768.0){
        if (soma3 < 0){
            lute_out_n_3 = -tab4[indice3];          
        }
        else{
            lute_out_n_3 = tab4[indice3];
        }
    }
    else{
        if (soma3 < 0){
            lute_out_n_3 = -15795.0;
        }
        else{
            lute_out_n_3 = 15795.0;
        }
    }
    //out(0,lute_out_n_0);
    //out(0,lute_out_n_1);
    //out(0,lute_out_n_2);
    //out(0,lute_out_n_3);    

    float saida_rede = (lute_out_n_1*10.2534060751568 + lute_out_n_3*1358.22773877427 - (lute_out_n_0*5.05703188427083 + lute_out_n_2*7.48328296625035 + 189.214868378811))*100;
    
    out(0, saida_rede);

    
}