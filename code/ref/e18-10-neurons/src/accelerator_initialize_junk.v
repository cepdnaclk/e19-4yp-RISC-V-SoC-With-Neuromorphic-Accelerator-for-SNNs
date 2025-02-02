`timescale 1ns/100ps
// `include "potential_decay.v"
// `include "mac.v"
// `include "Addition_Subtraction.v"
// `include "potential_adder.v"
// `include "network_interface.v"
// `include "Multiplication.v"

module testbench;

    parameter number_of_units = 1024;
    parameter number_of_neurons=10;                         //initiailize number of neurons
    reg CLK;                                                //clock
    reg clear;                                              //clear to start timestep
    reg[3:0] decay_rate;                                    //define decay rate
    reg[3:0] CLK_count;                                     //counter for clocks

    reg[11:0] source_addresses[0:number_of_units-1];          //write her simulate spike packets by sending source addresses
    reg[159:0] weights_arrays[0:number_of_units-1];           //initialize store weights of the connections
    reg[59:0] source_addresses_arrays[0:number_of_units-1];   //initialize connection by writing source addresses to the accumulators
                                                              //12 bits * 5 max connections
    reg[11:0] neuron_addresses[0:number_of_units-1];          //initialize with neuron addresses
    reg[31:0] membrane_potential[0:number_of_units-1];        //initialize membrane potential values
    reg[31:0] v_threshold[0:number_of_units-1];               //threshold values
    reg[359:0] downstream_connections_initialization;           //input to initialize the dowanstream connections
                                                                //12bits * 10 SNN neurons * 3 connections per nueron
                                                                
    reg[119:0] neuron_addresses_initialization;                 //input to initialize the neruon addresses
                                                                //12 bits * 10 SNN neurons
    reg[54:0] connection_pointer_initialization;                //input to initialize the connection pointers
                                                                //11 row pointer elements * 5 bits (to represent 30 connections)
    reg[11:0] spike_origin;                                     //to store the nueron address from the arrived packet
    reg[11:0] spike_destination;                                //to store source address from the arrived packet
    
    reg[1:0] model;
    reg[31:0]a, b, c, d, u_initialize;      //for izhikevich model
    
    wire[31:0] results_mac[0:number_of_units-1];                 //store results from the mac
    wire[31:0] results_potential_decay[0:number_of_units-1];     //store results of potential decay
    wire[31:0] final_potential[0:number_of_units-1];             //potential form the potential adder
    wire spike[0:number_of_units-1];                              //spike signifier from potential decay
    wire[23:0] packet1, packet2, packet3, packet4, packet5, packet6, packet7, packet8, packet9,
            packet10, packet11, packet12, packet13, packet14, packet15, packet16, packet17, packet18,
            packet19, packet20, packet21;                          //packet containing neuron address and sources address

    //generate 1024 potential decay units
    genvar i;
    generate
        for(i=0; i<number_of_units; i=i+1) begin
            potential_decay pd(
                .CLK(CLK),
                .clear(clear),
                .model(model),
                .neuron_address_initialization(neuron_addresses[i]),
                .decay_rate(decay_rate),
                .membrane_potential_initialization(membrane_potential[i]),
                .output_potential_decay(results_potential_decay[i]),
                .new_potential(final_potential[i])
            );
        end
    endgenerate

    //generate 1024 accumulators
    generate
        for(i=0; i<number_of_units; i=i+1) begin
            mac m(
                .CLK(CLK),
                .neuron_address(neuron_addresses[i]),
                .source_address(source_addresses[i]),
                .weights_array(weights_arrays[i]),
                .source_addresses_array(source_addresses_arrays[i]),
                .clear(clear),
                .mult_output(results_mac[i])
            );
        end
    endgenerate

    //genrate corresponding 1024 potential adders
    generate
        for(i=0; i<number_of_units; i=i+1) begin
            potential_adder pa(
                .clear(clear),
                .v_threshold(v_threshold[i]),
                .input_weight(results_mac[i]),
                .decayed_potential(results_potential_decay[i]),
                .model(model),
                .a(a),
                .b(b),
                .c(c),
                .d(d),
                .u_initialize(u_initialize),
                .final_potential(final_potential[i]),
                .spike(spike[i])
            );
        end
    endgenerate

    //network interface initialisation
    network_interface_scaled ni1(
        .CLK(CLK),
        .clear(clear),
        .spike0(spike[0]),
        .spike1(spike[1]),        .spike2(spike[2]),        .spike3(spike[3]),        .spike4(spike[4]),        .spike5(spike[5]),        .spike6(spike[6]),        .spike7(spike[7]),        .spike8(spike[8]),        .spike9(spike[9]),        .spike10(spike[10]),        .spike11(spike[11]),        .spike12(spike[12]),        .spike13(spike[13]),        .spike14(spike[14]),        .spike15(spike[15]),        .spike16(spike[16]),        .spike17(spike[17]),        .spike18(spike[18]),        .spike19(spike[19]),        .spike20(spike[20]),        .spike21(spike[21]),        .spike22(spike[22]),        .spike23(spike[23]),        .spike24(spike[24]),        .spike25(spike[25]),        .spike26(spike[26]),        .spike27(spike[27]),        .spike28(spike[28]),        .spike29(spike[29]),        .spike30(spike[30]),        .spike31(spike[31]),        .spike32(spike[32]),        .spike33(spike[33]),        .spike34(spike[34]),        .spike35(spike[35]),        .spike36(spike[36]),        .spike37(spike[37]),        .spike38(spike[38]),        .spike39(spike[39]),        .spike40(spike[40]),        .spike41(spike[41]),        .spike42(spike[42]),        .spike43(spike[43]),        .spike44(spike[44]),        .spike45(spike[45]),        .spike46(spike[46]),        .spike47(spike[47]),        .spike48(spike[48]),        .spike49(spike[49]),        .spike50(spike[50]),        .spike51(spike[51]),        .spike52(spike[52]),        .spike53(spike[53]),        .spike54(spike[54]),        .spike55(spike[55]),        .spike56(spike[56]),        .spike57(spike[57]),        .spike58(spike[58]),        .spike59(spike[59]),        .spike60(spike[60]),        .spike61(spike[61]),        .spike62(spike[62]),        .spike63(spike[63]),        .spike64(spike[64]),        .spike65(spike[65]),        .spike66(spike[66]),        .spike67(spike[67]),        .spike68(spike[68]),        .spike69(spike[69]),        .spike70(spike[70]),        .spike71(spike[71]),        .spike72(spike[72]),        .spike73(spike[73]),        .spike74(spike[74]),        .spike75(spike[75]),        .spike76(spike[76]),        .spike77(spike[77]),        .spike78(spike[78]),        .spike79(spike[79]),        .spike80(spike[80]),        .spike81(spike[81]),        .spike82(spike[82]),        .spike83(spike[83]),        .spike84(spike[84]),        .spike85(spike[85]),        .spike86(spike[86]),        .spike87(spike[87]),        .spike88(spike[88]),        .spike89(spike[89]),        .spike90(spike[90]),        .spike91(spike[91]),        .spike92(spike[92]),        .spike93(spike[93]),        .spike94(spike[94]),        .spike95(spike[95]),        .spike96(spike[96]),        .spike97(spike[97]),        .spike98(spike[98]),        .spike99(spike[99]),        .spike100(spike[100]),
        .spike101(spike[101]),        .spike102(spike[102]),        .spike103(spike[103]),        .spike104(spike[104]),        .spike105(spike[105]),        .spike106(spike[106]),        .spike107(spike[107]),        .spike108(spike[108]),        .spike109(spike[109]),        .spike110(spike[110]),        .spike111(spike[111]),        .spike112(spike[112]),        .spike113(spike[113]),        .spike114(spike[114]),        .spike115(spike[115]),        .spike116(spike[116]),        .spike117(spike[117]),        .spike118(spike[118]),        .spike119(spike[119]),        .spike120(spike[120]),        .spike121(spike[121]),        .spike122(spike[122]),        .spike123(spike[123]),        .spike124(spike[124]),        .spike125(spike[125]),        .spike126(spike[126]),        .spike127(spike[127]),        .spike128(spike[128]),        .spike129(spike[129]),        .spike130(spike[130]),        .spike131(spike[131]),        .spike132(spike[132]),        .spike133(spike[133]),        .spike134(spike[134]),        .spike135(spike[135]),        .spike136(spike[136]),        .spike137(spike[137]),        .spike138(spike[138]),        .spike139(spike[139]),        .spike140(spike[140]),        .spike141(spike[141]),        .spike142(spike[142]),        .spike143(spike[143]),        .spike144(spike[144]),        .spike145(spike[145]),        .spike146(spike[146]),        .spike147(spike[147]),        .spike148(spike[148]),        .spike149(spike[149]),        .spike150(spike[150]),        .spike151(spike[151]),        .spike152(spike[152]),        .spike153(spike[153]),        .spike154(spike[154]),        .spike155(spike[155]),        .spike156(spike[156]),        .spike157(spike[157]),        .spike158(spike[158]),        .spike159(spike[159]),        .spike160(spike[160]),        .spike161(spike[161]),        .spike162(spike[162]),        .spike163(spike[163]),        .spike164(spike[164]),        .spike165(spike[165]),        .spike166(spike[166]),        .spike167(spike[167]),        .spike168(spike[168]),        .spike169(spike[169]),        .spike170(spike[170]),        .spike171(spike[171]),        .spike172(spike[172]),        .spike173(spike[173]),        .spike174(spike[174]),        .spike175(spike[175]),        .spike176(spike[176]),        .spike177(spike[177]),        .spike178(spike[178]),        .spike179(spike[179]),        .spike180(spike[180]),        .spike181(spike[181]),        .spike182(spike[182]),        .spike183(spike[183]),        .spike184(spike[184]),        .spike185(spike[185]),        .spike186(spike[186]),        .spike187(spike[187]),        .spike188(spike[188]),        .spike189(spike[189]),        .spike190(spike[190]),        .spike191(spike[191]),        .spike192(spike[192]),        .spike193(spike[193]),        .spike194(spike[194]),        .spike195(spike[195]),        .spike196(spike[196]),        .spike197(spike[197]),        .spike198(spike[198]),        .spike199(spike[199]),        .spike200(spike[200]),
        .spike201(spike[201]),        .spike202(spike[202]),        .spike203(spike[203]),        .spike204(spike[204]),        .spike205(spike[205]),        .spike206(spike[206]),        .spike207(spike[207]),        .spike208(spike[208]),        .spike209(spike[209]),        .spike210(spike[210]),        .spike211(spike[211]),        .spike212(spike[212]),        .spike213(spike[213]),        .spike214(spike[214]),        .spike215(spike[215]),        .spike216(spike[216]),        .spike217(spike[217]),        .spike218(spike[218]),        .spike219(spike[219]),        .spike220(spike[220]),        .spike221(spike[221]),        .spike222(spike[222]),        .spike223(spike[223]),        .spike224(spike[224]),        .spike225(spike[225]),        .spike226(spike[226]),        .spike227(spike[227]),        .spike228(spike[228]),        .spike229(spike[229]),        .spike230(spike[230]),        .spike231(spike[231]),        .spike232(spike[232]),        .spike233(spike[233]),        .spike234(spike[234]),        .spike235(spike[235]),        .spike236(spike[236]),        .spike237(spike[237]),        .spike238(spike[238]),        .spike239(spike[239]),        .spike240(spike[240]),        .spike241(spike[241]),        .spike242(spike[242]),        .spike243(spike[243]),        .spike244(spike[244]),        .spike245(spike[245]),        .spike246(spike[246]),        .spike247(spike[247]),        .spike248(spike[248]),        .spike249(spike[249]),        .spike250(spike[250]),        .spike251(spike[251]),        .spike252(spike[252]),        .spike253(spike[253]),        .spike254(spike[254]),        .spike255(spike[255]),        .spike256(spike[256]),        .spike257(spike[257]),        .spike258(spike[258]),        .spike259(spike[259]),        .spike260(spike[260]),        .spike261(spike[261]),        .spike262(spike[262]),        .spike263(spike[263]),        .spike264(spike[264]),        .spike265(spike[265]),        .spike266(spike[266]),        .spike267(spike[267]),        .spike268(spike[268]),        .spike269(spike[269]),        .spike270(spike[270]),        .spike271(spike[271]),        .spike272(spike[272]),        .spike273(spike[273]),        .spike274(spike[274]),        .spike275(spike[275]),        .spike276(spike[276]),        .spike277(spike[277]),        .spike278(spike[278]),        .spike279(spike[279]),        .spike280(spike[280]),        .spike281(spike[281]),        .spike282(spike[282]),        .spike283(spike[283]),        .spike284(spike[284]),        .spike285(spike[285]),        .spike286(spike[286]),        .spike287(spike[287]),        .spike288(spike[288]),        .spike289(spike[289]),        .spike290(spike[290]),        .spike291(spike[291]),        .spike292(spike[292]),        .spike293(spike[293]),        .spike294(spike[294]),        .spike295(spike[295]),        .spike296(spike[296]),        .spike297(spike[297]),        .spike298(spike[298]),        .spike299(spike[299]),        .spike300(spike[300]),
        .spike301(spike[301]),        .spike302(spike[302]),        .spike303(spike[303]),        .spike304(spike[304]),        .spike305(spike[305]),        .spike306(spike[306]),        .spike307(spike[307]),        .spike308(spike[308]),        .spike309(spike[309]),        .spike310(spike[310]),        .spike311(spike[311]),        .spike312(spike[312]),        .spike313(spike[313]),        .spike314(spike[314]),        .spike315(spike[315]),        .spike316(spike[316]),        .spike317(spike[317]),        .spike318(spike[318]),        .spike319(spike[319]),        .spike320(spike[320]),        .spike321(spike[321]),        .spike322(spike[322]),        .spike323(spike[323]),        .spike324(spike[324]),        .spike325(spike[325]),        .spike326(spike[326]),        .spike327(spike[327]),        .spike328(spike[328]),        .spike329(spike[329]),        .spike330(spike[330]),        .spike331(spike[331]),        .spike332(spike[332]),        .spike333(spike[333]),        .spike334(spike[334]),        .spike335(spike[335]),        .spike336(spike[336]),        .spike337(spike[337]),        .spike338(spike[338]),        .spike339(spike[339]),        .spike340(spike[340]),        .spike341(spike[341]),        .spike342(spike[342]),        .spike343(spike[343]),        .spike344(spike[344]),        .spike345(spike[345]),        .spike346(spike[346]),        .spike347(spike[347]),        .spike348(spike[348]),        .spike349(spike[349]),        .spike350(spike[350]),        .spike351(spike[351]),        .spike352(spike[352]),        .spike353(spike[353]),        .spike354(spike[354]),        .spike355(spike[355]),        .spike356(spike[356]),        .spike357(spike[357]),        .spike358(spike[358]),        .spike359(spike[359]),        .spike360(spike[360]),        .spike361(spike[361]),        .spike362(spike[362]),        .spike363(spike[363]),        .spike364(spike[364]),        .spike365(spike[365]),        .spike366(spike[366]),        .spike367(spike[367]),        .spike368(spike[368]),        .spike369(spike[369]),        .spike370(spike[370]),        .spike371(spike[371]),        .spike372(spike[372]),        .spike373(spike[373]),        .spike374(spike[374]),        .spike375(spike[375]),        .spike376(spike[376]),        .spike377(spike[377]),        .spike378(spike[378]),        .spike379(spike[379]),        .spike380(spike[380]),        .spike381(spike[381]),        .spike382(spike[382]),        .spike383(spike[383]),        .spike384(spike[384]),        .spike385(spike[385]),        .spike386(spike[386]),        .spike387(spike[387]),        .spike388(spike[388]),        .spike389(spike[389]),        .spike390(spike[390]),        .spike391(spike[391]),        .spike392(spike[392]),        .spike393(spike[393]),        .spike394(spike[394]),        .spike395(spike[395]),        .spike396(spike[396]),        .spike397(spike[397]),        .spike398(spike[398]),        .spike399(spike[399]),        .spike400(spike[400]),
        .spike401(spike[401]),        .spike402(spike[402]),        .spike403(spike[403]),        .spike404(spike[404]),        .spike405(spike[405]),        .spike406(spike[406]),        .spike407(spike[407]),        .spike408(spike[408]),        .spike409(spike[409]),        .spike410(spike[410]),        .spike411(spike[411]),        .spike412(spike[412]),        .spike413(spike[413]),        .spike414(spike[414]),        .spike415(spike[415]),        .spike416(spike[416]),        .spike417(spike[417]),        .spike418(spike[418]),        .spike419(spike[419]),        .spike420(spike[420]),        .spike421(spike[421]),        .spike422(spike[422]),        .spike423(spike[423]),        .spike424(spike[424]),        .spike425(spike[425]),        .spike426(spike[426]),        .spike427(spike[427]),        .spike428(spike[428]),        .spike429(spike[429]),        .spike430(spike[430]),        .spike431(spike[431]),        .spike432(spike[432]),        .spike433(spike[433]),        .spike434(spike[434]),        .spike435(spike[435]),        .spike436(spike[436]),        .spike437(spike[437]),        .spike438(spike[438]),        .spike439(spike[439]),        .spike440(spike[440]),        .spike441(spike[441]),        .spike442(spike[442]),        .spike443(spike[443]),        .spike444(spike[444]),        .spike445(spike[445]),        .spike446(spike[446]),        .spike447(spike[447]),        .spike448(spike[448]),        .spike449(spike[449]),        .spike450(spike[450]),        .spike451(spike[451]),        .spike452(spike[452]),        .spike453(spike[453]),        .spike454(spike[454]),        .spike455(spike[455]),        .spike456(spike[456]),        .spike457(spike[457]),        .spike458(spike[458]),        .spike459(spike[459]),        .spike460(spike[460]),        .spike461(spike[461]),        .spike462(spike[462]),        .spike463(spike[463]),        .spike464(spike[464]),        .spike465(spike[465]),        .spike466(spike[466]),        .spike467(spike[467]),        .spike468(spike[468]),        .spike469(spike[469]),        .spike470(spike[470]),        .spike471(spike[471]),        .spike472(spike[472]),        .spike473(spike[473]),        .spike474(spike[474]),        .spike475(spike[475]),        .spike476(spike[476]),        .spike477(spike[477]),        .spike478(spike[478]),        .spike479(spike[479]),        .spike480(spike[480]),        .spike481(spike[481]),        .spike482(spike[482]),        .spike483(spike[483]),        .spike484(spike[484]),        .spike485(spike[485]),        .spike486(spike[486]),        .spike487(spike[487]),        .spike488(spike[488]),        .spike489(spike[489]),        .spike490(spike[490]),        .spike491(spike[491]),        .spike492(spike[492]),        .spike493(spike[493]),        .spike494(spike[494]),        .spike495(spike[495]),        .spike496(spike[496]),        .spike497(spike[497]),        .spike498(spike[498]),        .spike499(spike[499]),        .spike500(spike[500]),
        .spike501(spike[501]),        .spike502(spike[502]),        .spike503(spike[503]),        .spike504(spike[504]),        .spike505(spike[505]),        .spike506(spike[506]),        .spike507(spike[507]),        .spike508(spike[508]),        .spike509(spike[509]),        .spike510(spike[510]),        .spike511(spike[511]),        .spike512(spike[512]),        .spike513(spike[513]),        .spike514(spike[514]),        .spike515(spike[515]),        .spike516(spike[516]),        .spike517(spike[517]),        .spike518(spike[518]),        .spike519(spike[519]),        .spike520(spike[520]),        .spike521(spike[521]),        .spike522(spike[522]),        .spike523(spike[523]),        .spike524(spike[524]),        .spike525(spike[525]),        .spike526(spike[526]),        .spike527(spike[527]),        .spike528(spike[528]),        .spike529(spike[529]),        .spike530(spike[530]),        .spike531(spike[531]),        .spike532(spike[532]),        .spike533(spike[533]),        .spike534(spike[534]),        .spike535(spike[535]),        .spike536(spike[536]),        .spike537(spike[537]),        .spike538(spike[538]),        .spike539(spike[539]),        .spike540(spike[540]),        .spike541(spike[541]),        .spike542(spike[542]),        .spike543(spike[543]),        .spike544(spike[544]),        .spike545(spike[545]),        .spike546(spike[546]),        .spike547(spike[547]),        .spike548(spike[548]),        .spike549(spike[549]),        .spike550(spike[550]),        .spike551(spike[551]),        .spike552(spike[552]),        .spike553(spike[553]),        .spike554(spike[554]),        .spike555(spike[555]),        .spike556(spike[556]),        .spike557(spike[557]),        .spike558(spike[558]),        .spike559(spike[559]),        .spike560(spike[560]),        .spike561(spike[561]),        .spike562(spike[562]),        .spike563(spike[563]),        .spike564(spike[564]),        .spike565(spike[565]),        .spike566(spike[566]),        .spike567(spike[567]),        .spike568(spike[568]),        .spike569(spike[569]),        .spike570(spike[570]),        .spike571(spike[571]),        .spike572(spike[572]),        .spike573(spike[573]),        .spike574(spike[574]),        .spike575(spike[575]),        .spike576(spike[576]),        .spike577(spike[577]),        .spike578(spike[578]),        .spike579(spike[579]),        .spike580(spike[580]),        .spike581(spike[581]),        .spike582(spike[582]),        .spike583(spike[583]),        .spike584(spike[584]),        .spike585(spike[585]),        .spike586(spike[586]),        .spike587(spike[587]),        .spike588(spike[588]),        .spike589(spike[589]),        .spike590(spike[590]),        .spike591(spike[591]),        .spike592(spike[592]),        .spike593(spike[593]),        .spike594(spike[594]),        .spike595(spike[595]),        .spike596(spike[596]),        .spike597(spike[597]),        .spike598(spike[598]),        .spike599(spike[599]),        .spike600(spike[600]),
        .spike601(spike[601]),        .spike602(spike[602]),        .spike603(spike[603]),        .spike604(spike[604]),        .spike605(spike[605]),        .spike606(spike[606]),        .spike607(spike[607]),        .spike608(spike[608]),        .spike609(spike[609]),        .spike610(spike[610]),        .spike611(spike[611]),        .spike612(spike[612]),        .spike613(spike[613]),        .spike614(spike[614]),        .spike615(spike[615]),        .spike616(spike[616]),        .spike617(spike[617]),        .spike618(spike[618]),        .spike619(spike[619]),        .spike620(spike[620]),        .spike621(spike[621]),        .spike622(spike[622]),        .spike623(spike[623]),        .spike624(spike[624]),        .spike625(spike[625]),        .spike626(spike[626]),        .spike627(spike[627]),        .spike628(spike[628]),        .spike629(spike[629]),        .spike630(spike[630]),        .spike631(spike[631]),        .spike632(spike[632]),        .spike633(spike[633]),        .spike634(spike[634]),        .spike635(spike[635]),        .spike636(spike[636]),        .spike637(spike[637]),        .spike638(spike[638]),        .spike639(spike[639]),        .spike640(spike[640]),        .spike641(spike[641]),        .spike642(spike[642]),        .spike643(spike[643]),        .spike644(spike[644]),        .spike645(spike[645]),        .spike646(spike[646]),        .spike647(spike[647]),        .spike648(spike[648]),        .spike649(spike[649]),        .spike650(spike[650]),        .spike651(spike[651]),        .spike652(spike[652]),        .spike653(spike[653]),        .spike654(spike[654]),        .spike655(spike[655]),        .spike656(spike[656]),        .spike657(spike[657]),        .spike658(spike[658]),        .spike659(spike[659]),        .spike660(spike[660]),        .spike661(spike[661]),        .spike662(spike[662]),        .spike663(spike[663]),        .spike664(spike[664]),        .spike665(spike[665]),        .spike666(spike[666]),        .spike667(spike[667]),        .spike668(spike[668]),        .spike669(spike[669]),        .spike670(spike[670]),        .spike671(spike[671]),        .spike672(spike[672]),        .spike673(spike[673]),        .spike674(spike[674]),        .spike675(spike[675]),        .spike676(spike[676]),        .spike677(spike[677]),        .spike678(spike[678]),        .spike679(spike[679]),        .spike680(spike[680]),        .spike681(spike[681]),        .spike682(spike[682]),        .spike683(spike[683]),        .spike684(spike[684]),        .spike685(spike[685]),        .spike686(spike[686]),        .spike687(spike[687]),        .spike688(spike[688]),        .spike689(spike[689]),        .spike690(spike[690]),        .spike691(spike[691]),        .spike692(spike[692]),        .spike693(spike[693]),        .spike694(spike[694]),        .spike695(spike[695]),        .spike696(spike[696]),        .spike697(spike[697]),        .spike698(spike[698]),        .spike699(spike[699]),        .spike700(spike[700]),
        .spike701(spike[701]),        .spike702(spike[702]),        .spike703(spike[703]),        .spike704(spike[704]),        .spike705(spike[705]),        .spike706(spike[706]),        .spike707(spike[707]),        .spike708(spike[708]),        .spike709(spike[709]),        .spike710(spike[710]),        .spike711(spike[711]),        .spike712(spike[712]),        .spike713(spike[713]),        .spike714(spike[714]),        .spike715(spike[715]),        .spike716(spike[716]),        .spike717(spike[717]),        .spike718(spike[718]),        .spike719(spike[719]),        .spike720(spike[720]),        .spike721(spike[721]),        .spike722(spike[722]),        .spike723(spike[723]),        .spike724(spike[724]),        .spike725(spike[725]),        .spike726(spike[726]),        .spike727(spike[727]),        .spike728(spike[728]),        .spike729(spike[729]),        .spike730(spike[730]),        .spike731(spike[731]),        .spike732(spike[732]),        .spike733(spike[733]),        .spike734(spike[734]),        .spike735(spike[735]),        .spike736(spike[736]),        .spike737(spike[737]),        .spike738(spike[738]),        .spike739(spike[739]),        .spike740(spike[740]),        .spike741(spike[741]),        .spike742(spike[742]),        .spike743(spike[743]),        .spike744(spike[744]),        .spike745(spike[745]),        .spike746(spike[746]),        .spike747(spike[747]),        .spike748(spike[748]),        .spike749(spike[749]),        .spike750(spike[750]),        .spike751(spike[751]),        .spike752(spike[752]),        .spike753(spike[753]),        .spike754(spike[754]),        .spike755(spike[755]),        .spike756(spike[756]),        .spike757(spike[757]),        .spike758(spike[758]),        .spike759(spike[759]),        .spike760(spike[760]),        .spike761(spike[761]),        .spike762(spike[762]),        .spike763(spike[763]),        .spike764(spike[764]),        .spike765(spike[765]),        .spike766(spike[766]),        .spike767(spike[767]),        .spike768(spike[768]),        .spike769(spike[769]),        .spike770(spike[770]),        .spike771(spike[771]),        .spike772(spike[772]),        .spike773(spike[773]),        .spike774(spike[774]),        .spike775(spike[775]),        .spike776(spike[776]),        .spike777(spike[777]),        .spike778(spike[778]),        .spike779(spike[779]),        .spike780(spike[780]),        .spike781(spike[781]),        .spike782(spike[782]),        .spike783(spike[783]),        .spike784(spike[784]),        .spike785(spike[785]),        .spike786(spike[786]),        .spike787(spike[787]),        .spike788(spike[788]),        .spike789(spike[789]),        .spike790(spike[790]),        .spike791(spike[791]),        .spike792(spike[792]),        .spike793(spike[793]),        .spike794(spike[794]),        .spike795(spike[795]),        .spike796(spike[796]),        .spike797(spike[797]),        .spike798(spike[798]),        .spike799(spike[799]),        .spike800(spike[800]),
        .spike801(spike[801]),        .spike802(spike[802]),        .spike803(spike[803]),        .spike804(spike[804]),        .spike805(spike[805]),        .spike806(spike[806]),        .spike807(spike[807]),        .spike808(spike[808]),        .spike809(spike[809]),        .spike810(spike[810]),        .spike811(spike[811]),        .spike812(spike[812]),        .spike813(spike[813]),        .spike814(spike[814]),        .spike815(spike[815]),        .spike816(spike[816]),        .spike817(spike[817]),        .spike818(spike[818]),        .spike819(spike[819]),        .spike820(spike[820]),        .spike821(spike[821]),        .spike822(spike[822]),        .spike823(spike[823]),        .spike824(spike[824]),        .spike825(spike[825]),        .spike826(spike[826]),        .spike827(spike[827]),        .spike828(spike[828]),        .spike829(spike[829]),        .spike830(spike[830]),        .spike831(spike[831]),        .spike832(spike[832]),        .spike833(spike[833]),        .spike834(spike[834]),        .spike835(spike[835]),        .spike836(spike[836]),        .spike837(spike[837]),        .spike838(spike[838]),        .spike839(spike[839]),        .spike840(spike[840]),        .spike841(spike[841]),        .spike842(spike[842]),        .spike843(spike[843]),        .spike844(spike[844]),        .spike845(spike[845]),        .spike846(spike[846]),        .spike847(spike[847]),        .spike848(spike[848]),        .spike849(spike[849]),        .spike850(spike[850]),        .spike851(spike[851]),        .spike852(spike[852]),        .spike853(spike[853]),        .spike854(spike[854]),        .spike855(spike[855]),        .spike856(spike[856]),        .spike857(spike[857]),        .spike858(spike[858]),        .spike859(spike[859]),        .spike860(spike[860]),        .spike861(spike[861]),        .spike862(spike[862]),        .spike863(spike[863]),        .spike864(spike[864]),        .spike865(spike[865]),        .spike866(spike[866]),        .spike867(spike[867]),        .spike868(spike[868]),        .spike869(spike[869]),        .spike870(spike[870]),        .spike871(spike[871]),        .spike872(spike[872]),        .spike873(spike[873]),        .spike874(spike[874]),        .spike875(spike[875]),        .spike876(spike[876]),        .spike877(spike[877]),        .spike878(spike[878]),        .spike879(spike[879]),        .spike880(spike[880]),        .spike881(spike[881]),        .spike882(spike[882]),        .spike883(spike[883]),        .spike884(spike[884]),        .spike885(spike[885]),        .spike886(spike[886]),        .spike887(spike[887]),        .spike888(spike[888]),        .spike889(spike[889]),        .spike890(spike[890]),        .spike891(spike[891]),        .spike892(spike[892]),        .spike893(spike[893]),        .spike894(spike[894]),        .spike895(spike[895]),        .spike896(spike[896]),        .spike897(spike[897]),        .spike898(spike[898]),        .spike899(spike[899]),        .spike900(spike[900]),
        .spike901(spike[901]),        .spike902(spike[902]),        .spike903(spike[903]),        .spike904(spike[904]),        .spike905(spike[905]),        .spike906(spike[906]),        .spike907(spike[907]),        .spike908(spike[908]),        .spike909(spike[909]),        .spike910(spike[910]),        .spike911(spike[911]),        .spike912(spike[912]),        .spike913(spike[913]),        .spike914(spike[914]),        .spike915(spike[915]),        .spike916(spike[916]),        .spike917(spike[917]),        .spike918(spike[918]),        .spike919(spike[919]),        .spike920(spike[920]),        .spike921(spike[921]),        .spike922(spike[922]),        .spike923(spike[923]),        .spike924(spike[924]),        .spike925(spike[925]),        .spike926(spike[926]),        .spike927(spike[927]),        .spike928(spike[928]),        .spike929(spike[929]),        .spike930(spike[930]),        .spike931(spike[931]),        .spike932(spike[932]),        .spike933(spike[933]),        .spike934(spike[934]),        .spike935(spike[935]),        .spike936(spike[936]),        .spike937(spike[937]),        .spike938(spike[938]),        .spike939(spike[939]),        .spike940(spike[940]),        .spike941(spike[941]),        .spike942(spike[942]),        .spike943(spike[943]),        .spike944(spike[944]),        .spike945(spike[945]),        .spike946(spike[946]),        .spike947(spike[947]),        .spike948(spike[948]),        .spike949(spike[949]),        .spike950(spike[950]),        .spike951(spike[951]),        .spike952(spike[952]),        .spike953(spike[953]),        .spike954(spike[954]),        .spike955(spike[955]),        .spike956(spike[956]),        .spike957(spike[957]),        .spike958(spike[958]),        .spike959(spike[959]),        .spike960(spike[960]),        .spike961(spike[961]),        .spike962(spike[962]),        .spike963(spike[963]),        .spike964(spike[964]),        .spike965(spike[965]),        .spike966(spike[966]),        .spike967(spike[967]),        .spike968(spike[968]),        .spike969(spike[969]),        .spike970(spike[970]),        .spike971(spike[971]),        .spike972(spike[972]),        .spike973(spike[973]),        .spike974(spike[974]),        .spike975(spike[975]),        .spike976(spike[976]),        .spike977(spike[977]),        .spike978(spike[978]),        .spike979(spike[979]),        .spike980(spike[980]),        .spike981(spike[981]),        .spike982(spike[982]),        .spike983(spike[983]),        .spike984(spike[984]),        .spike985(spike[985]),        .spike986(spike[986]),        .spike987(spike[987]),        .spike988(spike[988]),        .spike989(spike[989]),        .spike990(spike[990]),        .spike991(spike[991]),        .spike992(spike[992]),        .spike993(spike[993]),        .spike994(spike[994]),        .spike995(spike[995]),        .spike996(spike[996]),        .spike997(spike[997]),        .spike998(spike[998]),        .spike999(spike[999]),        .spike1000(spike[1000]),
        .spike1001(spike[1001]),        .spike1002(spike[1002]),        .spike1003(spike[1003]),        .spike1004(spike[1004]),        .spike1005(spike[1005]),        .spike1006(spike[1006]),        .spike1007(spike[1007]),        .spike1008(spike[1008]),        .spike1009(spike[1009]),        .spike1010(spike[1010]),        .spike1011(spike[1011]),        .spike1012(spike[1012]),        .spike1013(spike[1013]),        .spike1014(spike[1014]),        .spike1015(spike[1015]),        .spike1016(spike[1016]),        .spike1017(spike[1017]),        .spike1018(spike[1018]),        .spike1019(spike[1019]),        .spike1020(spike[1020]),        .spike1021(spike[1021]),        .spike1022(spike[1022]),        .spike1023(spike[1023]),
        .neuron_addresses_initialization(neuron_addresses_initialization),
        .connection_pointer_initialization(connection_pointer_initialization),           //input to initialize the connection pointers
        .downstream_connections_initialization(downstream_connections_initialization),    //input to initialize the dowanstream connections
        .packet1(packet1), .packet2(packet2), .packet3(packet3), .packet4(packet4), .packet5(packet5), .packet6(packet6),
        .packet7(packet7), .packet8(packet8), .packet9(packet9), .packet10(packet10), .packet11(packet11),
        .packet12(packet12), .packet13(packet13), .packet14(packet14), .packet15(packet15), .packet16(packet16),
        .packet17(packet17), .packet18(packet18), .packet19(packet19), .packet20(packet20), .packet21(packet21)
    );

    // Observe the timing on gtkwave
    initial
    begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
    end

    // // Print the outputs when ever the inputs change
    initial
    begin
        $monitor($time, "  Neuron_address: %b\n                     Membrane Potential: %b\n                     Decay Rate: %d\n                     After Potential Decay: %b\n                     Source_address: %b\n                     MAC result: %b\n                     Threshold: %b\n                     Output Potential: %b\n                     Spiked:%b", neuron_addresses[0], membrane_potential[0], decay_rate, results_potential_decay[0], source_addresses[0], results_mac[0],v_threshold[0],final_potential[0], spike[0]);
    end

    // Observe the timing on gtkwave
    initial begin
        $dumpfile("accelerator_wavedata.vcd");
        $dumpvars(0,testbench);
    end


    initial begin

        CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;

        //decay rate for potential decay calculation
        decay_rate = 4'b0010;

        //type of SNN model run
        model = 2'b00;

        //neuron addresses
        neuron_addresses[0] = 12'd0;
        neuron_addresses[1] = 12'd1;    neuron_addresses[2] = 12'd2;    neuron_addresses[3] = 12'd3;    neuron_addresses[4] = 12'd4;    neuron_addresses[5] = 12'd5;    neuron_addresses[6] = 12'd6;    neuron_addresses[7] = 12'd7;    neuron_addresses[8] = 12'd8;    neuron_addresses[9] = 12'd9;


        //for network interface
        neuron_addresses_initialization = {        neuron_addresses[0], 
        neuron_addresses[1],         neuron_addresses[2],         neuron_addresses[3],         neuron_addresses[4],         neuron_addresses[5],         neuron_addresses[6],         neuron_addresses[7],         neuron_addresses[8],         neuron_addresses[9]};

        //CSR
        connection_pointer_initialization = {5'd0, 5'd3, 5'd5, 5'd8, 5'd10, 5'd12, 5'd14, 5'd15, 5'd17, 5'd18, 5'd19};

        downstream_connections_initialization = {12'b000000000011, 12'b000000000101, 12'b000000000111, 
        12'b000000000100, 12'b000000000110,
        12'b000000000100, 12'b000000000101, 12'b000000000110,
        12'b000000001000, 12'b000000001001,
        12'b000000001000, 12'b000000001001,
        12'b000000001000, 12'b000000001001,
        12'b000000001001,
        12'b000000001000, 12'b000000001001,
        12'b111111111011,
        12'b111111111100,
        132'd0};

        //initial membrane potential values
        membrane_potential[0] = 32'h41deb852;
        membrane_potential[1] = 32'h42806b85;
        membrane_potential[2] = 32'h40b75c29;
        membrane_potential[3] = 32'h4228b852;
        membrane_potential[4] = 32'h42aeb852;
        membrane_potential[5] = 32'h429deb85;
        membrane_potential[6] = 32'h4165eb85;
        membrane_potential[7] = 32'h4212147b;
        membrane_potential[8] = 32'h428e2e14;
        membrane_potential[9] = 32'h411a147b;

        //send source addresses array first
        source_addresses_arrays[0] = {12'b001111111000, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111};
        source_addresses_arrays[1] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[2] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[3] = {12'd0, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[4] = {12'd1, 12'd2, 12'd5, 12'd0, 12'd0};
        source_addresses_arrays[5] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[6] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[7] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[8] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[9] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};

        //assign the weights
        weights_arrays[0] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[1] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[2] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[3] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[4] = {32'h423f47ae, 32'h4109999a, 32'h0, 32'h0, 32'h0};
        weights_arrays[5] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[6] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[7] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[8] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[9] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};

        //threshold values
        v_threshold[0] = 32'h42200000;
        v_threshold[1] = 32'h4237851f;
        v_threshold[2] = 32'h4048f5c3;
        v_threshold[3] = 32'h42910000;
        v_threshold[4] = 32'h43480000;
        v_threshold[5] = 32'h426b28f6;
        v_threshold[6] = 32'h42200000;
        v_threshold[7] = 32'h43480000;
        v_threshold[8] = 32'h4215ae14;
        v_threshold[9] = 32'h4287c7ae;

        //Izikeivich Parameters
        a = 32'h4287c7ae;
        b = 32'h4287c7ae;
        c = 32'h4287c7ae;
        d = 32'h4287c7ae;
        u_initialize = 32'h4287c7ae;

        #40
        source_addresses[0] = 12'b001111111000;
        // source_addresses[1] = 12'd3;

        #300
        $finish;

    end

    //when packets arrive from the potential adder send the source address to the relevant mac unit 
    // always @(packet1) begin
    //     spike_origin = packet1[23:12];               // From where the spike came
    //     spike_destination = packet1[11:0];           // To where it should be sent 

    //     source_addresses[spike_destination] = spike_origin;      // Trigger the wire of the relevant accumulator
    // end

    always @(packet1) begin 
        spike_origin = packet1[23:12];
        spike_destination = packet1[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet2) begin 
        spike_origin = packet2[23:12];
        spike_destination = packet2[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet3) begin 
        spike_origin = packet3[23:12];
        spike_destination = packet3[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet4) begin 
        spike_origin = packet4[23:12];
        spike_destination = packet4[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet5) begin 
        spike_origin = packet5[23:12];
        spike_destination = packet5[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet6) begin 
        spike_origin = packet6[23:12];
        spike_destination = packet6[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet7) begin 
        spike_origin = packet7[23:12];
        spike_destination = packet7[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet8) begin 
        spike_origin = packet8[23:12];
        spike_destination = packet8[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet9) begin 
        spike_origin = packet9[23:12];
        spike_destination = packet9[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet10) begin 
        spike_origin = packet10[23:12];
        spike_destination = packet10[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet11) begin 
        spike_origin = packet11[23:12];
        spike_destination = packet11[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet12) begin 
        spike_origin = packet12[23:12];
        spike_destination = packet12[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet13) begin 
        spike_origin = packet13[23:12];
        spike_destination = packet13[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet14) begin 
        spike_origin = packet14[23:12];
        spike_destination = packet14[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet15) begin 
        spike_origin = packet15[23:12];
        spike_destination = packet15[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet16) begin 
        spike_origin = packet16[23:12];
        spike_destination = packet16[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet17) begin 
        spike_origin = packet17[23:12];
        spike_destination = packet17[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet18) begin 
        spike_origin = packet18[23:12];
        spike_destination = packet18[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet19) begin 
        spike_origin = packet19[23:12];
        spike_destination = packet19[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet20) begin 
        spike_origin = packet20[23:12];
        spike_destination = packet20[11:0];
        source_addresses[spike_destination] = spike_origin;
    end
    always @(packet21) begin 
        spike_origin = packet21[23:12];
        spike_destination = packet21[11:0];
        source_addresses[spike_destination] = spike_origin;
    end

    //invert clock every 4 seconds
    always
        #4 CLK = ~CLK;

    //timestep is 4 clockcycles
    always @(posedge CLK) begin

        if(CLK_count==3) begin
            CLK_count=0;
            clear = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==1) begin
            clear = 1'b0;
        end
    end


endmodule
