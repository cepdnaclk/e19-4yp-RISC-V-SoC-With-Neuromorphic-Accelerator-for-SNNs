module network_interface_scaled (
        input wire spike0,
    input wire spike1,    input wire spike2,    input wire spike3,    input wire spike4,    input wire spike5,    input wire spike6,    input wire spike7,    input wire spike8,    input wire spike9,    input wire spike10,    input wire spike11,    input wire spike12,    input wire spike13,    input wire spike14,    input wire spike15,    input wire spike16,    input wire spike17,    input wire spike18,    input wire spike19,    input wire spike20,    input wire spike21,    input wire spike22,    input wire spike23,    input wire spike24,    input wire spike25,    input wire spike26,    input wire spike27,    input wire spike28,    input wire spike29,    input wire spike30,    input wire spike31,    input wire spike32,    input wire spike33,    input wire spike34,    input wire spike35,    input wire spike36,    input wire spike37,    input wire spike38,    input wire spike39,    input wire spike40,    input wire spike41,    input wire spike42,    input wire spike43,    input wire spike44,    input wire spike45,    input wire spike46,    input wire spike47,    input wire spike48,    input wire spike49,    input wire spike50,    input wire spike51,    input wire spike52,    input wire spike53,    input wire spike54,    input wire spike55,    input wire spike56,    input wire spike57,    input wire spike58,    input wire spike59,    input wire spike60,    input wire spike61,    input wire spike62,    input wire spike63,    input wire spike64,    input wire spike65,    input wire spike66,    input wire spike67,    input wire spike68,    input wire spike69,    input wire spike70,    input wire spike71,    input wire spike72,    input wire spike73,    input wire spike74,    input wire spike75,    input wire spike76,    input wire spike77,    input wire spike78,    input wire spike79,    input wire spike80,    input wire spike81,    input wire spike82,    input wire spike83,    input wire spike84,    input wire spike85,    input wire spike86,    input wire spike87,    input wire spike88,    input wire spike89,    input wire spike90,    input wire spike91,    input wire spike92,    input wire spike93,    input wire spike94,    input wire spike95,    input wire spike96,    input wire spike97,    input wire spike98,    input wire spike99,    input wire spike100,
    input wire spike101,    input wire spike102,    input wire spike103,    input wire spike104,    input wire spike105,    input wire spike106,    input wire spike107,    input wire spike108,    input wire spike109,    input wire spike110,    input wire spike111,    input wire spike112,    input wire spike113,    input wire spike114,    input wire spike115,    input wire spike116,    input wire spike117,    input wire spike118,    input wire spike119,    input wire spike120,    input wire spike121,    input wire spike122,    input wire spike123,    input wire spike124,    input wire spike125,    input wire spike126,    input wire spike127,    input wire spike128,    input wire spike129,    input wire spike130,    input wire spike131,    input wire spike132,    input wire spike133,    input wire spike134,    input wire spike135,    input wire spike136,    input wire spike137,    input wire spike138,    input wire spike139,    input wire spike140,    input wire spike141,    input wire spike142,    input wire spike143,    input wire spike144,    input wire spike145,    input wire spike146,    input wire spike147,    input wire spike148,    input wire spike149,    input wire spike150,    input wire spike151,    input wire spike152,    input wire spike153,    input wire spike154,    input wire spike155,    input wire spike156,    input wire spike157,    input wire spike158,    input wire spike159,    input wire spike160,    input wire spike161,    input wire spike162,    input wire spike163,    input wire spike164,    input wire spike165,    input wire spike166,    input wire spike167,    input wire spike168,    input wire spike169,    input wire spike170,    input wire spike171,    input wire spike172,    input wire spike173,    input wire spike174,    input wire spike175,    input wire spike176,    input wire spike177,    input wire spike178,    input wire spike179,    input wire spike180,    input wire spike181,    input wire spike182,    input wire spike183,    input wire spike184,    input wire spike185,    input wire spike186,    input wire spike187,    input wire spike188,    input wire spike189,    input wire spike190,    input wire spike191,    input wire spike192,    input wire spike193,    input wire spike194,    input wire spike195,    input wire spike196,    input wire spike197,    input wire spike198,    input wire spike199,    input wire spike200,
    input wire spike201,    input wire spike202,    input wire spike203,    input wire spike204,    input wire spike205,    input wire spike206,    input wire spike207,    input wire spike208,    input wire spike209,    input wire spike210,    input wire spike211,    input wire spike212,    input wire spike213,    input wire spike214,    input wire spike215,    input wire spike216,    input wire spike217,    input wire spike218,    input wire spike219,    input wire spike220,    input wire spike221,    input wire spike222,    input wire spike223,    input wire spike224,    input wire spike225,    input wire spike226,    input wire spike227,    input wire spike228,    input wire spike229,    input wire spike230,    input wire spike231,    input wire spike232,    input wire spike233,    input wire spike234,    input wire spike235,    input wire spike236,    input wire spike237,    input wire spike238,    input wire spike239,    input wire spike240,    input wire spike241,    input wire spike242,    input wire spike243,    input wire spike244,    input wire spike245,    input wire spike246,    input wire spike247,    input wire spike248,    input wire spike249,    input wire spike250,    input wire spike251,    input wire spike252,    input wire spike253,    input wire spike254,    input wire spike255,    input wire spike256,    input wire spike257,    input wire spike258,    input wire spike259,    input wire spike260,    input wire spike261,    input wire spike262,    input wire spike263,    input wire spike264,    input wire spike265,    input wire spike266,    input wire spike267,    input wire spike268,    input wire spike269,    input wire spike270,    input wire spike271,    input wire spike272,    input wire spike273,    input wire spike274,    input wire spike275,    input wire spike276,    input wire spike277,    input wire spike278,    input wire spike279,    input wire spike280,    input wire spike281,    input wire spike282,    input wire spike283,    input wire spike284,    input wire spike285,    input wire spike286,    input wire spike287,    input wire spike288,    input wire spike289,    input wire spike290,    input wire spike291,    input wire spike292,    input wire spike293,    input wire spike294,    input wire spike295,    input wire spike296,    input wire spike297,    input wire spike298,    input wire spike299,    input wire spike300,
    input wire spike301,    input wire spike302,    input wire spike303,    input wire spike304,    input wire spike305,    input wire spike306,    input wire spike307,    input wire spike308,    input wire spike309,    input wire spike310,    input wire spike311,    input wire spike312,    input wire spike313,    input wire spike314,    input wire spike315,    input wire spike316,    input wire spike317,    input wire spike318,    input wire spike319,    input wire spike320,    input wire spike321,    input wire spike322,    input wire spike323,    input wire spike324,    input wire spike325,    input wire spike326,    input wire spike327,    input wire spike328,    input wire spike329,    input wire spike330,    input wire spike331,    input wire spike332,    input wire spike333,    input wire spike334,    input wire spike335,    input wire spike336,    input wire spike337,    input wire spike338,    input wire spike339,    input wire spike340,    input wire spike341,    input wire spike342,    input wire spike343,    input wire spike344,    input wire spike345,    input wire spike346,    input wire spike347,    input wire spike348,    input wire spike349,    input wire spike350,    input wire spike351,    input wire spike352,    input wire spike353,    input wire spike354,    input wire spike355,    input wire spike356,    input wire spike357,    input wire spike358,    input wire spike359,    input wire spike360,    input wire spike361,    input wire spike362,    input wire spike363,    input wire spike364,    input wire spike365,    input wire spike366,    input wire spike367,    input wire spike368,    input wire spike369,    input wire spike370,    input wire spike371,    input wire spike372,    input wire spike373,    input wire spike374,    input wire spike375,    input wire spike376,    input wire spike377,    input wire spike378,    input wire spike379,    input wire spike380,    input wire spike381,    input wire spike382,    input wire spike383,    input wire spike384,    input wire spike385,    input wire spike386,    input wire spike387,    input wire spike388,    input wire spike389,    input wire spike390,    input wire spike391,    input wire spike392,    input wire spike393,    input wire spike394,    input wire spike395,    input wire spike396,    input wire spike397,    input wire spike398,    input wire spike399,    input wire spike400,
    input wire spike401,    input wire spike402,    input wire spike403,    input wire spike404,    input wire spike405,    input wire spike406,    input wire spike407,    input wire spike408,    input wire spike409,    input wire spike410,    input wire spike411,    input wire spike412,    input wire spike413,    input wire spike414,    input wire spike415,    input wire spike416,    input wire spike417,    input wire spike418,    input wire spike419,    input wire spike420,    input wire spike421,    input wire spike422,    input wire spike423,    input wire spike424,    input wire spike425,    input wire spike426,    input wire spike427,    input wire spike428,    input wire spike429,    input wire spike430,    input wire spike431,    input wire spike432,    input wire spike433,    input wire spike434,    input wire spike435,    input wire spike436,    input wire spike437,    input wire spike438,    input wire spike439,    input wire spike440,    input wire spike441,    input wire spike442,    input wire spike443,    input wire spike444,    input wire spike445,    input wire spike446,    input wire spike447,    input wire spike448,    input wire spike449,    input wire spike450,    input wire spike451,    input wire spike452,    input wire spike453,    input wire spike454,    input wire spike455,    input wire spike456,    input wire spike457,    input wire spike458,    input wire spike459,    input wire spike460,    input wire spike461,    input wire spike462,    input wire spike463,    input wire spike464,    input wire spike465,    input wire spike466,    input wire spike467,    input wire spike468,    input wire spike469,    input wire spike470,    input wire spike471,    input wire spike472,    input wire spike473,    input wire spike474,    input wire spike475,    input wire spike476,    input wire spike477,    input wire spike478,    input wire spike479,    input wire spike480,    input wire spike481,    input wire spike482,    input wire spike483,    input wire spike484,    input wire spike485,    input wire spike486,    input wire spike487,    input wire spike488,    input wire spike489,    input wire spike490,    input wire spike491,    input wire spike492,    input wire spike493,    input wire spike494,    input wire spike495,    input wire spike496,    input wire spike497,    input wire spike498,    input wire spike499,    input wire spike500,
    input wire spike501,    input wire spike502,    input wire spike503,    input wire spike504,    input wire spike505,    input wire spike506,    input wire spike507,    input wire spike508,    input wire spike509,    input wire spike510,    input wire spike511,    input wire spike512,    input wire spike513,    input wire spike514,    input wire spike515,    input wire spike516,    input wire spike517,    input wire spike518,    input wire spike519,    input wire spike520,    input wire spike521,    input wire spike522,    input wire spike523,    input wire spike524,    input wire spike525,    input wire spike526,    input wire spike527,    input wire spike528,    input wire spike529,    input wire spike530,    input wire spike531,    input wire spike532,    input wire spike533,    input wire spike534,    input wire spike535,    input wire spike536,    input wire spike537,    input wire spike538,    input wire spike539,    input wire spike540,    input wire spike541,    input wire spike542,    input wire spike543,    input wire spike544,    input wire spike545,    input wire spike546,    input wire spike547,    input wire spike548,    input wire spike549,    input wire spike550,    input wire spike551,    input wire spike552,    input wire spike553,    input wire spike554,    input wire spike555,    input wire spike556,    input wire spike557,    input wire spike558,    input wire spike559,    input wire spike560,    input wire spike561,    input wire spike562,    input wire spike563,    input wire spike564,    input wire spike565,    input wire spike566,    input wire spike567,    input wire spike568,    input wire spike569,    input wire spike570,    input wire spike571,    input wire spike572,    input wire spike573,    input wire spike574,    input wire spike575,    input wire spike576,    input wire spike577,    input wire spike578,    input wire spike579,    input wire spike580,    input wire spike581,    input wire spike582,    input wire spike583,    input wire spike584,    input wire spike585,    input wire spike586,    input wire spike587,    input wire spike588,    input wire spike589,    input wire spike590,    input wire spike591,    input wire spike592,    input wire spike593,    input wire spike594,    input wire spike595,    input wire spike596,    input wire spike597,    input wire spike598,    input wire spike599,    input wire spike600,
    input wire spike601,    input wire spike602,    input wire spike603,    input wire spike604,    input wire spike605,    input wire spike606,    input wire spike607,    input wire spike608,    input wire spike609,    input wire spike610,    input wire spike611,    input wire spike612,    input wire spike613,    input wire spike614,    input wire spike615,    input wire spike616,    input wire spike617,    input wire spike618,    input wire spike619,    input wire spike620,    input wire spike621,    input wire spike622,    input wire spike623,    input wire spike624,    input wire spike625,    input wire spike626,    input wire spike627,    input wire spike628,    input wire spike629,    input wire spike630,    input wire spike631,    input wire spike632,    input wire spike633,    input wire spike634,    input wire spike635,    input wire spike636,    input wire spike637,    input wire spike638,    input wire spike639,    input wire spike640,    input wire spike641,    input wire spike642,    input wire spike643,    input wire spike644,    input wire spike645,    input wire spike646,    input wire spike647,    input wire spike648,    input wire spike649,    input wire spike650,    input wire spike651,    input wire spike652,    input wire spike653,    input wire spike654,    input wire spike655,    input wire spike656,    input wire spike657,    input wire spike658,    input wire spike659,    input wire spike660,    input wire spike661,    input wire spike662,    input wire spike663,    input wire spike664,    input wire spike665,    input wire spike666,    input wire spike667,    input wire spike668,    input wire spike669,    input wire spike670,    input wire spike671,    input wire spike672,    input wire spike673,    input wire spike674,    input wire spike675,    input wire spike676,    input wire spike677,    input wire spike678,    input wire spike679,    input wire spike680,    input wire spike681,    input wire spike682,    input wire spike683,    input wire spike684,    input wire spike685,    input wire spike686,    input wire spike687,    input wire spike688,    input wire spike689,    input wire spike690,    input wire spike691,    input wire spike692,    input wire spike693,    input wire spike694,    input wire spike695,    input wire spike696,    input wire spike697,    input wire spike698,    input wire spike699,    input wire spike700,
    input wire spike701,    input wire spike702,    input wire spike703,    input wire spike704,    input wire spike705,    input wire spike706,    input wire spike707,    input wire spike708,    input wire spike709,    input wire spike710,    input wire spike711,    input wire spike712,    input wire spike713,    input wire spike714,    input wire spike715,    input wire spike716,    input wire spike717,    input wire spike718,    input wire spike719,    input wire spike720,    input wire spike721,    input wire spike722,    input wire spike723,    input wire spike724,    input wire spike725,    input wire spike726,    input wire spike727,    input wire spike728,    input wire spike729,    input wire spike730,    input wire spike731,    input wire spike732,    input wire spike733,    input wire spike734,    input wire spike735,    input wire spike736,    input wire spike737,    input wire spike738,    input wire spike739,    input wire spike740,    input wire spike741,    input wire spike742,    input wire spike743,    input wire spike744,    input wire spike745,    input wire spike746,    input wire spike747,    input wire spike748,    input wire spike749,    input wire spike750,    input wire spike751,    input wire spike752,    input wire spike753,    input wire spike754,    input wire spike755,    input wire spike756,    input wire spike757,    input wire spike758,    input wire spike759,    input wire spike760,    input wire spike761,    input wire spike762,    input wire spike763,    input wire spike764,    input wire spike765,    input wire spike766,    input wire spike767,    input wire spike768,    input wire spike769,    input wire spike770,    input wire spike771,    input wire spike772,    input wire spike773,    input wire spike774,    input wire spike775,    input wire spike776,    input wire spike777,    input wire spike778,    input wire spike779,    input wire spike780,    input wire spike781,    input wire spike782,    input wire spike783,    input wire spike784,    input wire spike785,    input wire spike786,    input wire spike787,    input wire spike788,    input wire spike789,    input wire spike790,    input wire spike791,    input wire spike792,    input wire spike793,    input wire spike794,    input wire spike795,    input wire spike796,    input wire spike797,    input wire spike798,    input wire spike799,    input wire spike800,
    input wire spike801,    input wire spike802,    input wire spike803,    input wire spike804,    input wire spike805,    input wire spike806,    input wire spike807,    input wire spike808,    input wire spike809,    input wire spike810,    input wire spike811,    input wire spike812,    input wire spike813,    input wire spike814,    input wire spike815,    input wire spike816,    input wire spike817,    input wire spike818,    input wire spike819,    input wire spike820,    input wire spike821,    input wire spike822,    input wire spike823,    input wire spike824,    input wire spike825,    input wire spike826,    input wire spike827,    input wire spike828,    input wire spike829,    input wire spike830,    input wire spike831,    input wire spike832,    input wire spike833,    input wire spike834,    input wire spike835,    input wire spike836,    input wire spike837,    input wire spike838,    input wire spike839,    input wire spike840,    input wire spike841,    input wire spike842,    input wire spike843,    input wire spike844,    input wire spike845,    input wire spike846,    input wire spike847,    input wire spike848,    input wire spike849,    input wire spike850,    input wire spike851,    input wire spike852,    input wire spike853,    input wire spike854,    input wire spike855,    input wire spike856,    input wire spike857,    input wire spike858,    input wire spike859,    input wire spike860,    input wire spike861,    input wire spike862,    input wire spike863,    input wire spike864,    input wire spike865,    input wire spike866,    input wire spike867,    input wire spike868,    input wire spike869,    input wire spike870,    input wire spike871,    input wire spike872,    input wire spike873,    input wire spike874,    input wire spike875,    input wire spike876,    input wire spike877,    input wire spike878,    input wire spike879,    input wire spike880,    input wire spike881,    input wire spike882,    input wire spike883,    input wire spike884,    input wire spike885,    input wire spike886,    input wire spike887,    input wire spike888,    input wire spike889,    input wire spike890,    input wire spike891,    input wire spike892,    input wire spike893,    input wire spike894,    input wire spike895,    input wire spike896,    input wire spike897,    input wire spike898,    input wire spike899,    input wire spike900,
    input wire spike901,    input wire spike902,    input wire spike903,    input wire spike904,    input wire spike905,    input wire spike906,    input wire spike907,    input wire spike908,    input wire spike909,    input wire spike910,    input wire spike911,    input wire spike912,    input wire spike913,    input wire spike914,    input wire spike915,    input wire spike916,    input wire spike917,    input wire spike918,    input wire spike919,    input wire spike920,    input wire spike921,    input wire spike922,    input wire spike923,    input wire spike924,    input wire spike925,    input wire spike926,    input wire spike927,    input wire spike928,    input wire spike929,    input wire spike930,    input wire spike931,    input wire spike932,    input wire spike933,    input wire spike934,    input wire spike935,    input wire spike936,    input wire spike937,    input wire spike938,    input wire spike939,    input wire spike940,    input wire spike941,    input wire spike942,    input wire spike943,    input wire spike944,    input wire spike945,    input wire spike946,    input wire spike947,    input wire spike948,    input wire spike949,    input wire spike950,    input wire spike951,    input wire spike952,    input wire spike953,    input wire spike954,    input wire spike955,    input wire spike956,    input wire spike957,    input wire spike958,    input wire spike959,    input wire spike960,    input wire spike961,    input wire spike962,    input wire spike963,    input wire spike964,    input wire spike965,    input wire spike966,    input wire spike967,    input wire spike968,    input wire spike969,    input wire spike970,    input wire spike971,    input wire spike972,    input wire spike973,    input wire spike974,    input wire spike975,    input wire spike976,    input wire spike977,    input wire spike978,    input wire spike979,    input wire spike980,    input wire spike981,    input wire spike982,    input wire spike983,    input wire spike984,    input wire spike985,    input wire spike986,    input wire spike987,    input wire spike988,    input wire spike989,    input wire spike990,    input wire spike991,    input wire spike992,    input wire spike993,    input wire spike994,    input wire spike995,    input wire spike996,    input wire spike997,    input wire spike998,    input wire spike999,    input wire spike1000,
    input wire spike1001,    input wire spike1002,    input wire spike1003,    input wire spike1004,    input wire spike1005,    input wire spike1006,    input wire spike1007,    input wire spike1008,    input wire spike1009,    input wire spike1010,    input wire spike1011,    input wire spike1012,    input wire spike1013,    input wire spike1014,    input wire spike1015,    input wire spike1016,    input wire spike1017,    input wire spike1018,    input wire spike1019,    input wire spike1020,    input wire spike1021,    input wire spike1022,    input wire spike1023,
    output wire output
);

    parameter number_of_neurons= 1024;
    reg spike_register[0:number_of_neurons-1];
    always @(clear, lock1, spike0, spike1, spike2, spike3, spike4, spike5, spike6, spike7, spike8, spike9, spike10, spike11, spike12, spike13, spike14, spike15, spike16, spike17, spike18, spike19, spike20, spike21, spike22, spike23, spike24, spike25, spike26, spike27, spike28, spike29, spike30, spike31, spike32, spike33, spike34, spike35, spike36, spike37, spike38, spike39, spike40, spike41, spike42, spike43, spike44, spike45, spike46, spike47, spike48, spike49) begin
        spike_register[0] = spike0;

        spike_register[1] = spike1;        spike_register[2] = spike2;        spike_register[3] = spike3;        spike_register[4] = spike4;        spike_register[5] = spike5;        spike_register[6] = spike6;        spike_register[7] = spike7;        spike_register[8] = spike8;        spike_register[9] = spike9;        spike_register[10] = spike10;        spike_register[11] = spike11;        spike_register[12] = spike12;        spike_register[13] = spike13;        spike_register[14] = spike14;        spike_register[15] = spike15;        spike_register[16] = spike16;        spike_register[17] = spike17;        spike_register[18] = spike18;        spike_register[19] = spike19;        spike_register[20] = spike20;        spike_register[21] = spike21;        spike_register[22] = spike22;        spike_register[23] = spike23;        spike_register[24] = spike24;        spike_register[25] = spike25;        spike_register[26] = spike26;        spike_register[27] = spike27;        spike_register[28] = spike28;        spike_register[29] = spike29;        spike_register[30] = spike30;        spike_register[31] = spike31;        spike_register[32] = spike32;        spike_register[33] = spike33;        spike_register[34] = spike34;        spike_register[35] = spike35;        spike_register[36] = spike36;        spike_register[37] = spike37;        spike_register[38] = spike38;        spike_register[39] = spike39;        spike_register[40] = spike40;        spike_register[41] = spike41;        spike_register[42] = spike42;        spike_register[43] = spike43;        spike_register[44] = spike44;        spike_register[45] = spike45;        spike_register[46] = spike46;        spike_register[47] = spike47;        spike_register[48] = spike48;        spike_register[49] = spike49;
        #0.5
        if(clear == 1'b0) begin
            for(i1 = 0; i1 <=49; i1= i1+1) begin
                if(spike_register[i1] == 1 && lock1 == 0) begin
                    lock1 = 1;
                    for(j1 = connection_pointer[i1]; j1 < connection_pointer[i1+1]; j1= j1+1) begin
                        packet1 = #0.1 {neuron_addresses[i1], downstream_connections[j1]};
                    end
                    spike_register[i1] = 0;
                    lock1 = 0;
                end
            end
        end

    end
    always @(clear, lock2, spike50, spike51, spike52, spike53, spike54, spike55, spike56, spike57, spike58, spike59, spike60, spike61, spike62, spike63, spike64, spike65, spike66, spike67, spike68, spike69, spike70, spike71, spike72, spike73, spike74, spike75, spike76, spike77, spike78, spike79, spike80, spike81, spike82, spike83, spike84, spike85, spike86, spike87, spike88, spike89, spike90, spike91, spike92, spike93, spike94, spike95, spike96, spike97, spike98, spike99) begin
        spike_register[50] = spike50;        spike_register[51] = spike51;        spike_register[52] = spike52;        spike_register[53] = spike53;        spike_register[54] = spike54;        spike_register[55] = spike55;        spike_register[56] = spike56;        spike_register[57] = spike57;        spike_register[58] = spike58;        spike_register[59] = spike59;        spike_register[60] = spike60;        spike_register[61] = spike61;        spike_register[62] = spike62;        spike_register[63] = spike63;        spike_register[64] = spike64;        spike_register[65] = spike65;        spike_register[66] = spike66;        spike_register[67] = spike67;        spike_register[68] = spike68;        spike_register[69] = spike69;        spike_register[70] = spike70;        spike_register[71] = spike71;        spike_register[72] = spike72;        spike_register[73] = spike73;        spike_register[74] = spike74;        spike_register[75] = spike75;        spike_register[76] = spike76;        spike_register[77] = spike77;        spike_register[78] = spike78;        spike_register[79] = spike79;        spike_register[80] = spike80;        spike_register[81] = spike81;        spike_register[82] = spike82;        spike_register[83] = spike83;        spike_register[84] = spike84;        spike_register[85] = spike85;        spike_register[86] = spike86;        spike_register[87] = spike87;        spike_register[88] = spike88;        spike_register[89] = spike89;        spike_register[90] = spike90;        spike_register[91] = spike91;        spike_register[92] = spike92;        spike_register[93] = spike93;        spike_register[94] = spike94;        spike_register[95] = spike95;        spike_register[96] = spike96;        spike_register[97] = spike97;        spike_register[98] = spike98;        spike_register[99] = spike99;
        #0.5
        if(clear == 1'b0) begin
            for(i2 = 50; i2 <=99; i2= i2+1) begin
                if(spike_register[i2] == 1 && lock2 == 0) begin
                    lock2 = 1;
                    for(j2 = connection_pointer[i2]; j2 < connection_pointer[i2+1]; j2= j2+1) begin
                        packet2 = #0.1 {neuron_addresses[i2], downstream_connections[j2]};
                    end
                    spike_register[i2] = 0;
                    lock2 = 0;
                end
            end
        end

    end
    always @(clear, lock3, spike100, spike101, spike102, spike103, spike104, spike105, spike106, spike107, spike108, spike109, spike110, spike111, spike112, spike113, spike114, spike115, spike116, spike117, spike118, spike119, spike120, spike121, spike122, spike123, spike124, spike125, spike126, spike127, spike128, spike129, spike130, spike131, spike132, spike133, spike134, spike135, spike136, spike137, spike138, spike139, spike140, spike141, spike142, spike143, spike144, spike145, spike146, spike147, spike148, spike149) begin
        spike_register[100] = spike100;

        spike_register[101] = spike101;        spike_register[102] = spike102;        spike_register[103] = spike103;        spike_register[104] = spike104;        spike_register[105] = spike105;        spike_register[106] = spike106;        spike_register[107] = spike107;        spike_register[108] = spike108;        spike_register[109] = spike109;        spike_register[110] = spike110;        spike_register[111] = spike111;        spike_register[112] = spike112;        spike_register[113] = spike113;        spike_register[114] = spike114;        spike_register[115] = spike115;        spike_register[116] = spike116;        spike_register[117] = spike117;        spike_register[118] = spike118;        spike_register[119] = spike119;        spike_register[120] = spike120;        spike_register[121] = spike121;        spike_register[122] = spike122;        spike_register[123] = spike123;        spike_register[124] = spike124;        spike_register[125] = spike125;        spike_register[126] = spike126;        spike_register[127] = spike127;        spike_register[128] = spike128;        spike_register[129] = spike129;        spike_register[130] = spike130;        spike_register[131] = spike131;        spike_register[132] = spike132;        spike_register[133] = spike133;        spike_register[134] = spike134;        spike_register[135] = spike135;        spike_register[136] = spike136;        spike_register[137] = spike137;        spike_register[138] = spike138;        spike_register[139] = spike139;        spike_register[140] = spike140;        spike_register[141] = spike141;        spike_register[142] = spike142;        spike_register[143] = spike143;        spike_register[144] = spike144;        spike_register[145] = spike145;        spike_register[146] = spike146;        spike_register[147] = spike147;        spike_register[148] = spike148;        spike_register[149] = spike149;
        #0.5
        if(clear == 1'b0) begin
            for(i3 = 100; i3 <=149; i3= i3+1) begin
                if(spike_register[i3] == 1 && lock3 == 0) begin
                    lock3 = 1;
                    for(j3 = connection_pointer[i3]; j3 < connection_pointer[i3+1]; j3= j3+1) begin
                        packet3 = #0.1 {neuron_addresses[i3], downstream_connections[j3]};
                    end
                    spike_register[i3] = 0;
                    lock3 = 0;
                end
            end
        end

    end
    always @(clear, lock4, spike150, spike151, spike152, spike153, spike154, spike155, spike156, spike157, spike158, spike159, spike160, spike161, spike162, spike163, spike164, spike165, spike166, spike167, spike168, spike169, spike170, spike171, spike172, spike173, spike174, spike175, spike176, spike177, spike178, spike179, spike180, spike181, spike182, spike183, spike184, spike185, spike186, spike187, spike188, spike189, spike190, spike191, spike192, spike193, spike194, spike195, spike196, spike197, spike198, spike199) begin
        spike_register[150] = spike150;        spike_register[151] = spike151;        spike_register[152] = spike152;        spike_register[153] = spike153;        spike_register[154] = spike154;        spike_register[155] = spike155;        spike_register[156] = spike156;        spike_register[157] = spike157;        spike_register[158] = spike158;        spike_register[159] = spike159;        spike_register[160] = spike160;        spike_register[161] = spike161;        spike_register[162] = spike162;        spike_register[163] = spike163;        spike_register[164] = spike164;        spike_register[165] = spike165;        spike_register[166] = spike166;        spike_register[167] = spike167;        spike_register[168] = spike168;        spike_register[169] = spike169;        spike_register[170] = spike170;        spike_register[171] = spike171;        spike_register[172] = spike172;        spike_register[173] = spike173;        spike_register[174] = spike174;        spike_register[175] = spike175;        spike_register[176] = spike176;        spike_register[177] = spike177;        spike_register[178] = spike178;        spike_register[179] = spike179;        spike_register[180] = spike180;        spike_register[181] = spike181;        spike_register[182] = spike182;        spike_register[183] = spike183;        spike_register[184] = spike184;        spike_register[185] = spike185;        spike_register[186] = spike186;        spike_register[187] = spike187;        spike_register[188] = spike188;        spike_register[189] = spike189;        spike_register[190] = spike190;        spike_register[191] = spike191;        spike_register[192] = spike192;        spike_register[193] = spike193;        spike_register[194] = spike194;        spike_register[195] = spike195;        spike_register[196] = spike196;        spike_register[197] = spike197;        spike_register[198] = spike198;        spike_register[199] = spike199;
        #0.5
        if(clear == 1'b0) begin
            for(i4 = 150; i4 <=199; i4= i4+1) begin
                if(spike_register[i4] == 1 && lock4 == 0) begin
                    lock4 = 1;
                    for(j4 = connection_pointer[i4]; j4 < connection_pointer[i4+1]; j4= j4+1) begin
                        packet4 = #0.1 {neuron_addresses[i4], downstream_connections[j4]};
                    end
                    spike_register[i4] = 0;
                    lock4 = 0;
                end
            end
        end

    end
    always @(clear, lock5, spike200, spike201, spike202, spike203, spike204, spike205, spike206, spike207, spike208, spike209, spike210, spike211, spike212, spike213, spike214, spike215, spike216, spike217, spike218, spike219, spike220, spike221, spike222, spike223, spike224, spike225, spike226, spike227, spike228, spike229, spike230, spike231, spike232, spike233, spike234, spike235, spike236, spike237, spike238, spike239, spike240, spike241, spike242, spike243, spike244, spike245, spike246, spike247, spike248, spike249) begin
        spike_register[200] = spike200;

        spike_register[201] = spike201;        spike_register[202] = spike202;        spike_register[203] = spike203;        spike_register[204] = spike204;        spike_register[205] = spike205;        spike_register[206] = spike206;        spike_register[207] = spike207;        spike_register[208] = spike208;        spike_register[209] = spike209;        spike_register[210] = spike210;        spike_register[211] = spike211;        spike_register[212] = spike212;        spike_register[213] = spike213;        spike_register[214] = spike214;        spike_register[215] = spike215;        spike_register[216] = spike216;        spike_register[217] = spike217;        spike_register[218] = spike218;        spike_register[219] = spike219;        spike_register[220] = spike220;        spike_register[221] = spike221;        spike_register[222] = spike222;        spike_register[223] = spike223;        spike_register[224] = spike224;        spike_register[225] = spike225;        spike_register[226] = spike226;        spike_register[227] = spike227;        spike_register[228] = spike228;        spike_register[229] = spike229;        spike_register[230] = spike230;        spike_register[231] = spike231;        spike_register[232] = spike232;        spike_register[233] = spike233;        spike_register[234] = spike234;        spike_register[235] = spike235;        spike_register[236] = spike236;        spike_register[237] = spike237;        spike_register[238] = spike238;        spike_register[239] = spike239;        spike_register[240] = spike240;        spike_register[241] = spike241;        spike_register[242] = spike242;        spike_register[243] = spike243;        spike_register[244] = spike244;        spike_register[245] = spike245;        spike_register[246] = spike246;        spike_register[247] = spike247;        spike_register[248] = spike248;        spike_register[249] = spike249;
        #0.5
        if(clear == 1'b0) begin
            for(i5 = 200; i5 <=249; i5= i5+1) begin
                if(spike_register[i5] == 1 && lock5 == 0) begin
                    lock5 = 1;
                    for(j5 = connection_pointer[i5]; j5 < connection_pointer[i5+1]; j5= j5+1) begin
                        packet5 = #0.1 {neuron_addresses[i5], downstream_connections[j5]};
                    end
                    spike_register[i5] = 0;
                    lock5 = 0;
                end
            end
        end

    end
    always @(clear, lock6, spike250, spike251, spike252, spike253, spike254, spike255, spike256, spike257, spike258, spike259, spike260, spike261, spike262, spike263, spike264, spike265, spike266, spike267, spike268, spike269, spike270, spike271, spike272, spike273, spike274, spike275, spike276, spike277, spike278, spike279, spike280, spike281, spike282, spike283, spike284, spike285, spike286, spike287, spike288, spike289, spike290, spike291, spike292, spike293, spike294, spike295, spike296, spike297, spike298, spike299) begin
        spike_register[250] = spike250;        spike_register[251] = spike251;        spike_register[252] = spike252;        spike_register[253] = spike253;        spike_register[254] = spike254;        spike_register[255] = spike255;        spike_register[256] = spike256;        spike_register[257] = spike257;        spike_register[258] = spike258;        spike_register[259] = spike259;        spike_register[260] = spike260;        spike_register[261] = spike261;        spike_register[262] = spike262;        spike_register[263] = spike263;        spike_register[264] = spike264;        spike_register[265] = spike265;        spike_register[266] = spike266;        spike_register[267] = spike267;        spike_register[268] = spike268;        spike_register[269] = spike269;        spike_register[270] = spike270;        spike_register[271] = spike271;        spike_register[272] = spike272;        spike_register[273] = spike273;        spike_register[274] = spike274;        spike_register[275] = spike275;        spike_register[276] = spike276;        spike_register[277] = spike277;        spike_register[278] = spike278;        spike_register[279] = spike279;        spike_register[280] = spike280;        spike_register[281] = spike281;        spike_register[282] = spike282;        spike_register[283] = spike283;        spike_register[284] = spike284;        spike_register[285] = spike285;        spike_register[286] = spike286;        spike_register[287] = spike287;        spike_register[288] = spike288;        spike_register[289] = spike289;        spike_register[290] = spike290;        spike_register[291] = spike291;        spike_register[292] = spike292;        spike_register[293] = spike293;        spike_register[294] = spike294;        spike_register[295] = spike295;        spike_register[296] = spike296;        spike_register[297] = spike297;        spike_register[298] = spike298;        spike_register[299] = spike299;
        #0.5
        if(clear == 1'b0) begin
            for(i6 = 250; i6 <=299; i6= i6+1) begin
                if(spike_register[i6] == 1 && lock6 == 0) begin
                    lock6 = 1;
                    for(j6 = connection_pointer[i6]; j6 < connection_pointer[i6+1]; j6= j6+1) begin
                        packet6 = #0.1 {neuron_addresses[i6], downstream_connections[j6]};
                    end
                    spike_register[i6] = 0;
                    lock6 = 0;
                end
            end
        end

    end
    always @(clear, lock7, spike300, spike301, spike302, spike303, spike304, spike305, spike306, spike307, spike308, spike309, spike310, spike311, spike312, spike313, spike314, spike315, spike316, spike317, spike318, spike319, spike320, spike321, spike322, spike323, spike324, spike325, spike326, spike327, spike328, spike329, spike330, spike331, spike332, spike333, spike334, spike335, spike336, spike337, spike338, spike339, spike340, spike341, spike342, spike343, spike344, spike345, spike346, spike347, spike348, spike349) begin
        spike_register[300] = spike300;

        spike_register[301] = spike301;        spike_register[302] = spike302;        spike_register[303] = spike303;        spike_register[304] = spike304;        spike_register[305] = spike305;        spike_register[306] = spike306;        spike_register[307] = spike307;        spike_register[308] = spike308;        spike_register[309] = spike309;        spike_register[310] = spike310;        spike_register[311] = spike311;        spike_register[312] = spike312;        spike_register[313] = spike313;        spike_register[314] = spike314;        spike_register[315] = spike315;        spike_register[316] = spike316;        spike_register[317] = spike317;        spike_register[318] = spike318;        spike_register[319] = spike319;        spike_register[320] = spike320;        spike_register[321] = spike321;        spike_register[322] = spike322;        spike_register[323] = spike323;        spike_register[324] = spike324;        spike_register[325] = spike325;        spike_register[326] = spike326;        spike_register[327] = spike327;        spike_register[328] = spike328;        spike_register[329] = spike329;        spike_register[330] = spike330;        spike_register[331] = spike331;        spike_register[332] = spike332;        spike_register[333] = spike333;        spike_register[334] = spike334;        spike_register[335] = spike335;        spike_register[336] = spike336;        spike_register[337] = spike337;        spike_register[338] = spike338;        spike_register[339] = spike339;        spike_register[340] = spike340;        spike_register[341] = spike341;        spike_register[342] = spike342;        spike_register[343] = spike343;        spike_register[344] = spike344;        spike_register[345] = spike345;        spike_register[346] = spike346;        spike_register[347] = spike347;        spike_register[348] = spike348;        spike_register[349] = spike349;
        #0.5
        if(clear == 1'b0) begin
            for(i7 = 300; i7 <=349; i7= i7+1) begin
                if(spike_register[i7] == 1 && lock7 == 0) begin
                    lock7 = 1;
                    for(j7 = connection_pointer[i7]; j7 < connection_pointer[i7+1]; j7= j7+1) begin
                        packet7 = #0.1 {neuron_addresses[i7], downstream_connections[j7]};
                    end
                    spike_register[i7] = 0;
                    lock7 = 0;
                end
            end
        end

    end
    always @(clear, lock8, spike350, spike351, spike352, spike353, spike354, spike355, spike356, spike357, spike358, spike359, spike360, spike361, spike362, spike363, spike364, spike365, spike366, spike367, spike368, spike369, spike370, spike371, spike372, spike373, spike374, spike375, spike376, spike377, spike378, spike379, spike380, spike381, spike382, spike383, spike384, spike385, spike386, spike387, spike388, spike389, spike390, spike391, spike392, spike393, spike394, spike395, spike396, spike397, spike398, spike399) begin
        spike_register[350] = spike350;        spike_register[351] = spike351;        spike_register[352] = spike352;        spike_register[353] = spike353;        spike_register[354] = spike354;        spike_register[355] = spike355;        spike_register[356] = spike356;        spike_register[357] = spike357;        spike_register[358] = spike358;        spike_register[359] = spike359;        spike_register[360] = spike360;        spike_register[361] = spike361;        spike_register[362] = spike362;        spike_register[363] = spike363;        spike_register[364] = spike364;        spike_register[365] = spike365;        spike_register[366] = spike366;        spike_register[367] = spike367;        spike_register[368] = spike368;        spike_register[369] = spike369;        spike_register[370] = spike370;        spike_register[371] = spike371;        spike_register[372] = spike372;        spike_register[373] = spike373;        spike_register[374] = spike374;        spike_register[375] = spike375;        spike_register[376] = spike376;        spike_register[377] = spike377;        spike_register[378] = spike378;        spike_register[379] = spike379;        spike_register[380] = spike380;        spike_register[381] = spike381;        spike_register[382] = spike382;        spike_register[383] = spike383;        spike_register[384] = spike384;        spike_register[385] = spike385;        spike_register[386] = spike386;        spike_register[387] = spike387;        spike_register[388] = spike388;        spike_register[389] = spike389;        spike_register[390] = spike390;        spike_register[391] = spike391;        spike_register[392] = spike392;        spike_register[393] = spike393;        spike_register[394] = spike394;        spike_register[395] = spike395;        spike_register[396] = spike396;        spike_register[397] = spike397;        spike_register[398] = spike398;        spike_register[399] = spike399;
        #0.5
        if(clear == 1'b0) begin
            for(i8 = 350; i8 <=399; i8= i8+1) begin
                if(spike_register[i8] == 1 && lock8 == 0) begin
                    lock8 = 1;
                    for(j8 = connection_pointer[i8]; j8 < connection_pointer[i8+1]; j8= j8+1) begin
                        packet8 = #0.1 {neuron_addresses[i8], downstream_connections[j8]};
                    end
                    spike_register[i8] = 0;
                    lock8 = 0;
                end
            end
        end

    end
    always @(clear, lock9, spike400, spike401, spike402, spike403, spike404, spike405, spike406, spike407, spike408, spike409, spike410, spike411, spike412, spike413, spike414, spike415, spike416, spike417, spike418, spike419, spike420, spike421, spike422, spike423, spike424, spike425, spike426, spike427, spike428, spike429, spike430, spike431, spike432, spike433, spike434, spike435, spike436, spike437, spike438, spike439, spike440, spike441, spike442, spike443, spike444, spike445, spike446, spike447, spike448, spike449) begin
        spike_register[400] = spike400;

        spike_register[401] = spike401;        spike_register[402] = spike402;        spike_register[403] = spike403;        spike_register[404] = spike404;        spike_register[405] = spike405;        spike_register[406] = spike406;        spike_register[407] = spike407;        spike_register[408] = spike408;        spike_register[409] = spike409;        spike_register[410] = spike410;        spike_register[411] = spike411;        spike_register[412] = spike412;        spike_register[413] = spike413;        spike_register[414] = spike414;        spike_register[415] = spike415;        spike_register[416] = spike416;        spike_register[417] = spike417;        spike_register[418] = spike418;        spike_register[419] = spike419;        spike_register[420] = spike420;        spike_register[421] = spike421;        spike_register[422] = spike422;        spike_register[423] = spike423;        spike_register[424] = spike424;        spike_register[425] = spike425;        spike_register[426] = spike426;        spike_register[427] = spike427;        spike_register[428] = spike428;        spike_register[429] = spike429;        spike_register[430] = spike430;        spike_register[431] = spike431;        spike_register[432] = spike432;        spike_register[433] = spike433;        spike_register[434] = spike434;        spike_register[435] = spike435;        spike_register[436] = spike436;        spike_register[437] = spike437;        spike_register[438] = spike438;        spike_register[439] = spike439;        spike_register[440] = spike440;        spike_register[441] = spike441;        spike_register[442] = spike442;        spike_register[443] = spike443;        spike_register[444] = spike444;        spike_register[445] = spike445;        spike_register[446] = spike446;        spike_register[447] = spike447;        spike_register[448] = spike448;        spike_register[449] = spike449;
        #0.5
        if(clear == 1'b0) begin
            for(i9 = 400; i9 <=449; i9= i9+1) begin
                if(spike_register[i9] == 1 && lock9 == 0) begin
                    lock9 = 1;
                    for(j9 = connection_pointer[i9]; j9 < connection_pointer[i9+1]; j9= j9+1) begin
                        packet9 = #0.1 {neuron_addresses[i9], downstream_connections[j9]};
                    end
                    spike_register[i9] = 0;
                    lock9 = 0;
                end
            end
        end

    end
    always @(clear, lock10, spike450, spike451, spike452, spike453, spike454, spike455, spike456, spike457, spike458, spike459, spike460, spike461, spike462, spike463, spike464, spike465, spike466, spike467, spike468, spike469, spike470, spike471, spike472, spike473, spike474, spike475, spike476, spike477, spike478, spike479, spike480, spike481, spike482, spike483, spike484, spike485, spike486, spike487, spike488, spike489, spike490, spike491, spike492, spike493, spike494, spike495, spike496, spike497, spike498, spike499) begin
        spike_register[450] = spike450;        spike_register[451] = spike451;        spike_register[452] = spike452;        spike_register[453] = spike453;        spike_register[454] = spike454;        spike_register[455] = spike455;        spike_register[456] = spike456;        spike_register[457] = spike457;        spike_register[458] = spike458;        spike_register[459] = spike459;        spike_register[460] = spike460;        spike_register[461] = spike461;        spike_register[462] = spike462;        spike_register[463] = spike463;        spike_register[464] = spike464;        spike_register[465] = spike465;        spike_register[466] = spike466;        spike_register[467] = spike467;        spike_register[468] = spike468;        spike_register[469] = spike469;        spike_register[470] = spike470;        spike_register[471] = spike471;        spike_register[472] = spike472;        spike_register[473] = spike473;        spike_register[474] = spike474;        spike_register[475] = spike475;        spike_register[476] = spike476;        spike_register[477] = spike477;        spike_register[478] = spike478;        spike_register[479] = spike479;        spike_register[480] = spike480;        spike_register[481] = spike481;        spike_register[482] = spike482;        spike_register[483] = spike483;        spike_register[484] = spike484;        spike_register[485] = spike485;        spike_register[486] = spike486;        spike_register[487] = spike487;        spike_register[488] = spike488;        spike_register[489] = spike489;        spike_register[490] = spike490;        spike_register[491] = spike491;        spike_register[492] = spike492;        spike_register[493] = spike493;        spike_register[494] = spike494;        spike_register[495] = spike495;        spike_register[496] = spike496;        spike_register[497] = spike497;        spike_register[498] = spike498;        spike_register[499] = spike499;
        #0.5
        if(clear == 1'b0) begin
            for(i10 = 450; i10 <=499; i10= i10+1) begin
                if(spike_register[i10] == 1 && lock10 == 0) begin
                    lock10 = 1;
                    for(j10 = connection_pointer[i10]; j10 < connection_pointer[i10+1]; j10= j10+1) begin
                        packet10 = #0.1 {neuron_addresses[i10], downstream_connections[j10]};
                    end
                    spike_register[i10] = 0;
                    lock10 = 0;
                end
            end
        end

    end
    always @(clear, lock11, spike500, spike501, spike502, spike503, spike504, spike505, spike506, spike507, spike508, spike509, spike510, spike511, spike512, spike513, spike514, spike515, spike516, spike517, spike518, spike519, spike520, spike521, spike522, spike523, spike524, spike525, spike526, spike527, spike528, spike529, spike530, spike531, spike532, spike533, spike534, spike535, spike536, spike537, spike538, spike539, spike540, spike541, spike542, spike543, spike544, spike545, spike546, spike547, spike548, spike549) begin
        spike_register[500] = spike500;

        spike_register[501] = spike501;        spike_register[502] = spike502;        spike_register[503] = spike503;        spike_register[504] = spike504;        spike_register[505] = spike505;        spike_register[506] = spike506;        spike_register[507] = spike507;        spike_register[508] = spike508;        spike_register[509] = spike509;        spike_register[510] = spike510;        spike_register[511] = spike511;        spike_register[512] = spike512;        spike_register[513] = spike513;        spike_register[514] = spike514;        spike_register[515] = spike515;        spike_register[516] = spike516;        spike_register[517] = spike517;        spike_register[518] = spike518;        spike_register[519] = spike519;        spike_register[520] = spike520;        spike_register[521] = spike521;        spike_register[522] = spike522;        spike_register[523] = spike523;        spike_register[524] = spike524;        spike_register[525] = spike525;        spike_register[526] = spike526;        spike_register[527] = spike527;        spike_register[528] = spike528;        spike_register[529] = spike529;        spike_register[530] = spike530;        spike_register[531] = spike531;        spike_register[532] = spike532;        spike_register[533] = spike533;        spike_register[534] = spike534;        spike_register[535] = spike535;        spike_register[536] = spike536;        spike_register[537] = spike537;        spike_register[538] = spike538;        spike_register[539] = spike539;        spike_register[540] = spike540;        spike_register[541] = spike541;        spike_register[542] = spike542;        spike_register[543] = spike543;        spike_register[544] = spike544;        spike_register[545] = spike545;        spike_register[546] = spike546;        spike_register[547] = spike547;        spike_register[548] = spike548;        spike_register[549] = spike549;
        #0.5
        if(clear == 1'b0) begin
            for(i11 = 500; i11 <=549; i11= i11+1) begin
                if(spike_register[i11] == 1 && lock11 == 0) begin
                    lock11 = 1;
                    for(j11 = connection_pointer[i11]; j11 < connection_pointer[i11+1]; j11= j11+1) begin
                        packet11 = #0.1 {neuron_addresses[i11], downstream_connections[j11]};
                    end
                    spike_register[i11] = 0;
                    lock11 = 0;
                end
            end
        end

    end
    always @(clear, lock12, spike550, spike551, spike552, spike553, spike554, spike555, spike556, spike557, spike558, spike559, spike560, spike561, spike562, spike563, spike564, spike565, spike566, spike567, spike568, spike569, spike570, spike571, spike572, spike573, spike574, spike575, spike576, spike577, spike578, spike579, spike580, spike581, spike582, spike583, spike584, spike585, spike586, spike587, spike588, spike589, spike590, spike591, spike592, spike593, spike594, spike595, spike596, spike597, spike598, spike599) begin
        spike_register[550] = spike550;        spike_register[551] = spike551;        spike_register[552] = spike552;        spike_register[553] = spike553;        spike_register[554] = spike554;        spike_register[555] = spike555;        spike_register[556] = spike556;        spike_register[557] = spike557;        spike_register[558] = spike558;        spike_register[559] = spike559;        spike_register[560] = spike560;        spike_register[561] = spike561;        spike_register[562] = spike562;        spike_register[563] = spike563;        spike_register[564] = spike564;        spike_register[565] = spike565;        spike_register[566] = spike566;        spike_register[567] = spike567;        spike_register[568] = spike568;        spike_register[569] = spike569;        spike_register[570] = spike570;        spike_register[571] = spike571;        spike_register[572] = spike572;        spike_register[573] = spike573;        spike_register[574] = spike574;        spike_register[575] = spike575;        spike_register[576] = spike576;        spike_register[577] = spike577;        spike_register[578] = spike578;        spike_register[579] = spike579;        spike_register[580] = spike580;        spike_register[581] = spike581;        spike_register[582] = spike582;        spike_register[583] = spike583;        spike_register[584] = spike584;        spike_register[585] = spike585;        spike_register[586] = spike586;        spike_register[587] = spike587;        spike_register[588] = spike588;        spike_register[589] = spike589;        spike_register[590] = spike590;        spike_register[591] = spike591;        spike_register[592] = spike592;        spike_register[593] = spike593;        spike_register[594] = spike594;        spike_register[595] = spike595;        spike_register[596] = spike596;        spike_register[597] = spike597;        spike_register[598] = spike598;        spike_register[599] = spike599;
        #0.5
        if(clear == 1'b0) begin
            for(i12 = 550; i12 <=599; i12= i12+1) begin
                if(spike_register[i12] == 1 && lock12 == 0) begin
                    lock12 = 1;
                    for(j12 = connection_pointer[i12]; j12 < connection_pointer[i12+1]; j12= j12+1) begin
                        packet12 = #0.1 {neuron_addresses[i12], downstream_connections[j12]};
                    end
                    spike_register[i12] = 0;
                    lock12 = 0;
                end
            end
        end

    end
    always @(clear, lock13, spike600, spike601, spike602, spike603, spike604, spike605, spike606, spike607, spike608, spike609, spike610, spike611, spike612, spike613, spike614, spike615, spike616, spike617, spike618, spike619, spike620, spike621, spike622, spike623, spike624, spike625, spike626, spike627, spike628, spike629, spike630, spike631, spike632, spike633, spike634, spike635, spike636, spike637, spike638, spike639, spike640, spike641, spike642, spike643, spike644, spike645, spike646, spike647, spike648, spike649) begin
        spike_register[600] = spike600;

        spike_register[601] = spike601;        spike_register[602] = spike602;        spike_register[603] = spike603;        spike_register[604] = spike604;        spike_register[605] = spike605;        spike_register[606] = spike606;        spike_register[607] = spike607;        spike_register[608] = spike608;        spike_register[609] = spike609;        spike_register[610] = spike610;        spike_register[611] = spike611;        spike_register[612] = spike612;        spike_register[613] = spike613;        spike_register[614] = spike614;        spike_register[615] = spike615;        spike_register[616] = spike616;        spike_register[617] = spike617;        spike_register[618] = spike618;        spike_register[619] = spike619;        spike_register[620] = spike620;        spike_register[621] = spike621;        spike_register[622] = spike622;        spike_register[623] = spike623;        spike_register[624] = spike624;        spike_register[625] = spike625;        spike_register[626] = spike626;        spike_register[627] = spike627;        spike_register[628] = spike628;        spike_register[629] = spike629;        spike_register[630] = spike630;        spike_register[631] = spike631;        spike_register[632] = spike632;        spike_register[633] = spike633;        spike_register[634] = spike634;        spike_register[635] = spike635;        spike_register[636] = spike636;        spike_register[637] = spike637;        spike_register[638] = spike638;        spike_register[639] = spike639;        spike_register[640] = spike640;        spike_register[641] = spike641;        spike_register[642] = spike642;        spike_register[643] = spike643;        spike_register[644] = spike644;        spike_register[645] = spike645;        spike_register[646] = spike646;        spike_register[647] = spike647;        spike_register[648] = spike648;        spike_register[649] = spike649;
        #0.5
        if(clear == 1'b0) begin
            for(i13 = 600; i13 <=649; i13= i13+1) begin
                if(spike_register[i13] == 1 && lock13 == 0) begin
                    lock13 = 1;
                    for(j13 = connection_pointer[i13]; j13 < connection_pointer[i13+1]; j13= j13+1) begin
                        packet13 = #0.1 {neuron_addresses[i13], downstream_connections[j13]};
                    end
                    spike_register[i13] = 0;
                    lock13 = 0;
                end
            end
        end

    end
    always @(clear, lock14, spike650, spike651, spike652, spike653, spike654, spike655, spike656, spike657, spike658, spike659, spike660, spike661, spike662, spike663, spike664, spike665, spike666, spike667, spike668, spike669, spike670, spike671, spike672, spike673, spike674, spike675, spike676, spike677, spike678, spike679, spike680, spike681, spike682, spike683, spike684, spike685, spike686, spike687, spike688, spike689, spike690, spike691, spike692, spike693, spike694, spike695, spike696, spike697, spike698, spike699) begin
        spike_register[650] = spike650;        spike_register[651] = spike651;        spike_register[652] = spike652;        spike_register[653] = spike653;        spike_register[654] = spike654;        spike_register[655] = spike655;        spike_register[656] = spike656;        spike_register[657] = spike657;        spike_register[658] = spike658;        spike_register[659] = spike659;        spike_register[660] = spike660;        spike_register[661] = spike661;        spike_register[662] = spike662;        spike_register[663] = spike663;        spike_register[664] = spike664;        spike_register[665] = spike665;        spike_register[666] = spike666;        spike_register[667] = spike667;        spike_register[668] = spike668;        spike_register[669] = spike669;        spike_register[670] = spike670;        spike_register[671] = spike671;        spike_register[672] = spike672;        spike_register[673] = spike673;        spike_register[674] = spike674;        spike_register[675] = spike675;        spike_register[676] = spike676;        spike_register[677] = spike677;        spike_register[678] = spike678;        spike_register[679] = spike679;        spike_register[680] = spike680;        spike_register[681] = spike681;        spike_register[682] = spike682;        spike_register[683] = spike683;        spike_register[684] = spike684;        spike_register[685] = spike685;        spike_register[686] = spike686;        spike_register[687] = spike687;        spike_register[688] = spike688;        spike_register[689] = spike689;        spike_register[690] = spike690;        spike_register[691] = spike691;        spike_register[692] = spike692;        spike_register[693] = spike693;        spike_register[694] = spike694;        spike_register[695] = spike695;        spike_register[696] = spike696;        spike_register[697] = spike697;        spike_register[698] = spike698;        spike_register[699] = spike699;
        #0.5
        if(clear == 1'b0) begin
            for(i14 = 650; i14 <=699; i14= i14+1) begin
                if(spike_register[i14] == 1 && lock14 == 0) begin
                    lock14 = 1;
                    for(j14 = connection_pointer[i14]; j14 < connection_pointer[i14+1]; j14= j14+1) begin
                        packet14 = #0.1 {neuron_addresses[i14], downstream_connections[j14]};
                    end
                    spike_register[i14] = 0;
                    lock14 = 0;
                end
            end
        end

    end
    always @(clear, lock15, spike700, spike701, spike702, spike703, spike704, spike705, spike706, spike707, spike708, spike709, spike710, spike711, spike712, spike713, spike714, spike715, spike716, spike717, spike718, spike719, spike720, spike721, spike722, spike723, spike724, spike725, spike726, spike727, spike728, spike729, spike730, spike731, spike732, spike733, spike734, spike735, spike736, spike737, spike738, spike739, spike740, spike741, spike742, spike743, spike744, spike745, spike746, spike747, spike748, spike749) begin
        spike_register[700] = spike700;

        spike_register[701] = spike701;        spike_register[702] = spike702;        spike_register[703] = spike703;        spike_register[704] = spike704;        spike_register[705] = spike705;        spike_register[706] = spike706;        spike_register[707] = spike707;        spike_register[708] = spike708;        spike_register[709] = spike709;        spike_register[710] = spike710;        spike_register[711] = spike711;        spike_register[712] = spike712;        spike_register[713] = spike713;        spike_register[714] = spike714;        spike_register[715] = spike715;        spike_register[716] = spike716;        spike_register[717] = spike717;        spike_register[718] = spike718;        spike_register[719] = spike719;        spike_register[720] = spike720;        spike_register[721] = spike721;        spike_register[722] = spike722;        spike_register[723] = spike723;        spike_register[724] = spike724;        spike_register[725] = spike725;        spike_register[726] = spike726;        spike_register[727] = spike727;        spike_register[728] = spike728;        spike_register[729] = spike729;        spike_register[730] = spike730;        spike_register[731] = spike731;        spike_register[732] = spike732;        spike_register[733] = spike733;        spike_register[734] = spike734;        spike_register[735] = spike735;        spike_register[736] = spike736;        spike_register[737] = spike737;        spike_register[738] = spike738;        spike_register[739] = spike739;        spike_register[740] = spike740;        spike_register[741] = spike741;        spike_register[742] = spike742;        spike_register[743] = spike743;        spike_register[744] = spike744;        spike_register[745] = spike745;        spike_register[746] = spike746;        spike_register[747] = spike747;        spike_register[748] = spike748;        spike_register[749] = spike749;
        #0.5
        if(clear == 1'b0) begin
            for(i15 = 700; i15 <=749; i15= i15+1) begin
                if(spike_register[i15] == 1 && lock15 == 0) begin
                    lock15 = 1;
                    for(j15 = connection_pointer[i15]; j15 < connection_pointer[i15+1]; j15= j15+1) begin
                        packet15 = #0.1 {neuron_addresses[i15], downstream_connections[j15]};
                    end
                    spike_register[i15] = 0;
                    lock15 = 0;
                end
            end
        end

    end
    always @(clear, lock16, spike750, spike751, spike752, spike753, spike754, spike755, spike756, spike757, spike758, spike759, spike760, spike761, spike762, spike763, spike764, spike765, spike766, spike767, spike768, spike769, spike770, spike771, spike772, spike773, spike774, spike775, spike776, spike777, spike778, spike779, spike780, spike781, spike782, spike783, spike784, spike785, spike786, spike787, spike788, spike789, spike790, spike791, spike792, spike793, spike794, spike795, spike796, spike797, spike798, spike799) begin
        spike_register[750] = spike750;        spike_register[751] = spike751;        spike_register[752] = spike752;        spike_register[753] = spike753;        spike_register[754] = spike754;        spike_register[755] = spike755;        spike_register[756] = spike756;        spike_register[757] = spike757;        spike_register[758] = spike758;        spike_register[759] = spike759;        spike_register[760] = spike760;        spike_register[761] = spike761;        spike_register[762] = spike762;        spike_register[763] = spike763;        spike_register[764] = spike764;        spike_register[765] = spike765;        spike_register[766] = spike766;        spike_register[767] = spike767;        spike_register[768] = spike768;        spike_register[769] = spike769;        spike_register[770] = spike770;        spike_register[771] = spike771;        spike_register[772] = spike772;        spike_register[773] = spike773;        spike_register[774] = spike774;        spike_register[775] = spike775;        spike_register[776] = spike776;        spike_register[777] = spike777;        spike_register[778] = spike778;        spike_register[779] = spike779;        spike_register[780] = spike780;        spike_register[781] = spike781;        spike_register[782] = spike782;        spike_register[783] = spike783;        spike_register[784] = spike784;        spike_register[785] = spike785;        spike_register[786] = spike786;        spike_register[787] = spike787;        spike_register[788] = spike788;        spike_register[789] = spike789;        spike_register[790] = spike790;        spike_register[791] = spike791;        spike_register[792] = spike792;        spike_register[793] = spike793;        spike_register[794] = spike794;        spike_register[795] = spike795;        spike_register[796] = spike796;        spike_register[797] = spike797;        spike_register[798] = spike798;        spike_register[799] = spike799;
        #0.5
        if(clear == 1'b0) begin
            for(i16 = 750; i16 <=799; i16= i16+1) begin
                if(spike_register[i16] == 1 && lock16 == 0) begin
                    lock16 = 1;
                    for(j16 = connection_pointer[i16]; j16 < connection_pointer[i16+1]; j16= j16+1) begin
                        packet16 = #0.1 {neuron_addresses[i16], downstream_connections[j16]};
                    end
                    spike_register[i16] = 0;
                    lock16 = 0;
                end
            end
        end

    end
    always @(clear, lock17, spike800, spike801, spike802, spike803, spike804, spike805, spike806, spike807, spike808, spike809, spike810, spike811, spike812, spike813, spike814, spike815, spike816, spike817, spike818, spike819, spike820, spike821, spike822, spike823, spike824, spike825, spike826, spike827, spike828, spike829, spike830, spike831, spike832, spike833, spike834, spike835, spike836, spike837, spike838, spike839, spike840, spike841, spike842, spike843, spike844, spike845, spike846, spike847, spike848, spike849) begin
        spike_register[800] = spike800;

        spike_register[801] = spike801;        spike_register[802] = spike802;        spike_register[803] = spike803;        spike_register[804] = spike804;        spike_register[805] = spike805;        spike_register[806] = spike806;        spike_register[807] = spike807;        spike_register[808] = spike808;        spike_register[809] = spike809;        spike_register[810] = spike810;        spike_register[811] = spike811;        spike_register[812] = spike812;        spike_register[813] = spike813;        spike_register[814] = spike814;        spike_register[815] = spike815;        spike_register[816] = spike816;        spike_register[817] = spike817;        spike_register[818] = spike818;        spike_register[819] = spike819;        spike_register[820] = spike820;        spike_register[821] = spike821;        spike_register[822] = spike822;        spike_register[823] = spike823;        spike_register[824] = spike824;        spike_register[825] = spike825;        spike_register[826] = spike826;        spike_register[827] = spike827;        spike_register[828] = spike828;        spike_register[829] = spike829;        spike_register[830] = spike830;        spike_register[831] = spike831;        spike_register[832] = spike832;        spike_register[833] = spike833;        spike_register[834] = spike834;        spike_register[835] = spike835;        spike_register[836] = spike836;        spike_register[837] = spike837;        spike_register[838] = spike838;        spike_register[839] = spike839;        spike_register[840] = spike840;        spike_register[841] = spike841;        spike_register[842] = spike842;        spike_register[843] = spike843;        spike_register[844] = spike844;        spike_register[845] = spike845;        spike_register[846] = spike846;        spike_register[847] = spike847;        spike_register[848] = spike848;        spike_register[849] = spike849;
        #0.5
        if(clear == 1'b0) begin
            for(i17 = 800; i17 <=849; i17= i17+1) begin
                if(spike_register[i17] == 1 && lock17 == 0) begin
                    lock17 = 1;
                    for(j17 = connection_pointer[i17]; j17 < connection_pointer[i17+1]; j17= j17+1) begin
                        packet17 = #0.1 {neuron_addresses[i17], downstream_connections[j17]};
                    end
                    spike_register[i17] = 0;
                    lock17 = 0;
                end
            end
        end

    end
    always @(clear, lock18, spike850, spike851, spike852, spike853, spike854, spike855, spike856, spike857, spike858, spike859, spike860, spike861, spike862, spike863, spike864, spike865, spike866, spike867, spike868, spike869, spike870, spike871, spike872, spike873, spike874, spike875, spike876, spike877, spike878, spike879, spike880, spike881, spike882, spike883, spike884, spike885, spike886, spike887, spike888, spike889, spike890, spike891, spike892, spike893, spike894, spike895, spike896, spike897, spike898, spike899) begin
        spike_register[850] = spike850;        spike_register[851] = spike851;        spike_register[852] = spike852;        spike_register[853] = spike853;        spike_register[854] = spike854;        spike_register[855] = spike855;        spike_register[856] = spike856;        spike_register[857] = spike857;        spike_register[858] = spike858;        spike_register[859] = spike859;        spike_register[860] = spike860;        spike_register[861] = spike861;        spike_register[862] = spike862;        spike_register[863] = spike863;        spike_register[864] = spike864;        spike_register[865] = spike865;        spike_register[866] = spike866;        spike_register[867] = spike867;        spike_register[868] = spike868;        spike_register[869] = spike869;        spike_register[870] = spike870;        spike_register[871] = spike871;        spike_register[872] = spike872;        spike_register[873] = spike873;        spike_register[874] = spike874;        spike_register[875] = spike875;        spike_register[876] = spike876;        spike_register[877] = spike877;        spike_register[878] = spike878;        spike_register[879] = spike879;        spike_register[880] = spike880;        spike_register[881] = spike881;        spike_register[882] = spike882;        spike_register[883] = spike883;        spike_register[884] = spike884;        spike_register[885] = spike885;        spike_register[886] = spike886;        spike_register[887] = spike887;        spike_register[888] = spike888;        spike_register[889] = spike889;        spike_register[890] = spike890;        spike_register[891] = spike891;        spike_register[892] = spike892;        spike_register[893] = spike893;        spike_register[894] = spike894;        spike_register[895] = spike895;        spike_register[896] = spike896;        spike_register[897] = spike897;        spike_register[898] = spike898;        spike_register[899] = spike899;
        #0.5
        if(clear == 1'b0) begin
            for(i18 = 850; i18 <=899; i18= i18+1) begin
                if(spike_register[i18] == 1 && lock18 == 0) begin
                    lock18 = 1;
                    for(j18 = connection_pointer[i18]; j18 < connection_pointer[i18+1]; j18= j18+1) begin
                        packet18 = #0.1 {neuron_addresses[i18], downstream_connections[j18]};
                    end
                    spike_register[i18] = 0;
                    lock18 = 0;
                end
            end
        end

    end
    always @(clear, lock19, spike900, spike901, spike902, spike903, spike904, spike905, spike906, spike907, spike908, spike909, spike910, spike911, spike912, spike913, spike914, spike915, spike916, spike917, spike918, spike919, spike920, spike921, spike922, spike923, spike924, spike925, spike926, spike927, spike928, spike929, spike930, spike931, spike932, spike933, spike934, spike935, spike936, spike937, spike938, spike939, spike940, spike941, spike942, spike943, spike944, spike945, spike946, spike947, spike948, spike949) begin
        spike_register[900] = spike900;

        spike_register[901] = spike901;        spike_register[902] = spike902;        spike_register[903] = spike903;        spike_register[904] = spike904;        spike_register[905] = spike905;        spike_register[906] = spike906;        spike_register[907] = spike907;        spike_register[908] = spike908;        spike_register[909] = spike909;        spike_register[910] = spike910;        spike_register[911] = spike911;        spike_register[912] = spike912;        spike_register[913] = spike913;        spike_register[914] = spike914;        spike_register[915] = spike915;        spike_register[916] = spike916;        spike_register[917] = spike917;        spike_register[918] = spike918;        spike_register[919] = spike919;        spike_register[920] = spike920;        spike_register[921] = spike921;        spike_register[922] = spike922;        spike_register[923] = spike923;        spike_register[924] = spike924;        spike_register[925] = spike925;        spike_register[926] = spike926;        spike_register[927] = spike927;        spike_register[928] = spike928;        spike_register[929] = spike929;        spike_register[930] = spike930;        spike_register[931] = spike931;        spike_register[932] = spike932;        spike_register[933] = spike933;        spike_register[934] = spike934;        spike_register[935] = spike935;        spike_register[936] = spike936;        spike_register[937] = spike937;        spike_register[938] = spike938;        spike_register[939] = spike939;        spike_register[940] = spike940;        spike_register[941] = spike941;        spike_register[942] = spike942;        spike_register[943] = spike943;        spike_register[944] = spike944;        spike_register[945] = spike945;        spike_register[946] = spike946;        spike_register[947] = spike947;        spike_register[948] = spike948;        spike_register[949] = spike949;
        #0.5
        if(clear == 1'b0) begin
            for(i19 = 900; i19 <=949; i19= i19+1) begin
                if(spike_register[i19] == 1 && lock19 == 0) begin
                    lock19 = 1;
                    for(j19 = connection_pointer[i19]; j19 < connection_pointer[i19+1]; j19= j19+1) begin
                        packet19 = #0.1 {neuron_addresses[i19], downstream_connections[j19]};
                    end
                    spike_register[i19] = 0;
                    lock19 = 0;
                end
            end
        end

    end
    always @(clear, lock20, spike950, spike951, spike952, spike953, spike954, spike955, spike956, spike957, spike958, spike959, spike960, spike961, spike962, spike963, spike964, spike965, spike966, spike967, spike968, spike969, spike970, spike971, spike972, spike973, spike974, spike975, spike976, spike977, spike978, spike979, spike980, spike981, spike982, spike983, spike984, spike985, spike986, spike987, spike988, spike989, spike990, spike991, spike992, spike993, spike994, spike995, spike996, spike997, spike998, spike999) begin
        spike_register[950] = spike950;        spike_register[951] = spike951;        spike_register[952] = spike952;        spike_register[953] = spike953;        spike_register[954] = spike954;        spike_register[955] = spike955;        spike_register[956] = spike956;        spike_register[957] = spike957;        spike_register[958] = spike958;        spike_register[959] = spike959;        spike_register[960] = spike960;        spike_register[961] = spike961;        spike_register[962] = spike962;        spike_register[963] = spike963;        spike_register[964] = spike964;        spike_register[965] = spike965;        spike_register[966] = spike966;        spike_register[967] = spike967;        spike_register[968] = spike968;        spike_register[969] = spike969;        spike_register[970] = spike970;        spike_register[971] = spike971;        spike_register[972] = spike972;        spike_register[973] = spike973;        spike_register[974] = spike974;        spike_register[975] = spike975;        spike_register[976] = spike976;        spike_register[977] = spike977;        spike_register[978] = spike978;        spike_register[979] = spike979;        spike_register[980] = spike980;        spike_register[981] = spike981;        spike_register[982] = spike982;        spike_register[983] = spike983;        spike_register[984] = spike984;        spike_register[985] = spike985;        spike_register[986] = spike986;        spike_register[987] = spike987;        spike_register[988] = spike988;        spike_register[989] = spike989;        spike_register[990] = spike990;        spike_register[991] = spike991;        spike_register[992] = spike992;        spike_register[993] = spike993;        spike_register[994] = spike994;        spike_register[995] = spike995;        spike_register[996] = spike996;        spike_register[997] = spike997;        spike_register[998] = spike998;        spike_register[999] = spike999;
        #0.5
        if(clear == 1'b0) begin
            for(i20 = 950; i20 <=999; i20= i20+1) begin
                if(spike_register[i20] == 1 && lock20 == 0) begin
                    lock20 = 1;
                    for(j20 = connection_pointer[i20]; j20 < connection_pointer[i20+1]; j20= j20+1) begin
                        packet20 = #0.1 {neuron_addresses[i20], downstream_connections[j20]};
                    end
                    spike_register[i20] = 0;
                    lock20 = 0;
                end
            end
        end

    end
    always @(clear, lock21, spike1000, spike1001, spike1002, spike1003, spike1004, spike1005, spike1006, spike1007, spike1008, spike1009, spike1010, spike1011, spike1012, spike1013, spike1014, spike1015, spike1016, spike1017, spike1018, spike1019, spike1020, spike1021, spike1022, spike1023) begin
        spike_register[1000] = spike1000;

        spike_register[1001] = spike1001;        spike_register[1002] = spike1002;        spike_register[1003] = spike1003;        spike_register[1004] = spike1004;        spike_register[1005] = spike1005;        spike_register[1006] = spike1006;        spike_register[1007] = spike1007;        spike_register[1008] = spike1008;        spike_register[1009] = spike1009;        spike_register[1010] = spike1010;        spike_register[1011] = spike1011;        spike_register[1012] = spike1012;        spike_register[1013] = spike1013;        spike_register[1014] = spike1014;        spike_register[1015] = spike1015;        spike_register[1016] = spike1016;        spike_register[1017] = spike1017;        spike_register[1018] = spike1018;        spike_register[1019] = spike1019;        spike_register[1020] = spike1020;        spike_register[1021] = spike1021;        spike_register[1022] = spike1022;        spike_register[1023] = spike1023;
        #0.5
        if(clear == 1'b0) begin
            for(i21 = 1000; i21 <=1049; i21= i21+1) begin
                if(spike_register[i21] == 1 && lock21 == 0) begin
                    lock21 = 1;
                    for(j21 = connection_pointer[i21]; j21 < connection_pointer[i21+1]; j21= j21+1) begin
                        packet21 = #0.1 {neuron_addresses[i21], downstream_connections[j21]};
                    end
                    spike_register[i21] = 0;
                    lock21 = 0;
                end
            end
        end

    end
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
    reg[18:0] i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, module network_interface_scaled (
        input wire spike0,
    input wire spike1,    input wire spike2,    input wire spike3,    input wire spike4,    input wire spike5,    input wire spike6,    input wire spike7,    input wire spike8,    input wire spike9,    input wire spike10,    input wire spike11,    input wire spike12,    input wire spike13,    input wire spike14,    input wire spike15,    input wire spike16,    input wire spike17,    input wire spike18,    input wire spike19,    input wire spike20,    input wire spike21,    input wire spike22,    input wire spike23,    input wire spike24,    input wire spike25,    input wire spike26,    input wire spike27,    input wire spike28,    input wire spike29,    input wire spike30,    input wire spike31,    input wire spike32,    input wire spike33,    input wire spike34,    input wire spike35,    input wire spike36,    input wire spike37,    input wire spike38,    input wire spike39,    input wire spike40,    input wire spike41,    input wire spike42,    input wire spike43,    input wire spike44,    input wire spike45,    input wire spike46,    input wire spike47,    input wire spike48,    input wire spike49,    input wire spike50,    input wire spike51,    input wire spike52,    input wire spike53,    input wire spike54,    input wire spike55,    input wire spike56,    input wire spike57,    input wire spike58,    input wire spike59,    input wire spike60,    input wire spike61,    input wire spike62,    input wire spike63,    input wire spike64,    input wire spike65,    input wire spike66,    input wire spike67,    input wire spike68,    input wire spike69,    input wire spike70,    input wire spike71,    input wire spike72,    input wire spike73,    input wire spike74,    input wire spike75,    input wire spike76,    input wire spike77,    input wire spike78,    input wire spike79,    input wire spike80,    input wire spike81,    input wire spike82,    input wire spike83,    input wire spike84,    input wire spike85,    input wire spike86,    input wire spike87,    input wire spike88,    input wire spike89,    input wire spike90,    input wire spike91,    input wire spike92,    input wire spike93,    input wire spike94,    input wire spike95,    input wire spike96,    input wire spike97,    input wire spike98,    input wire spike99,    input wire spike100,
    input wire spike101,    input wire spike102,    input wire spike103,    input wire spike104,    input wire spike105,    input wire spike106,    input wire spike107,    input wire spike108,    input wire spike109,    input wire spike110,    input wire spike111,    input wire spike112,    input wire spike113,    input wire spike114,    input wire spike115,    input wire spike116,    input wire spike117,    input wire spike118,    input wire spike119,    input wire spike120,    input wire spike121,    input wire spike122,    input wire spike123,    input wire spike124,    input wire spike125,    input wire spike126,    input wire spike127,    input wire spike128,    input wire spike129,    input wire spike130,    input wire spike131,    input wire spike132,    input wire spike133,    input wire spike134,    input wire spike135,    input wire spike136,    input wire spike137,    input wire spike138,    input wire spike139,    input wire spike140,    input wire spike141,    input wire spike142,    input wire spike143,    input wire spike144,    input wire spike145,    input wire spike146,    input wire spike147,    input wire spike148,    input wire spike149,    input wire spike150,    input wire spike151,    input wire spike152,    input wire spike153,    input wire spike154,    input wire spike155,    input wire spike156,    input wire spike157,    input wire spike158,    input wire spike159,    input wire spike160,    input wire spike161,    input wire spike162,    input wire spike163,    input wire spike164,    input wire spike165,    input wire spike166,    input wire spike167,    input wire spike168,    input wire spike169,    input wire spike170,    input wire spike171,    input wire spike172,    input wire spike173,    input wire spike174,    input wire spike175,    input wire spike176,    input wire spike177,    input wire spike178,    input wire spike179,    input wire spike180,    input wire spike181,    input wire spike182,    input wire spike183,    input wire spike184,    input wire spike185,    input wire spike186,    input wire spike187,    input wire spike188,    input wire spike189,    input wire spike190,    input wire spike191,    input wire spike192,    input wire spike193,    input wire spike194,    input wire spike195,    input wire spike196,    input wire spike197,    input wire spike198,    input wire spike199,    input wire spike200,
    input wire spike201,    input wire spike202,    input wire spike203,    input wire spike204,    input wire spike205,    input wire spike206,    input wire spike207,    input wire spike208,    input wire spike209,    input wire spike210,    input wire spike211,    input wire spike212,    input wire spike213,    input wire spike214,    input wire spike215,    input wire spike216,    input wire spike217,    input wire spike218,    input wire spike219,    input wire spike220,    input wire spike221,    input wire spike222,    input wire spike223,    input wire spike224,    input wire spike225,    input wire spike226,    input wire spike227,    input wire spike228,    input wire spike229,    input wire spike230,    input wire spike231,    input wire spike232,    input wire spike233,    input wire spike234,    input wire spike235,    input wire spike236,    input wire spike237,    input wire spike238,    input wire spike239,    input wire spike240,    input wire spike241,    input wire spike242,    input wire spike243,    input wire spike244,    input wire spike245,    input wire spike246,    input wire spike247,    input wire spike248,    input wire spike249,    input wire spike250,    input wire spike251,    input wire spike252,    input wire spike253,    input wire spike254,    input wire spike255,    input wire spike256,    input wire spike257,    input wire spike258,    input wire spike259,    input wire spike260,    input wire spike261,    input wire spike262,    input wire spike263,    input wire spike264,    input wire spike265,    input wire spike266,    input wire spike267,    input wire spike268,    input wire spike269,    input wire spike270,    input wire spike271,    input wire spike272,    input wire spike273,    input wire spike274,    input wire spike275,    input wire spike276,    input wire spike277,    input wire spike278,    input wire spike279,    input wire spike280,    input wire spike281,    input wire spike282,    input wire spike283,    input wire spike284,    input wire spike285,    input wire spike286,    input wire spike287,    input wire spike288,    input wire spike289,    input wire spike290,    input wire spike291,    input wire spike292,    input wire spike293,    input wire spike294,    input wire spike295,    input wire spike296,    input wire spike297,    input wire spike298,    input wire spike299,    input wire spike300,
    input wire spike301,    input wire spike302,    input wire spike303,    input wire spike304,    input wire spike305,    input wire spike306,    input wire spike307,    input wire spike308,    input wire spike309,    input wire spike310,    input wire spike311,    input wire spike312,    input wire spike313,    input wire spike314,    input wire spike315,    input wire spike316,    input wire spike317,    input wire spike318,    input wire spike319,    input wire spike320,    input wire spike321,    input wire spike322,    input wire spike323,    input wire spike324,    input wire spike325,    input wire spike326,    input wire spike327,    input wire spike328,    input wire spike329,    input wire spike330,    input wire spike331,    input wire spike332,    input wire spike333,    input wire spike334,    input wire spike335,    input wire spike336,    input wire spike337,    input wire spike338,    input wire spike339,    input wire spike340,    input wire spike341,    input wire spike342,    input wire spike343,    input wire spike344,    input wire spike345,    input wire spike346,    input wire spike347,    input wire spike348,    input wire spike349,    input wire spike350,    input wire spike351,    input wire spike352,    input wire spike353,    input wire spike354,    input wire spike355,    input wire spike356,    input wire spike357,    input wire spike358,    input wire spike359,    input wire spike360,    input wire spike361,    input wire spike362,    input wire spike363,    input wire spike364,    input wire spike365,    input wire spike366,    input wire spike367,    input wire spike368,    input wire spike369,    input wire spike370,    input wire spike371,    input wire spike372,    input wire spike373,    input wire spike374,    input wire spike375,    input wire spike376,    input wire spike377,    input wire spike378,    input wire spike379,    input wire spike380,    input wire spike381,    input wire spike382,    input wire spike383,    input wire spike384,    input wire spike385,    input wire spike386,    input wire spike387,    input wire spike388,    input wire spike389,    input wire spike390,    input wire spike391,    input wire spike392,    input wire spike393,    input wire spike394,    input wire spike395,    input wire spike396,    input wire spike397,    input wire spike398,    input wire spike399,    input wire spike400,
    input wire spike401,    input wire spike402,    input wire spike403,    input wire spike404,    input wire spike405,    input wire spike406,    input wire spike407,    input wire spike408,    input wire spike409,    input wire spike410,    input wire spike411,    input wire spike412,    input wire spike413,    input wire spike414,    input wire spike415,    input wire spike416,    input wire spike417,    input wire spike418,    input wire spike419,    input wire spike420,    input wire spike421,    input wire spike422,    input wire spike423,    input wire spike424,    input wire spike425,    input wire spike426,    input wire spike427,    input wire spike428,    input wire spike429,    input wire spike430,    input wire spike431,    input wire spike432,    input wire spike433,    input wire spike434,    input wire spike435,    input wire spike436,    input wire spike437,    input wire spike438,    input wire spike439,    input wire spike440,    input wire spike441,    input wire spike442,    input wire spike443,    input wire spike444,    input wire spike445,    input wire spike446,    input wire spike447,    input wire spike448,    input wire spike449,    input wire spike450,    input wire spike451,    input wire spike452,    input wire spike453,    input wire spike454,    input wire spike455,    input wire spike456,    input wire spike457,    input wire spike458,    input wire spike459,    input wire spike460,    input wire spike461,    input wire spike462,    input wire spike463,    input wire spike464,    input wire spike465,    input wire spike466,    input wire spike467,    input wire spike468,    input wire spike469,    input wire spike470,    input wire spike471,    input wire spike472,    input wire spike473,    input wire spike474,    input wire spike475,    input wire spike476,    input wire spike477,    input wire spike478,    input wire spike479,    input wire spike480,    input wire spike481,    input wire spike482,    input wire spike483,    input wire spike484,    input wire spike485,    input wire spike486,    input wire spike487,    input wire spike488,    input wire spike489,    input wire spike490,    input wire spike491,    input wire spike492,    input wire spike493,    input wire spike494,    input wire spike495,    input wire spike496,    input wire spike497,    input wire spike498,    input wire spike499,    input wire spike500,
    input wire spike501,    input wire spike502,    input wire spike503,    input wire spike504,    input wire spike505,    input wire spike506,    input wire spike507,    input wire spike508,    input wire spike509,    input wire spike510,    input wire spike511,    input wire spike512,    input wire spike513,    input wire spike514,    input wire spike515,    input wire spike516,    input wire spike517,    input wire spike518,    input wire spike519,    input wire spike520,    input wire spike521,    input wire spike522,    input wire spike523,    input wire spike524,    input wire spike525,    input wire spike526,    input wire spike527,    input wire spike528,    input wire spike529,    input wire spike530,    input wire spike531,    input wire spike532,    input wire spike533,    input wire spike534,    input wire spike535,    input wire spike536,    input wire spike537,    input wire spike538,    input wire spike539,    input wire spike540,    input wire spike541,    input wire spike542,    input wire spike543,    input wire spike544,    input wire spike545,    input wire spike546,    input wire spike547,    input wire spike548,    input wire spike549,    input wire spike550,    input wire spike551,    input wire spike552,    input wire spike553,    input wire spike554,    input wire spike555,    input wire spike556,    input wire spike557,    input wire spike558,    input wire spike559,    input wire spike560,    input wire spike561,    input wire spike562,    input wire spike563,    input wire spike564,    input wire spike565,    input wire spike566,    input wire spike567,    input wire spike568,    input wire spike569,    input wire spike570,    input wire spike571,    input wire spike572,    input wire spike573,    input wire spike574,    input wire spike575,    input wire spike576,    input wire spike577,    input wire spike578,    input wire spike579,    input wire spike580,    input wire spike581,    input wire spike582,    input wire spike583,    input wire spike584,    input wire spike585,    input wire spike586,    input wire spike587,    input wire spike588,    input wire spike589,    input wire spike590,    input wire spike591,    input wire spike592,    input wire spike593,    input wire spike594,    input wire spike595,    input wire spike596,    input wire spike597,    input wire spike598,    input wire spike599,    input wire spike600,
    input wire spike601,    input wire spike602,    input wire spike603,    input wire spike604,    input wire spike605,    input wire spike606,    input wire spike607,    input wire spike608,    input wire spike609,    input wire spike610,    input wire spike611,    input wire spike612,    input wire spike613,    input wire spike614,    input wire spike615,    input wire spike616,    input wire spike617,    input wire spike618,    input wire spike619,    input wire spike620,    input wire spike621,    input wire spike622,    input wire spike623,    input wire spike624,    input wire spike625,    input wire spike626,    input wire spike627,    input wire spike628,    input wire spike629,    input wire spike630,    input wire spike631,    input wire spike632,    input wire spike633,    input wire spike634,    input wire spike635,    input wire spike636,    input wire spike637,    input wire spike638,    input wire spike639,    input wire spike640,    input wire spike641,    input wire spike642,    input wire spike643,    input wire spike644,    input wire spike645,    input wire spike646,    input wire spike647,    input wire spike648,    input wire spike649,    input wire spike650,    input wire spike651,    input wire spike652,    input wire spike653,    input wire spike654,    input wire spike655,    input wire spike656,    input wire spike657,    input wire spike658,    input wire spike659,    input wire spike660,    input wire spike661,    input wire spike662,    input wire spike663,    input wire spike664,    input wire spike665,    input wire spike666,    input wire spike667,    input wire spike668,    input wire spike669,    input wire spike670,    input wire spike671,    input wire spike672,    input wire spike673,    input wire spike674,    input wire spike675,    input wire spike676,    input wire spike677,    input wire spike678,    input wire spike679,    input wire spike680,    input wire spike681,    input wire spike682,    input wire spike683,    input wire spike684,    input wire spike685,    input wire spike686,    input wire spike687,    input wire spike688,    input wire spike689,    input wire spike690,    input wire spike691,    input wire spike692,    input wire spike693,    input wire spike694,    input wire spike695,    input wire spike696,    input wire spike697,    input wire spike698,    input wire spike699,    input wire spike700,
    input wire spike701,    input wire spike702,    input wire spike703,    input wire spike704,    input wire spike705,    input wire spike706,    input wire spike707,    input wire spike708,    input wire spike709,    input wire spike710,    input wire spike711,    input wire spike712,    input wire spike713,    input wire spike714,    input wire spike715,    input wire spike716,    input wire spike717,    input wire spike718,    input wire spike719,    input wire spike720,    input wire spike721,    input wire spike722,    input wire spike723,    input wire spike724,    input wire spike725,    input wire spike726,    input wire spike727,    input wire spike728,    input wire spike729,    input wire spike730,    input wire spike731,    input wire spike732,    input wire spike733,    input wire spike734,    input wire spike735,    input wire spike736,    input wire spike737,    input wire spike738,    input wire spike739,    input wire spike740,    input wire spike741,    input wire spike742,    input wire spike743,    input wire spike744,    input wire spike745,    input wire spike746,    input wire spike747,    input wire spike748,    input wire spike749,    input wire spike750,    input wire spike751,    input wire spike752,    input wire spike753,    input wire spike754,    input wire spike755,    input wire spike756,    input wire spike757,    input wire spike758,    input wire spike759,    input wire spike760,    input wire spike761,    input wire spike762,    input wire spike763,    input wire spike764,    input wire spike765,    input wire spike766,    input wire spike767,    input wire spike768,    input wire spike769,    input wire spike770,    input wire spike771,    input wire spike772,    input wire spike773,    input wire spike774,    input wire spike775,    input wire spike776,    input wire spike777,    input wire spike778,    input wire spike779,    input wire spike780,    input wire spike781,    input wire spike782,    input wire spike783,    input wire spike784,    input wire spike785,    input wire spike786,    input wire spike787,    input wire spike788,    input wire spike789,    input wire spike790,    input wire spike791,    input wire spike792,    input wire spike793,    input wire spike794,    input wire spike795,    input wire spike796,    input wire spike797,    input wire spike798,    input wire spike799,    input wire spike800,
    input wire spike801,    input wire spike802,    input wire spike803,    input wire spike804,    input wire spike805,    input wire spike806,    input wire spike807,    input wire spike808,    input wire spike809,    input wire spike810,    input wire spike811,    input wire spike812,    input wire spike813,    input wire spike814,    input wire spike815,    input wire spike816,    input wire spike817,    input wire spike818,    input wire spike819,    input wire spike820,    input wire spike821,    input wire spike822,    input wire spike823,    input wire spike824,    input wire spike825,    input wire spike826,    input wire spike827,    input wire spike828,    input wire spike829,    input wire spike830,    input wire spike831,    input wire spike832,    input wire spike833,    input wire spike834,    input wire spike835,    input wire spike836,    input wire spike837,    input wire spike838,    input wire spike839,    input wire spike840,    input wire spike841,    input wire spike842,    input wire spike843,    input wire spike844,    input wire spike845,    input wire spike846,    input wire spike847,    input wire spike848,    input wire spike849,    input wire spike850,    input wire spike851,    input wire spike852,    input wire spike853,    input wire spike854,    input wire spike855,    input wire spike856,    input wire spike857,    input wire spike858,    input wire spike859,    input wire spike860,    input wire spike861,    input wire spike862,    input wire spike863,    input wire spike864,    input wire spike865,    input wire spike866,    input wire spike867,    input wire spike868,    input wire spike869,    input wire spike870,    input wire spike871,    input wire spike872,    input wire spike873,    input wire spike874,    input wire spike875,    input wire spike876,    input wire spike877,    input wire spike878,    input wire spike879,    input wire spike880,    input wire spike881,    input wire spike882,    input wire spike883,    input wire spike884,    input wire spike885,    input wire spike886,    input wire spike887,    input wire spike888,    input wire spike889,    input wire spike890,    input wire spike891,    input wire spike892,    input wire spike893,    input wire spike894,    input wire spike895,    input wire spike896,    input wire spike897,    input wire spike898,    input wire spike899,    input wire spike900,
    input wire spike901,    input wire spike902,    input wire spike903,    input wire spike904,    input wire spike905,    input wire spike906,    input wire spike907,    input wire spike908,    input wire spike909,    input wire spike910,    input wire spike911,    input wire spike912,    input wire spike913,    input wire spike914,    input wire spike915,    input wire spike916,    input wire spike917,    input wire spike918,    input wire spike919,    input wire spike920,    input wire spike921,    input wire spike922,    input wire spike923,    input wire spike924,    input wire spike925,    input wire spike926,    input wire spike927,    input wire spike928,    input wire spike929,    input wire spike930,    input wire spike931,    input wire spike932,    input wire spike933,    input wire spike934,    input wire spike935,    input wire spike936,    input wire spike937,    input wire spike938,    input wire spike939,    input wire spike940,    input wire spike941,    input wire spike942,    input wire spike943,    input wire spike944,    input wire spike945,    input wire spike946,    input wire spike947,    input wire spike948,    input wire spike949,    input wire spike950,    input wire spike951,    input wire spike952,    input wire spike953,    input wire spike954,    input wire spike955,    input wire spike956,    input wire spike957,    input wire spike958,    input wire spike959,    input wire spike960,    input wire spike961,    input wire spike962,    input wire spike963,    input wire spike964,    input wire spike965,    input wire spike966,    input wire spike967,    input wire spike968,    input wire spike969,    input wire spike970,    input wire spike971,    input wire spike972,    input wire spike973,    input wire spike974,    input wire spike975,    input wire spike976,    input wire spike977,    input wire spike978,    input wire spike979,    input wire spike980,    input wire spike981,    input wire spike982,    input wire spike983,    input wire spike984,    input wire spike985,    input wire spike986,    input wire spike987,    input wire spike988,    input wire spike989,    input wire spike990,    input wire spike991,    input wire spike992,    input wire spike993,    input wire spike994,    input wire spike995,    input wire spike996,    input wire spike997,    input wire spike998,    input wire spike999,    input wire spike1000,
    input wire spike1001,    input wire spike1002,    input wire spike1003,    input wire spike1004,    input wire spike1005,    input wire spike1006,    input wire spike1007,    input wire spike1008,    input wire spike1009,    input wire spike1010,    input wire spike1011,    input wire spike1012,    input wire spike1013,    input wire spike1014,    input wire spike1015,    input wire spike1016,    input wire spike1017,    input wire spike1018,    input wire spike1019,    input wire spike1020,    input wire spike1021,    input wire spike1022,    input wire spike1023,
    output wire output
);

    parameter number_of_neurons= 1024;
    reg spike_register[0:number_of_neurons-1];
    always @(clear, lock1, spike0, spike1, spike2, spike3, spike4, spike5, spike6, spike7, spike8, spike9, spike10, spike11, spike12, spike13, spike14, spike15, spike16, spike17, spike18, spike19, spike20, spike21, spike22, spike23, spike24, spike25, spike26, spike27, spike28, spike29, spike30, spike31, spike32, spike33, spike34, spike35, spike36, spike37, spike38, spike39, spike40, spike41, spike42, spike43, spike44, spike45, spike46, spike47, spike48, spike49) begin
        spike_register[0] = spike0;

        spike_register[1] = spike1;        spike_register[2] = spike2;        spike_register[3] = spike3;        spike_register[4] = spike4;        spike_register[5] = spike5;        spike_register[6] = spike6;        spike_register[7] = spike7;        spike_register[8] = spike8;        spike_register[9] = spike9;        spike_register[10] = spike10;        spike_register[11] = spike11;        spike_register[12] = spike12;        spike_register[13] = spike13;        spike_register[14] = spike14;        spike_register[15] = spike15;        spike_register[16] = spike16;        spike_register[17] = spike17;        spike_register[18] = spike18;        spike_register[19] = spike19;        spike_register[20] = spike20;        spike_register[21] = spike21;        spike_register[22] = spike22;        spike_register[23] = spike23;        spike_register[24] = spike24;        spike_register[25] = spike25;        spike_register[26] = spike26;        spike_register[27] = spike27;        spike_register[28] = spike28;        spike_register[29] = spike29;        spike_register[30] = spike30;        spike_register[31] = spike31;        spike_register[32] = spike32;        spike_register[33] = spike33;        spike_register[34] = spike34;        spike_register[35] = spike35;        spike_register[36] = spike36;        spike_register[37] = spike37;        spike_register[38] = spike38;        spike_register[39] = spike39;        spike_register[40] = spike40;        spike_register[41] = spike41;        spike_register[42] = spike42;        spike_register[43] = spike43;        spike_register[44] = spike44;        spike_register[45] = spike45;        spike_register[46] = spike46;        spike_register[47] = spike47;        spike_register[48] = spike48;        spike_register[49] = spike49;
        #0.5
        if(clear == 1'b0) begin
            for(i1 = 0; i1 <=49; i1= i1+1) begin
                if(spike_register[i1] == 1 && lock1 == 0) begin
                    lock1 = 1;
                    for(j1 = connection_pointer[i1]; j1 < connection_pointer[i1+1]; j1= j1+1) begin
                        packet1 = #0.1 {neuron_addresses[i1], downstream_connections[j1]};
                    end
                    spike_register[i1] = 0;
                    lock1 = 0;
                end
            end
        end

    end
    always @(clear, lock2, spike50, spike51, spike52, spike53, spike54, spike55, spike56, spike57, spike58, spike59, spike60, spike61, spike62, spike63, spike64, spike65, spike66, spike67, spike68, spike69, spike70, spike71, spike72, spike73, spike74, spike75, spike76, spike77, spike78, spike79, spike80, spike81, spike82, spike83, spike84, spike85, spike86, spike87, spike88, spike89, spike90, spike91, spike92, spike93, spike94, spike95, spike96, spike97, spike98, spike99) begin
        spike_register[50] = spike50;        spike_register[51] = spike51;        spike_register[52] = spike52;        spike_register[53] = spike53;        spike_register[54] = spike54;        spike_register[55] = spike55;        spike_register[56] = spike56;        spike_register[57] = spike57;        spike_register[58] = spike58;        spike_register[59] = spike59;        spike_register[60] = spike60;        spike_register[61] = spike61;        spike_register[62] = spike62;        spike_register[63] = spike63;        spike_register[64] = spike64;        spike_register[65] = spike65;        spike_register[66] = spike66;        spike_register[67] = spike67;        spike_register[68] = spike68;        spike_register[69] = spike69;        spike_register[70] = spike70;        spike_register[71] = spike71;        spike_register[72] = spike72;        spike_register[73] = spike73;        spike_register[74] = spike74;        spike_register[75] = spike75;        spike_register[76] = spike76;        spike_register[77] = spike77;        spike_register[78] = spike78;        spike_register[79] = spike79;        spike_register[80] = spike80;        spike_register[81] = spike81;        spike_register[82] = spike82;        spike_register[83] = spike83;        spike_register[84] = spike84;        spike_register[85] = spike85;        spike_register[86] = spike86;        spike_register[87] = spike87;        spike_register[88] = spike88;        spike_register[89] = spike89;        spike_register[90] = spike90;        spike_register[91] = spike91;        spike_register[92] = spike92;        spike_register[93] = spike93;        spike_register[94] = spike94;        spike_register[95] = spike95;        spike_register[96] = spike96;        spike_register[97] = spike97;        spike_register[98] = spike98;        spike_register[99] = spike99;
        #0.5
        if(clear == 1'b0) begin
            for(i2 = 50; i2 <=99; i2= i2+1) begin
                if(spike_register[i2] == 1 && lock2 == 0) begin
                    lock2 = 1;
                    for(j2 = connection_pointer[i2]; j2 < connection_pointer[i2+1]; j2= j2+1) begin
                        packet2 = #0.1 {neuron_addresses[i2], downstream_connections[j2]};
                    end
                    spike_register[i2] = 0;
                    lock2 = 0;
                end
            end
        end

    end
    always @(clear, lock3, spike100, spike101, spike102, spike103, spike104, spike105, spike106, spike107, spike108, spike109, spike110, spike111, spike112, spike113, spike114, spike115, spike116, spike117, spike118, spike119, spike120, spike121, spike122, spike123, spike124, spike125, spike126, spike127, spike128, spike129, spike130, spike131, spike132, spike133, spike134, spike135, spike136, spike137, spike138, spike139, spike140, spike141, spike142, spike143, spike144, spike145, spike146, spike147, spike148, spike149) begin
        spike_register[100] = spike100;

        spike_register[101] = spike101;        spike_register[102] = spike102;        spike_register[103] = spike103;        spike_register[104] = spike104;        spike_register[105] = spike105;        spike_register[106] = spike106;        spike_register[107] = spike107;        spike_register[108] = spike108;        spike_register[109] = spike109;        spike_register[110] = spike110;        spike_register[111] = spike111;        spike_register[112] = spike112;        spike_register[113] = spike113;        spike_register[114] = spike114;        spike_register[115] = spike115;        spike_register[116] = spike116;        spike_register[117] = spike117;        spike_register[118] = spike118;        spike_register[119] = spike119;        spike_register[120] = spike120;        spike_register[121] = spike121;        spike_register[122] = spike122;        spike_register[123] = spike123;        spike_register[124] = spike124;        spike_register[125] = spike125;        spike_register[126] = spike126;        spike_register[127] = spike127;        spike_register[128] = spike128;        spike_register[129] = spike129;        spike_register[130] = spike130;        spike_register[131] = spike131;        spike_register[132] = spike132;        spike_register[133] = spike133;        spike_register[134] = spike134;        spike_register[135] = spike135;        spike_register[136] = spike136;        spike_register[137] = spike137;        spike_register[138] = spike138;        spike_register[139] = spike139;        spike_register[140] = spike140;        spike_register[141] = spike141;        spike_register[142] = spike142;        spike_register[143] = spike143;        spike_register[144] = spike144;        spike_register[145] = spike145;        spike_register[146] = spike146;        spike_register[147] = spike147;        spike_register[148] = spike148;        spike_register[149] = spike149;
        #0.5
        if(clear == 1'b0) begin
            for(i3 = 100; i3 <=149; i3= i3+1) begin
                if(spike_register[i3] == 1 && lock3 == 0) begin
                    lock3 = 1;
                    for(j3 = connection_pointer[i3]; j3 < connection_pointer[i3+1]; j3= j3+1) begin
                        packet3 = #0.1 {neuron_addresses[i3], downstream_connections[j3]};
                    end
                    spike_register[i3] = 0;
                    lock3 = 0;
                end
            end
        end

    end
    always @(clear, lock4, spike150, spike151, spike152, spike153, spike154, spike155, spike156, spike157, spike158, spike159, spike160, spike161, spike162, spike163, spike164, spike165, spike166, spike167, spike168, spike169, spike170, spike171, spike172, spike173, spike174, spike175, spike176, spike177, spike178, spike179, spike180, spike181, spike182, spike183, spike184, spike185, spike186, spike187, spike188, spike189, spike190, spike191, spike192, spike193, spike194, spike195, spike196, spike197, spike198, spike199) begin
        spike_register[150] = spike150;        spike_register[151] = spike151;        spike_register[152] = spike152;        spike_register[153] = spike153;        spike_register[154] = spike154;        spike_register[155] = spike155;        spike_register[156] = spike156;        spike_register[157] = spike157;        spike_register[158] = spike158;        spike_register[159] = spike159;        spike_register[160] = spike160;        spike_register[161] = spike161;        spike_register[162] = spike162;        spike_register[163] = spike163;        spike_register[164] = spike164;        spike_register[165] = spike165;        spike_register[166] = spike166;        spike_register[167] = spike167;        spike_register[168] = spike168;        spike_register[169] = spike169;        spike_register[170] = spike170;        spike_register[171] = spike171;        spike_register[172] = spike172;        spike_register[173] = spike173;        spike_register[174] = spike174;        spike_register[175] = spike175;        spike_register[176] = spike176;        spike_register[177] = spike177;        spike_register[178] = spike178;        spike_register[179] = spike179;        spike_register[180] = spike180;        spike_register[181] = spike181;        spike_register[182] = spike182;        spike_register[183] = spike183;        spike_register[184] = spike184;        spike_register[185] = spike185;        spike_register[186] = spike186;        spike_register[187] = spike187;        spike_register[188] = spike188;        spike_register[189] = spike189;        spike_register[190] = spike190;        spike_register[191] = spike191;        spike_register[192] = spike192;        spike_register[193] = spike193;        spike_register[194] = spike194;        spike_register[195] = spike195;        spike_register[196] = spike196;        spike_register[197] = spike197;        spike_register[198] = spike198;        spike_register[199] = spike199;
        #0.5
        if(clear == 1'b0) begin
            for(i4 = 150; i4 <=199; i4= i4+1) begin
                if(spike_register[i4] == 1 && lock4 == 0) begin
                    lock4 = 1;
                    for(j4 = connection_pointer[i4]; j4 < connection_pointer[i4+1]; j4= j4+1) begin
                        packet4 = #0.1 {neuron_addresses[i4], downstream_connections[j4]};
                    end
                    spike_register[i4] = 0;
                    lock4 = 0;
                end
            end
        end

    end
    always @(clear, lock5, spike200, spike201, spike202, spike203, spike204, spike205, spike206, spike207, spike208, spike209, spike210, spike211, spike212, spike213, spike214, spike215, spike216, spike217, spike218, spike219, spike220, spike221, spike222, spike223, spike224, spike225, spike226, spike227, spike228, spike229, spike230, spike231, spike232, spike233, spike234, spike235, spike236, spike237, spike238, spike239, spike240, spike241, spike242, spike243, spike244, spike245, spike246, spike247, spike248, spike249) begin
        spike_register[200] = spike200;

        spike_register[201] = spike201;        spike_register[202] = spike202;        spike_register[203] = spike203;        spike_register[204] = spike204;        spike_register[205] = spike205;        spike_register[206] = spike206;        spike_register[207] = spike207;        spike_register[208] = spike208;        spike_register[209] = spike209;        spike_register[210] = spike210;        spike_register[211] = spike211;        spike_register[212] = spike212;        spike_register[213] = spike213;        spike_register[214] = spike214;        spike_register[215] = spike215;        spike_register[216] = spike216;        spike_register[217] = spike217;        spike_register[218] = spike218;        spike_register[219] = spike219;        spike_register[220] = spike220;        spike_register[221] = spike221;        spike_register[222] = spike222;        spike_register[223] = spike223;        spike_register[224] = spike224;        spike_register[225] = spike225;        spike_register[226] = spike226;        spike_register[227] = spike227;        spike_register[228] = spike228;        spike_register[229] = spike229;        spike_register[230] = spike230;        spike_register[231] = spike231;        spike_register[232] = spike232;        spike_register[233] = spike233;        spike_register[234] = spike234;        spike_register[235] = spike235;        spike_register[236] = spike236;        spike_register[237] = spike237;        spike_register[238] = spike238;        spike_register[239] = spike239;        spike_register[240] = spike240;        spike_register[241] = spike241;        spike_register[242] = spike242;        spike_register[243] = spike243;        spike_register[244] = spike244;        spike_register[245] = spike245;        spike_register[246] = spike246;        spike_register[247] = spike247;        spike_register[248] = spike248;        spike_register[249] = spike249;
        #0.5
        if(clear == 1'b0) begin
            for(i5 = 200; i5 <=249; i5= i5+1) begin
                if(spike_register[i5] == 1 && lock5 == 0) begin
                    lock5 = 1;
                    for(j5 = connection_pointer[i5]; j5 < connection_pointer[i5+1]; j5= j5+1) begin
                        packet5 = #0.1 {neuron_addresses[i5], downstream_connections[j5]};
                    end
                    spike_register[i5] = 0;
                    lock5 = 0;
                end
            end
        end

    end
    always @(clear, lock6, spike250, spike251, spike252, spike253, spike254, spike255, spike256, spike257, spike258, spike259, spike260, spike261, spike262, spike263, spike264, spike265, spike266, spike267, spike268, spike269, spike270, spike271, spike272, spike273, spike274, spike275, spike276, spike277, spike278, spike279, spike280, spike281, spike282, spike283, spike284, spike285, spike286, spike287, spike288, spike289, spike290, spike291, spike292, spike293, spike294, spike295, spike296, spike297, spike298, spike299) begin
        spike_register[250] = spike250;        spike_register[251] = spike251;        spike_register[252] = spike252;        spike_register[253] = spike253;        spike_register[254] = spike254;        spike_register[255] = spike255;        spike_register[256] = spike256;        spike_register[257] = spike257;        spike_register[258] = spike258;        spike_register[259] = spike259;        spike_register[260] = spike260;        spike_register[261] = spike261;        spike_register[262] = spike262;        spike_register[263] = spike263;        spike_register[264] = spike264;        spike_register[265] = spike265;        spike_register[266] = spike266;        spike_register[267] = spike267;        spike_register[268] = spike268;        spike_register[269] = spike269;        spike_register[270] = spike270;        spike_register[271] = spike271;        spike_register[272] = spike272;        spike_register[273] = spike273;        spike_register[274] = spike274;        spike_register[275] = spike275;        spike_register[276] = spike276;        spike_register[277] = spike277;        spike_register[278] = spike278;        spike_register[279] = spike279;        spike_register[280] = spike280;        spike_register[281] = spike281;        spike_register[282] = spike282;        spike_register[283] = spike283;        spike_register[284] = spike284;        spike_register[285] = spike285;        spike_register[286] = spike286;        spike_register[287] = spike287;        spike_register[288] = spike288;        spike_register[289] = spike289;        spike_register[290] = spike290;        spike_register[291] = spike291;        spike_register[292] = spike292;        spike_register[293] = spike293;        spike_register[294] = spike294;        spike_register[295] = spike295;        spike_register[296] = spike296;        spike_register[297] = spike297;        spike_register[298] = spike298;        spike_register[299] = spike299;
        #0.5
        if(clear == 1'b0) begin
            for(i6 = 250; i6 <=299; i6= i6+1) begin
                if(spike_register[i6] == 1 && lock6 == 0) begin
                    lock6 = 1;
                    for(j6 = connection_pointer[i6]; j6 < connection_pointer[i6+1]; j6= j6+1) begin
                        packet6 = #0.1 {neuron_addresses[i6], downstream_connections[j6]};
                    end
                    spike_register[i6] = 0;
                    lock6 = 0;
                end
            end
        end

    end
    always @(clear, lock7, spike300, spike301, spike302, spike303, spike304, spike305, spike306, spike307, spike308, spike309, spike310, spike311, spike312, spike313, spike314, spike315, spike316, spike317, spike318, spike319, spike320, spike321, spike322, spike323, spike324, spike325, spike326, spike327, spike328, spike329, spike330, spike331, spike332, spike333, spike334, spike335, spike336, spike337, spike338, spike339, spike340, spike341, spike342, spike343, spike344, spike345, spike346, spike347, spike348, spike349) begin
        spike_register[300] = spike300;

        spike_register[301] = spike301;        spike_register[302] = spike302;        spike_register[303] = spike303;        spike_register[304] = spike304;        spike_register[305] = spike305;        spike_register[306] = spike306;        spike_register[307] = spike307;        spike_register[308] = spike308;        spike_register[309] = spike309;        spike_register[310] = spike310;        spike_register[311] = spike311;        spike_register[312] = spike312;        spike_register[313] = spike313;        spike_register[314] = spike314;        spike_register[315] = spike315;        spike_register[316] = spike316;        spike_register[317] = spike317;        spike_register[318] = spike318;        spike_register[319] = spike319;        spike_register[320] = spike320;        spike_register[321] = spike321;        spike_register[322] = spike322;        spike_register[323] = spike323;        spike_register[324] = spike324;        spike_register[325] = spike325;        spike_register[326] = spike326;        spike_register[327] = spike327;        spike_register[328] = spike328;        spike_register[329] = spike329;        spike_register[330] = spike330;        spike_register[331] = spike331;        spike_register[332] = spike332;        spike_register[333] = spike333;        spike_register[334] = spike334;        spike_register[335] = spike335;        spike_register[336] = spike336;        spike_register[337] = spike337;        spike_register[338] = spike338;        spike_register[339] = spike339;        spike_register[340] = spike340;        spike_register[341] = spike341;        spike_register[342] = spike342;        spike_register[343] = spike343;        spike_register[344] = spike344;        spike_register[345] = spike345;        spike_register[346] = spike346;        spike_register[347] = spike347;        spike_register[348] = spike348;        spike_register[349] = spike349;
        #0.5
        if(clear == 1'b0) begin
            for(i7 = 300; i7 <=349; i7= i7+1) begin
                if(spike_register[i7] == 1 && lock7 == 0) begin
                    lock7 = 1;
                    for(j7 = connection_pointer[i7]; j7 < connection_pointer[i7+1]; j7= j7+1) begin
                        packet7 = #0.1 {neuron_addresses[i7], downstream_connections[j7]};
                    end
                    spike_register[i7] = 0;
                    lock7 = 0;
                end
            end
        end

    end
    always @(clear, lock8, spike350, spike351, spike352, spike353, spike354, spike355, spike356, spike357, spike358, spike359, spike360, spike361, spike362, spike363, spike364, spike365, spike366, spike367, spike368, spike369, spike370, spike371, spike372, spike373, spike374, spike375, spike376, spike377, spike378, spike379, spike380, spike381, spike382, spike383, spike384, spike385, spike386, spike387, spike388, spike389, spike390, spike391, spike392, spike393, spike394, spike395, spike396, spike397, spike398, spike399) begin
        spike_register[350] = spike350;        spike_register[351] = spike351;        spike_register[352] = spike352;        spike_register[353] = spike353;        spike_register[354] = spike354;        spike_register[355] = spike355;        spike_register[356] = spike356;        spike_register[357] = spike357;        spike_register[358] = spike358;        spike_register[359] = spike359;        spike_register[360] = spike360;        spike_register[361] = spike361;        spike_register[362] = spike362;        spike_register[363] = spike363;        spike_register[364] = spike364;        spike_register[365] = spike365;        spike_register[366] = spike366;        spike_register[367] = spike367;        spike_register[368] = spike368;        spike_register[369] = spike369;        spike_register[370] = spike370;        spike_register[371] = spike371;        spike_register[372] = spike372;        spike_register[373] = spike373;        spike_register[374] = spike374;        spike_register[375] = spike375;        spike_register[376] = spike376;        spike_register[377] = spike377;        spike_register[378] = spike378;        spike_register[379] = spike379;        spike_register[380] = spike380;        spike_register[381] = spike381;        spike_register[382] = spike382;        spike_register[383] = spike383;        spike_register[384] = spike384;        spike_register[385] = spike385;        spike_register[386] = spike386;        spike_register[387] = spike387;        spike_register[388] = spike388;        spike_register[389] = spike389;        spike_register[390] = spike390;        spike_register[391] = spike391;        spike_register[392] = spike392;        spike_register[393] = spike393;        spike_register[394] = spike394;        spike_register[395] = spike395;        spike_register[396] = spike396;        spike_register[397] = spike397;        spike_register[398] = spike398;        spike_register[399] = spike399;
        #0.5
        if(clear == 1'b0) begin
            for(i8 = 350; i8 <=399; i8= i8+1) begin
                if(spike_register[i8] == 1 && lock8 == 0) begin
                    lock8 = 1;
                    for(j8 = connection_pointer[i8]; j8 < connection_pointer[i8+1]; j8= j8+1) begin
                        packet8 = #0.1 {neuron_addresses[i8], downstream_connections[j8]};
                    end
                    spike_register[i8] = 0;
                    lock8 = 0;
                end
            end
        end

    end
    always @(clear, lock9, spike400, spike401, spike402, spike403, spike404, spike405, spike406, spike407, spike408, spike409, spike410, spike411, spike412, spike413, spike414, spike415, spike416, spike417, spike418, spike419, spike420, spike421, spike422, spike423, spike424, spike425, spike426, spike427, spike428, spike429, spike430, spike431, spike432, spike433, spike434, spike435, spike436, spike437, spike438, spike439, spike440, spike441, spike442, spike443, spike444, spike445, spike446, spike447, spike448, spike449) begin
        spike_register[400] = spike400;

        spike_register[401] = spike401;        spike_register[402] = spike402;        spike_register[403] = spike403;        spike_register[404] = spike404;        spike_register[405] = spike405;        spike_register[406] = spike406;        spike_register[407] = spike407;        spike_register[408] = spike408;        spike_register[409] = spike409;        spike_register[410] = spike410;        spike_register[411] = spike411;        spike_register[412] = spike412;        spike_register[413] = spike413;        spike_register[414] = spike414;        spike_register[415] = spike415;        spike_register[416] = spike416;        spike_register[417] = spike417;        spike_register[418] = spike418;        spike_register[419] = spike419;        spike_register[420] = spike420;        spike_register[421] = spike421;        spike_register[422] = spike422;        spike_register[423] = spike423;        spike_register[424] = spike424;        spike_register[425] = spike425;        spike_register[426] = spike426;        spike_register[427] = spike427;        spike_register[428] = spike428;        spike_register[429] = spike429;        spike_register[430] = spike430;        spike_register[431] = spike431;        spike_register[432] = spike432;        spike_register[433] = spike433;        spike_register[434] = spike434;        spike_register[435] = spike435;        spike_register[436] = spike436;        spike_register[437] = spike437;        spike_register[438] = spike438;        spike_register[439] = spike439;        spike_register[440] = spike440;        spike_register[441] = spike441;        spike_register[442] = spike442;        spike_register[443] = spike443;        spike_register[444] = spike444;        spike_register[445] = spike445;        spike_register[446] = spike446;        spike_register[447] = spike447;        spike_register[448] = spike448;        spike_register[449] = spike449;
        #0.5
        if(clear == 1'b0) begin
            for(i9 = 400; i9 <=449; i9= i9+1) begin
                if(spike_register[i9] == 1 && lock9 == 0) begin
                    lock9 = 1;
                    for(j9 = connection_pointer[i9]; j9 < connection_pointer[i9+1]; j9= j9+1) begin
                        packet9 = #0.1 {neuron_addresses[i9], downstream_connections[j9]};
                    end
                    spike_register[i9] = 0;
                    lock9 = 0;
                end
            end
        end

    end
    always @(clear, lock10, spike450, spike451, spike452, spike453, spike454, spike455, spike456, spike457, spike458, spike459, spike460, spike461, spike462, spike463, spike464, spike465, spike466, spike467, spike468, spike469, spike470, spike471, spike472, spike473, spike474, spike475, spike476, spike477, spike478, spike479, spike480, spike481, spike482, spike483, spike484, spike485, spike486, spike487, spike488, spike489, spike490, spike491, spike492, spike493, spike494, spike495, spike496, spike497, spike498, spike499) begin
        spike_register[450] = spike450;        spike_register[451] = spike451;        spike_register[452] = spike452;        spike_register[453] = spike453;        spike_register[454] = spike454;        spike_register[455] = spike455;        spike_register[456] = spike456;        spike_register[457] = spike457;        spike_register[458] = spike458;        spike_register[459] = spike459;        spike_register[460] = spike460;        spike_register[461] = spike461;        spike_register[462] = spike462;        spike_register[463] = spike463;        spike_register[464] = spike464;        spike_register[465] = spike465;        spike_register[466] = spike466;        spike_register[467] = spike467;        spike_register[468] = spike468;        spike_register[469] = spike469;        spike_register[470] = spike470;        spike_register[471] = spike471;        spike_register[472] = spike472;        spike_register[473] = spike473;        spike_register[474] = spike474;        spike_register[475] = spike475;        spike_register[476] = spike476;        spike_register[477] = spike477;        spike_register[478] = spike478;        spike_register[479] = spike479;        spike_register[480] = spike480;        spike_register[481] = spike481;        spike_register[482] = spike482;        spike_register[483] = spike483;        spike_register[484] = spike484;        spike_register[485] = spike485;        spike_register[486] = spike486;        spike_register[487] = spike487;        spike_register[488] = spike488;        spike_register[489] = spike489;        spike_register[490] = spike490;        spike_register[491] = spike491;        spike_register[492] = spike492;        spike_register[493] = spike493;        spike_register[494] = spike494;        spike_register[495] = spike495;        spike_register[496] = spike496;        spike_register[497] = spike497;        spike_register[498] = spike498;        spike_register[499] = spike499;
        #0.5
        if(clear == 1'b0) begin
            for(i10 = 450; i10 <=499; i10= i10+1) begin
                if(spike_register[i10] == 1 && lock10 == 0) begin
                    lock10 = 1;
                    for(j10 = connection_pointer[i10]; j10 < connection_pointer[i10+1]; j10= j10+1) begin
                        packet10 = #0.1 {neuron_addresses[i10], downstream_connections[j10]};
                    end
                    spike_register[i10] = 0;
                    lock10 = 0;
                end
            end
        end

    end
    always @(clear, lock11, spike500, spike501, spike502, spike503, spike504, spike505, spike506, spike507, spike508, spike509, spike510, spike511, spike512, spike513, spike514, spike515, spike516, spike517, spike518, spike519, spike520, spike521, spike522, spike523, spike524, spike525, spike526, spike527, spike528, spike529, spike530, spike531, spike532, spike533, spike534, spike535, spike536, spike537, spike538, spike539, spike540, spike541, spike542, spike543, spike544, spike545, spike546, spike547, spike548, spike549) begin
        spike_register[500] = spike500;

        spike_register[501] = spike501;        spike_register[502] = spike502;        spike_register[503] = spike503;        spike_register[504] = spike504;        spike_register[505] = spike505;        spike_register[506] = spike506;        spike_register[507] = spike507;        spike_register[508] = spike508;        spike_register[509] = spike509;        spike_register[510] = spike510;        spike_register[511] = spike511;        spike_register[512] = spike512;        spike_register[513] = spike513;        spike_register[514] = spike514;        spike_register[515] = spike515;        spike_register[516] = spike516;        spike_register[517] = spike517;        spike_register[518] = spike518;        spike_register[519] = spike519;        spike_register[520] = spike520;        spike_register[521] = spike521;        spike_register[522] = spike522;        spike_register[523] = spike523;        spike_register[524] = spike524;        spike_register[525] = spike525;        spike_register[526] = spike526;        spike_register[527] = spike527;        spike_register[528] = spike528;        spike_register[529] = spike529;        spike_register[530] = spike530;        spike_register[531] = spike531;        spike_register[532] = spike532;        spike_register[533] = spike533;        spike_register[534] = spike534;        spike_register[535] = spike535;        spike_register[536] = spike536;        spike_register[537] = spike537;        spike_register[538] = spike538;        spike_register[539] = spike539;        spike_register[540] = spike540;        spike_register[541] = spike541;        spike_register[542] = spike542;        spike_register[543] = spike543;        spike_register[544] = spike544;        spike_register[545] = spike545;        spike_register[546] = spike546;        spike_register[547] = spike547;        spike_register[548] = spike548;        spike_register[549] = spike549;
        #0.5
        if(clear == 1'b0) begin
            for(i11 = 500; i11 <=549; i11= i11+1) begin
                if(spike_register[i11] == 1 && lock11 == 0) begin
                    lock11 = 1;
                    for(j11 = connection_pointer[i11]; j11 < connection_pointer[i11+1]; j11= j11+1) begin
                        packet11 = #0.1 {neuron_addresses[i11], downstream_connections[j11]};
                    end
                    spike_register[i11] = 0;
                    lock11 = 0;
                end
            end
        end

    end
    always @(clear, lock12, spike550, spike551, spike552, spike553, spike554, spike555, spike556, spike557, spike558, spike559, spike560, spike561, spike562, spike563, spike564, spike565, spike566, spike567, spike568, spike569, spike570, spike571, spike572, spike573, spike574, spike575, spike576, spike577, spike578, spike579, spike580, spike581, spike582, spike583, spike584, spike585, spike586, spike587, spike588, spike589, spike590, spike591, spike592, spike593, spike594, spike595, spike596, spike597, spike598, spike599) begin
        spike_register[550] = spike550;        spike_register[551] = spike551;        spike_register[552] = spike552;        spike_register[553] = spike553;        spike_register[554] = spike554;        spike_register[555] = spike555;        spike_register[556] = spike556;        spike_register[557] = spike557;        spike_register[558] = spike558;        spike_register[559] = spike559;        spike_register[560] = spike560;        spike_register[561] = spike561;        spike_register[562] = spike562;        spike_register[563] = spike563;        spike_register[564] = spike564;        spike_register[565] = spike565;        spike_register[566] = spike566;        spike_register[567] = spike567;        spike_register[568] = spike568;        spike_register[569] = spike569;        spike_register[570] = spike570;        spike_register[571] = spike571;        spike_register[572] = spike572;        spike_register[573] = spike573;        spike_register[574] = spike574;        spike_register[575] = spike575;        spike_register[576] = spike576;        spike_register[577] = spike577;        spike_register[578] = spike578;        spike_register[579] = spike579;        spike_register[580] = spike580;        spike_register[581] = spike581;        spike_register[582] = spike582;        spike_register[583] = spike583;        spike_register[584] = spike584;        spike_register[585] = spike585;        spike_register[586] = spike586;        spike_register[587] = spike587;        spike_register[588] = spike588;        spike_register[589] = spike589;        spike_register[590] = spike590;        spike_register[591] = spike591;        spike_register[592] = spike592;        spike_register[593] = spike593;        spike_register[594] = spike594;        spike_register[595] = spike595;        spike_register[596] = spike596;        spike_register[597] = spike597;        spike_register[598] = spike598;        spike_register[599] = spike599;
        #0.5
        if(clear == 1'b0) begin
            for(i12 = 550; i12 <=599; i12= i12+1) begin
                if(spike_register[i12] == 1 && lock12 == 0) begin
                    lock12 = 1;
                    for(j12 = connection_pointer[i12]; j12 < connection_pointer[i12+1]; j12= j12+1) begin
                        packet12 = #0.1 {neuron_addresses[i12], downstream_connections[j12]};
                    end
                    spike_register[i12] = 0;
                    lock12 = 0;
                end
            end
        end

    end
    always @(clear, lock13, spike600, spike601, spike602, spike603, spike604, spike605, spike606, spike607, spike608, spike609, spike610, spike611, spike612, spike613, spike614, spike615, spike616, spike617, spike618, spike619, spike620, spike621, spike622, spike623, spike624, spike625, spike626, spike627, spike628, spike629, spike630, spike631, spike632, spike633, spike634, spike635, spike636, spike637, spike638, spike639, spike640, spike641, spike642, spike643, spike644, spike645, spike646, spike647, spike648, spike649) begin
        spike_register[600] = spike600;

        spike_register[601] = spike601;        spike_register[602] = spike602;        spike_register[603] = spike603;        spike_register[604] = spike604;        spike_register[605] = spike605;        spike_register[606] = spike606;        spike_register[607] = spike607;        spike_register[608] = spike608;        spike_register[609] = spike609;        spike_register[610] = spike610;        spike_register[611] = spike611;        spike_register[612] = spike612;        spike_register[613] = spike613;        spike_register[614] = spike614;        spike_register[615] = spike615;        spike_register[616] = spike616;        spike_register[617] = spike617;        spike_register[618] = spike618;        spike_register[619] = spike619;        spike_register[620] = spike620;        spike_register[621] = spike621;        spike_register[622] = spike622;        spike_register[623] = spike623;        spike_register[624] = spike624;        spike_register[625] = spike625;        spike_register[626] = spike626;        spike_register[627] = spike627;        spike_register[628] = spike628;        spike_register[629] = spike629;        spike_register[630] = spike630;        spike_register[631] = spike631;        spike_register[632] = spike632;        spike_register[633] = spike633;        spike_register[634] = spike634;        spike_register[635] = spike635;        spike_register[636] = spike636;        spike_register[637] = spike637;        spike_register[638] = spike638;        spike_register[639] = spike639;        spike_register[640] = spike640;        spike_register[641] = spike641;        spike_register[642] = spike642;        spike_register[643] = spike643;        spike_register[644] = spike644;        spike_register[645] = spike645;        spike_register[646] = spike646;        spike_register[647] = spike647;        spike_register[648] = spike648;        spike_register[649] = spike649;
        #0.5
        if(clear == 1'b0) begin
            for(i13 = 600; i13 <=649; i13= i13+1) begin
                if(spike_register[i13] == 1 && lock13 == 0) begin
                    lock13 = 1;
                    for(j13 = connection_pointer[i13]; j13 < connection_pointer[i13+1]; j13= j13+1) begin
                        packet13 = #0.1 {neuron_addresses[i13], downstream_connections[j13]};
                    end
                    spike_register[i13] = 0;
                    lock13 = 0;
                end
            end
        end

    end
    always @(clear, lock14, spike650, spike651, spike652, spike653, spike654, spike655, spike656, spike657, spike658, spike659, spike660, spike661, spike662, spike663, spike664, spike665, spike666, spike667, spike668, spike669, spike670, spike671, spike672, spike673, spike674, spike675, spike676, spike677, spike678, spike679, spike680, spike681, spike682, spike683, spike684, spike685, spike686, spike687, spike688, spike689, spike690, spike691, spike692, spike693, spike694, spike695, spike696, spike697, spike698, spike699) begin
        spike_register[650] = spike650;        spike_register[651] = spike651;        spike_register[652] = spike652;        spike_register[653] = spike653;        spike_register[654] = spike654;        spike_register[655] = spike655;        spike_register[656] = spike656;        spike_register[657] = spike657;        spike_register[658] = spike658;        spike_register[659] = spike659;        spike_register[660] = spike660;        spike_register[661] = spike661;        spike_register[662] = spike662;        spike_register[663] = spike663;        spike_register[664] = spike664;        spike_register[665] = spike665;        spike_register[666] = spike666;        spike_register[667] = spike667;        spike_register[668] = spike668;        spike_register[669] = spike669;        spike_register[670] = spike670;        spike_register[671] = spike671;        spike_register[672] = spike672;        spike_register[673] = spike673;        spike_register[674] = spike674;        spike_register[675] = spike675;        spike_register[676] = spike676;        spike_register[677] = spike677;        spike_register[678] = spike678;        spike_register[679] = spike679;        spike_register[680] = spike680;        spike_register[681] = spike681;        spike_register[682] = spike682;        spike_register[683] = spike683;        spike_register[684] = spike684;        spike_register[685] = spike685;        spike_register[686] = spike686;        spike_register[687] = spike687;        spike_register[688] = spike688;        spike_register[689] = spike689;        spike_register[690] = spike690;        spike_register[691] = spike691;        spike_register[692] = spike692;        spike_register[693] = spike693;        spike_register[694] = spike694;        spike_register[695] = spike695;        spike_register[696] = spike696;        spike_register[697] = spike697;        spike_register[698] = spike698;        spike_register[699] = spike699;
        #0.5
        if(clear == 1'b0) begin
            for(i14 = 650; i14 <=699; i14= i14+1) begin
                if(spike_register[i14] == 1 && lock14 == 0) begin
                    lock14 = 1;
                    for(j14 = connection_pointer[i14]; j14 < connection_pointer[i14+1]; j14= j14+1) begin
                        packet14 = #0.1 {neuron_addresses[i14], downstream_connections[j14]};
                    end
                    spike_register[i14] = 0;
                    lock14 = 0;
                end
            end
        end

    end
    always @(clear, lock15, spike700, spike701, spike702, spike703, spike704, spike705, spike706, spike707, spike708, spike709, spike710, spike711, spike712, spike713, spike714, spike715, spike716, spike717, spike718, spike719, spike720, spike721, spike722, spike723, spike724, spike725, spike726, spike727, spike728, spike729, spike730, spike731, spike732, spike733, spike734, spike735, spike736, spike737, spike738, spike739, spike740, spike741, spike742, spike743, spike744, spike745, spike746, spike747, spike748, spike749) begin
        spike_register[700] = spike700;

        spike_register[701] = spike701;        spike_register[702] = spike702;        spike_register[703] = spike703;        spike_register[704] = spike704;        spike_register[705] = spike705;        spike_register[706] = spike706;        spike_register[707] = spike707;        spike_register[708] = spike708;        spike_register[709] = spike709;        spike_register[710] = spike710;        spike_register[711] = spike711;        spike_register[712] = spike712;        spike_register[713] = spike713;        spike_register[714] = spike714;        spike_register[715] = spike715;        spike_register[716] = spike716;        spike_register[717] = spike717;        spike_register[718] = spike718;        spike_register[719] = spike719;        spike_register[720] = spike720;        spike_register[721] = spike721;        spike_register[722] = spike722;        spike_register[723] = spike723;        spike_register[724] = spike724;        spike_register[725] = spike725;        spike_register[726] = spike726;        spike_register[727] = spike727;        spike_register[728] = spike728;        spike_register[729] = spike729;        spike_register[730] = spike730;        spike_register[731] = spike731;        spike_register[732] = spike732;        spike_register[733] = spike733;        spike_register[734] = spike734;        spike_register[735] = spike735;        spike_register[736] = spike736;        spike_register[737] = spike737;        spike_register[738] = spike738;        spike_register[739] = spike739;        spike_register[740] = spike740;        spike_register[741] = spike741;        spike_register[742] = spike742;        spike_register[743] = spike743;        spike_register[744] = spike744;        spike_register[745] = spike745;        spike_register[746] = spike746;        spike_register[747] = spike747;        spike_register[748] = spike748;        spike_register[749] = spike749;
        #0.5
        if(clear == 1'b0) begin
            for(i15 = 700; i15 <=749; i15= i15+1) begin
                if(spike_register[i15] == 1 && lock15 == 0) begin
                    lock15 = 1;
                    for(j15 = connection_pointer[i15]; j15 < connection_pointer[i15+1]; j15= j15+1) begin
                        packet15 = #0.1 {neuron_addresses[i15], downstream_connections[j15]};
                    end
                    spike_register[i15] = 0;
                    lock15 = 0;
                end
            end
        end

    end
    always @(clear, lock16, spike750, spike751, spike752, spike753, spike754, spike755, spike756, spike757, spike758, spike759, spike760, spike761, spike762, spike763, spike764, spike765, spike766, spike767, spike768, spike769, spike770, spike771, spike772, spike773, spike774, spike775, spike776, spike777, spike778, spike779, spike780, spike781, spike782, spike783, spike784, spike785, spike786, spike787, spike788, spike789, spike790, spike791, spike792, spike793, spike794, spike795, spike796, spike797, spike798, spike799) begin
        spike_register[750] = spike750;        spike_register[751] = spike751;        spike_register[752] = spike752;        spike_register[753] = spike753;        spike_register[754] = spike754;        spike_register[755] = spike755;        spike_register[756] = spike756;        spike_register[757] = spike757;        spike_register[758] = spike758;        spike_register[759] = spike759;        spike_register[760] = spike760;        spike_register[761] = spike761;        spike_register[762] = spike762;        spike_register[763] = spike763;        spike_register[764] = spike764;        spike_register[765] = spike765;        spike_register[766] = spike766;        spike_register[767] = spike767;        spike_register[768] = spike768;        spike_register[769] = spike769;        spike_register[770] = spike770;        spike_register[771] = spike771;        spike_register[772] = spike772;        spike_register[773] = spike773;        spike_register[774] = spike774;        spike_register[775] = spike775;        spike_register[776] = spike776;        spike_register[777] = spike777;        spike_register[778] = spike778;        spike_register[779] = spike779;        spike_register[780] = spike780;        spike_register[781] = spike781;        spike_register[782] = spike782;        spike_register[783] = spike783;        spike_register[784] = spike784;        spike_register[785] = spike785;        spike_register[786] = spike786;        spike_register[787] = spike787;        spike_register[788] = spike788;        spike_register[789] = spike789;        spike_register[790] = spike790;        spike_register[791] = spike791;        spike_register[792] = spike792;        spike_register[793] = spike793;        spike_register[794] = spike794;        spike_register[795] = spike795;        spike_register[796] = spike796;        spike_register[797] = spike797;        spike_register[798] = spike798;        spike_register[799] = spike799;
        #0.5
        if(clear == 1'b0) begin
            for(i16 = 750; i16 <=799; i16= i16+1) begin
                if(spike_register[i16] == 1 && lock16 == 0) begin
                    lock16 = 1;
                    for(j16 = connection_pointer[i16]; j16 < connection_pointer[i16+1]; j16= j16+1) begin
                        packet16 = #0.1 {neuron_addresses[i16], downstream_connections[j16]};
                    end
                    spike_register[i16] = 0;
                    lock16 = 0;
                end
            end
        end

    end
    always @(clear, lock17, spike800, spike801, spike802, spike803, spike804, spike805, spike806, spike807, spike808, spike809, spike810, spike811, spike812, spike813, spike814, spike815, spike816, spike817, spike818, spike819, spike820, spike821, spike822, spike823, spike824, spike825, spike826, spike827, spike828, spike829, spike830, spike831, spike832, spike833, spike834, spike835, spike836, spike837, spike838, spike839, spike840, spike841, spike842, spike843, spike844, spike845, spike846, spike847, spike848, spike849) begin
        spike_register[800] = spike800;

        spike_register[801] = spike801;        spike_register[802] = spike802;        spike_register[803] = spike803;        spike_register[804] = spike804;        spike_register[805] = spike805;        spike_register[806] = spike806;        spike_register[807] = spike807;        spike_register[808] = spike808;        spike_register[809] = spike809;        spike_register[810] = spike810;        spike_register[811] = spike811;        spike_register[812] = spike812;        spike_register[813] = spike813;        spike_register[814] = spike814;        spike_register[815] = spike815;        spike_register[816] = spike816;        spike_register[817] = spike817;        spike_register[818] = spike818;        spike_register[819] = spike819;        spike_register[820] = spike820;        spike_register[821] = spike821;        spike_register[822] = spike822;        spike_register[823] = spike823;        spike_register[824] = spike824;        spike_register[825] = spike825;        spike_register[826] = spike826;        spike_register[827] = spike827;        spike_register[828] = spike828;        spike_register[829] = spike829;        spike_register[830] = spike830;        spike_register[831] = spike831;        spike_register[832] = spike832;        spike_register[833] = spike833;        spike_register[834] = spike834;        spike_register[835] = spike835;        spike_register[836] = spike836;        spike_register[837] = spike837;        spike_register[838] = spike838;        spike_register[839] = spike839;        spike_register[840] = spike840;        spike_register[841] = spike841;        spike_register[842] = spike842;        spike_register[843] = spike843;        spike_register[844] = spike844;        spike_register[845] = spike845;        spike_register[846] = spike846;        spike_register[847] = spike847;        spike_register[848] = spike848;        spike_register[849] = spike849;
        #0.5
        if(clear == 1'b0) begin
            for(i17 = 800; i17 <=849; i17= i17+1) begin
                if(spike_register[i17] == 1 && lock17 == 0) begin
                    lock17 = 1;
                    for(j17 = connection_pointer[i17]; j17 < connection_pointer[i17+1]; j17= j17+1) begin
                        packet17 = #0.1 {neuron_addresses[i17], downstream_connections[j17]};
                    end
                    spike_register[i17] = 0;
                    lock17 = 0;
                end
            end
        end

    end
    always @(clear, lock18, spike850, spike851, spike852, spike853, spike854, spike855, spike856, spike857, spike858, spike859, spike860, spike861, spike862, spike863, spike864, spike865, spike866, spike867, spike868, spike869, spike870, spike871, spike872, spike873, spike874, spike875, spike876, spike877, spike878, spike879, spike880, spike881, spike882, spike883, spike884, spike885, spike886, spike887, spike888, spike889, spike890, spike891, spike892, spike893, spike894, spike895, spike896, spike897, spike898, spike899) begin
        spike_register[850] = spike850;        spike_register[851] = spike851;        spike_register[852] = spike852;        spike_register[853] = spike853;        spike_register[854] = spike854;        spike_register[855] = spike855;        spike_register[856] = spike856;        spike_register[857] = spike857;        spike_register[858] = spike858;        spike_register[859] = spike859;        spike_register[860] = spike860;        spike_register[861] = spike861;        spike_register[862] = spike862;        spike_register[863] = spike863;        spike_register[864] = spike864;        spike_register[865] = spike865;        spike_register[866] = spike866;        spike_register[867] = spike867;        spike_register[868] = spike868;        spike_register[869] = spike869;        spike_register[870] = spike870;        spike_register[871] = spike871;        spike_register[872] = spike872;        spike_register[873] = spike873;        spike_register[874] = spike874;        spike_register[875] = spike875;        spike_register[876] = spike876;        spike_register[877] = spike877;        spike_register[878] = spike878;        spike_register[879] = spike879;        spike_register[880] = spike880;        spike_register[881] = spike881;        spike_register[882] = spike882;        spike_register[883] = spike883;        spike_register[884] = spike884;        spike_register[885] = spike885;        spike_register[886] = spike886;        spike_register[887] = spike887;        spike_register[888] = spike888;        spike_register[889] = spike889;        spike_register[890] = spike890;        spike_register[891] = spike891;        spike_register[892] = spike892;        spike_register[893] = spike893;        spike_register[894] = spike894;        spike_register[895] = spike895;        spike_register[896] = spike896;        spike_register[897] = spike897;        spike_register[898] = spike898;        spike_register[899] = spike899;
        #0.5
        if(clear == 1'b0) begin
            for(i18 = 850; i18 <=899; i18= i18+1) begin
                if(spike_register[i18] == 1 && lock18 == 0) begin
                    lock18 = 1;
                    for(j18 = connection_pointer[i18]; j18 < connection_pointer[i18+1]; j18= j18+1) begin
                        packet18 = #0.1 {neuron_addresses[i18], downstream_connections[j18]};
                    end
                    spike_register[i18] = 0;
                    lock18 = 0;
                end
            end
        end

    end
    always @(clear, lock19, spike900, spike901, spike902, spike903, spike904, spike905, spike906, spike907, spike908, spike909, spike910, spike911, spike912, spike913, spike914, spike915, spike916, spike917, spike918, spike919, spike920, spike921, spike922, spike923, spike924, spike925, spike926, spike927, spike928, spike929, spike930, spike931, spike932, spike933, spike934, spike935, spike936, spike937, spike938, spike939, spike940, spike941, spike942, spike943, spike944, spike945, spike946, spike947, spike948, spike949) begin
        spike_register[900] = spike900;

        spike_register[901] = spike901;        spike_register[902] = spike902;        spike_register[903] = spike903;        spike_register[904] = spike904;        spike_register[905] = spike905;        spike_register[906] = spike906;        spike_register[907] = spike907;        spike_register[908] = spike908;        spike_register[909] = spike909;        spike_register[910] = spike910;        spike_register[911] = spike911;        spike_register[912] = spike912;        spike_register[913] = spike913;        spike_register[914] = spike914;        spike_register[915] = spike915;        spike_register[916] = spike916;        spike_register[917] = spike917;        spike_register[918] = spike918;        spike_register[919] = spike919;        spike_register[920] = spike920;        spike_register[921] = spike921;        spike_register[922] = spike922;        spike_register[923] = spike923;        spike_register[924] = spike924;        spike_register[925] = spike925;        spike_register[926] = spike926;        spike_register[927] = spike927;        spike_register[928] = spike928;        spike_register[929] = spike929;        spike_register[930] = spike930;        spike_register[931] = spike931;        spike_register[932] = spike932;        spike_register[933] = spike933;        spike_register[934] = spike934;        spike_register[935] = spike935;        spike_register[936] = spike936;        spike_register[937] = spike937;        spike_register[938] = spike938;        spike_register[939] = spike939;        spike_register[940] = spike940;        spike_register[941] = spike941;        spike_register[942] = spike942;        spike_register[943] = spike943;        spike_register[944] = spike944;        spike_register[945] = spike945;        spike_register[946] = spike946;        spike_register[947] = spike947;        spike_register[948] = spike948;        spike_register[949] = spike949;
        #0.5
        if(clear == 1'b0) begin
            for(i19 = 900; i19 <=949; i19= i19+1) begin
                if(spike_register[i19] == 1 && lock19 == 0) begin
                    lock19 = 1;
                    for(j19 = connection_pointer[i19]; j19 < connection_pointer[i19+1]; j19= j19+1) begin
                        packet19 = #0.1 {neuron_addresses[i19], downstream_connections[j19]};
                    end
                    spike_register[i19] = 0;
                    lock19 = 0;
                end
            end
        end

    end
    always @(clear, lock20, spike950, spike951, spike952, spike953, spike954, spike955, spike956, spike957, spike958, spike959, spike960, spike961, spike962, spike963, spike964, spike965, spike966, spike967, spike968, spike969, spike970, spike971, spike972, spike973, spike974, spike975, spike976, spike977, spike978, spike979, spike980, spike981, spike982, spike983, spike984, spike985, spike986, spike987, spike988, spike989, spike990, spike991, spike992, spike993, spike994, spike995, spike996, spike997, spike998, spike999) begin
        spike_register[950] = spike950;        spike_register[951] = spike951;        spike_register[952] = spike952;        spike_register[953] = spike953;        spike_register[954] = spike954;        spike_register[955] = spike955;        spike_register[956] = spike956;        spike_register[957] = spike957;        spike_register[958] = spike958;        spike_register[959] = spike959;        spike_register[960] = spike960;        spike_register[961] = spike961;        spike_register[962] = spike962;        spike_register[963] = spike963;        spike_register[964] = spike964;        spike_register[965] = spike965;        spike_register[966] = spike966;        spike_register[967] = spike967;        spike_register[968] = spike968;        spike_register[969] = spike969;        spike_register[970] = spike970;        spike_register[971] = spike971;        spike_register[972] = spike972;        spike_register[973] = spike973;        spike_register[974] = spike974;        spike_register[975] = spike975;        spike_register[976] = spike976;        spike_register[977] = spike977;        spike_register[978] = spike978;        spike_register[979] = spike979;        spike_register[980] = spike980;        spike_register[981] = spike981;        spike_register[982] = spike982;        spike_register[983] = spike983;        spike_register[984] = spike984;        spike_register[985] = spike985;        spike_register[986] = spike986;        spike_register[987] = spike987;        spike_register[988] = spike988;        spike_register[989] = spike989;        spike_register[990] = spike990;        spike_register[991] = spike991;        spike_register[992] = spike992;        spike_register[993] = spike993;        spike_register[994] = spike994;        spike_register[995] = spike995;        spike_register[996] = spike996;        spike_register[997] = spike997;        spike_register[998] = spike998;        spike_register[999] = spike999;
        #0.5
        if(clear == 1'b0) begin
            for(i20 = 950; i20 <=999; i20= i20+1) begin
                if(spike_register[i20] == 1 && lock20 == 0) begin
                    lock20 = 1;
                    for(j20 = connection_pointer[i20]; j20 < connection_pointer[i20+1]; j20= j20+1) begin
                        packet20 = #0.1 {neuron_addresses[i20], downstream_connections[j20]};
                    end
                    spike_register[i20] = 0;
                    lock20 = 0;
                end
            end
        end

    end
    always @(clear, lock21, spike1000, spike1001, spike1002, spike1003, spike1004, spike1005, spike1006, spike1007, spike1008, spike1009, spike1010, spike1011, spike1012, spike1013, spike1014, spike1015, spike1016, spike1017, spike1018, spike1019, spike1020, spike1021, spike1022, spike1023) begin
        spike_register[1000] = spike1000;

        spike_register[1001] = spike1001;        spike_register[1002] = spike1002;        spike_register[1003] = spike1003;        spike_register[1004] = spike1004;        spike_register[1005] = spike1005;        spike_register[1006] = spike1006;        spike_register[1007] = spike1007;        spike_register[1008] = spike1008;        spike_register[1009] = spike1009;        spike_register[1010] = spike1010;        spike_register[1011] = spike1011;        spike_register[1012] = spike1012;        spike_register[1013] = spike1013;        spike_register[1014] = spike1014;        spike_register[1015] = spike1015;        spike_register[1016] = spike1016;        spike_register[1017] = spike1017;        spike_register[1018] = spike1018;        spike_register[1019] = spike1019;        spike_register[1020] = spike1020;        spike_register[1021] = spike1021;        spike_register[1022] = spike1022;        spike_register[1023] = spike1023;
        #0.5
        if(clear == 1'b0) begin
            for(i21 = 1000; i21 <=1049; i21= i21+1) begin
                if(spike_register[i21] == 1 && lock21 == 0) begin
                    lock21 = 1;
                    for(j21 = connection_pointer[i21]; j21 < connection_pointer[i21+1]; j21= j21+1) begin
                        packet21 = #0.1 {neuron_addresses[i21], downstream_connections[j21]};
                    end
                    spike_register[i21] = 0;
                    lock21 = 0;
                end
            end
        end

    end
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
    reg[18:0] i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21;
    reg[18:0] j1, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, module network_interface_scaled (
        input wire spike0,
    input wire spike1,    input wire spike2,    input wire spike3,    input wire spike4,    input wire spike5,    input wire spike6,    input wire spike7,    input wire spike8,    input wire spike9,    input wire spike10,    input wire spike11,    input wire spike12,    input wire spike13,    input wire spike14,    input wire spike15,    input wire spike16,    input wire spike17,    input wire spike18,    input wire spike19,    input wire spike20,    input wire spike21,    input wire spike22,    input wire spike23,    input wire spike24,    input wire spike25,    input wire spike26,    input wire spike27,    input wire spike28,    input wire spike29,    input wire spike30,    input wire spike31,    input wire spike32,    input wire spike33,    input wire spike34,    input wire spike35,    input wire spike36,    input wire spike37,    input wire spike38,    input wire spike39,    input wire spike40,    input wire spike41,    input wire spike42,    input wire spike43,    input wire spike44,    input wire spike45,    input wire spike46,    input wire spike47,    input wire spike48,    input wire spike49,    input wire spike50,    input wire spike51,    input wire spike52,    input wire spike53,    input wire spike54,    input wire spike55,    input wire spike56,    input wire spike57,    input wire spike58,    input wire spike59,    input wire spike60,    input wire spike61,    input wire spike62,    input wire spike63,    input wire spike64,    input wire spike65,    input wire spike66,    input wire spike67,    input wire spike68,    input wire spike69,    input wire spike70,    input wire spike71,    input wire spike72,    input wire spike73,    input wire spike74,    input wire spike75,    input wire spike76,    input wire spike77,    input wire spike78,    input wire spike79,    input wire spike80,    input wire spike81,    input wire spike82,    input wire spike83,    input wire spike84,    input wire spike85,    input wire spike86,    input wire spike87,    input wire spike88,    input wire spike89,    input wire spike90,    input wire spike91,    input wire spike92,    input wire spike93,    input wire spike94,    input wire spike95,    input wire spike96,    input wire spike97,    input wire spike98,    input wire spike99,    input wire spike100,
    input wire spike101,    input wire spike102,    input wire spike103,    input wire spike104,    input wire spike105,    input wire spike106,    input wire spike107,    input wire spike108,    input wire spike109,    input wire spike110,    input wire spike111,    input wire spike112,    input wire spike113,    input wire spike114,    input wire spike115,    input wire spike116,    input wire spike117,    input wire spike118,    input wire spike119,    input wire spike120,    input wire spike121,    input wire spike122,    input wire spike123,    input wire spike124,    input wire spike125,    input wire spike126,    input wire spike127,    input wire spike128,    input wire spike129,    input wire spike130,    input wire spike131,    input wire spike132,    input wire spike133,    input wire spike134,    input wire spike135,    input wire spike136,    input wire spike137,    input wire spike138,    input wire spike139,    input wire spike140,    input wire spike141,    input wire spike142,    input wire spike143,    input wire spike144,    input wire spike145,    input wire spike146,    input wire spike147,    input wire spike148,    input wire spike149,    input wire spike150,    input wire spike151,    input wire spike152,    input wire spike153,    input wire spike154,    input wire spike155,    input wire spike156,    input wire spike157,    input wire spike158,    input wire spike159,    input wire spike160,    input wire spike161,    input wire spike162,    input wire spike163,    input wire spike164,    input wire spike165,    input wire spike166,    input wire spike167,    input wire spike168,    input wire spike169,    input wire spike170,    input wire spike171,    input wire spike172,    input wire spike173,    input wire spike174,    input wire spike175,    input wire spike176,    input wire spike177,    input wire spike178,    input wire spike179,    input wire spike180,    input wire spike181,    input wire spike182,    input wire spike183,    input wire spike184,    input wire spike185,    input wire spike186,    input wire spike187,    input wire spike188,    input wire spike189,    input wire spike190,    input wire spike191,    input wire spike192,    input wire spike193,    input wire spike194,    input wire spike195,    input wire spike196,    input wire spike197,    input wire spike198,    input wire spike199,    input wire spike200,
    input wire spike201,    input wire spike202,    input wire spike203,    input wire spike204,    input wire spike205,    input wire spike206,    input wire spike207,    input wire spike208,    input wire spike209,    input wire spike210,    input wire spike211,    input wire spike212,    input wire spike213,    input wire spike214,    input wire spike215,    input wire spike216,    input wire spike217,    input wire spike218,    input wire spike219,    input wire spike220,    input wire spike221,    input wire spike222,    input wire spike223,    input wire spike224,    input wire spike225,    input wire spike226,    input wire spike227,    input wire spike228,    input wire spike229,    input wire spike230,    input wire spike231,    input wire spike232,    input wire spike233,    input wire spike234,    input wire spike235,    input wire spike236,    input wire spike237,    input wire spike238,    input wire spike239,    input wire spike240,    input wire spike241,    input wire spike242,    input wire spike243,    input wire spike244,    input wire spike245,    input wire spike246,    input wire spike247,    input wire spike248,    input wire spike249,    input wire spike250,    input wire spike251,    input wire spike252,    input wire spike253,    input wire spike254,    input wire spike255,    input wire spike256,    input wire spike257,    input wire spike258,    input wire spike259,    input wire spike260,    input wire spike261,    input wire spike262,    input wire spike263,    input wire spike264,    input wire spike265,    input wire spike266,    input wire spike267,    input wire spike268,    input wire spike269,    input wire spike270,    input wire spike271,    input wire spike272,    input wire spike273,    input wire spike274,    input wire spike275,    input wire spike276,    input wire spike277,    input wire spike278,    input wire spike279,    input wire spike280,    input wire spike281,    input wire spike282,    input wire spike283,    input wire spike284,    input wire spike285,    input wire spike286,    input wire spike287,    input wire spike288,    input wire spike289,    input wire spike290,    input wire spike291,    input wire spike292,    input wire spike293,    input wire spike294,    input wire spike295,    input wire spike296,    input wire spike297,    input wire spike298,    input wire spike299,    input wire spike300,
    input wire spike301,    input wire spike302,    input wire spike303,    input wire spike304,    input wire spike305,    input wire spike306,    input wire spike307,    input wire spike308,    input wire spike309,    input wire spike310,    input wire spike311,    input wire spike312,    input wire spike313,    input wire spike314,    input wire spike315,    input wire spike316,    input wire spike317,    input wire spike318,    input wire spike319,    input wire spike320,    input wire spike321,    input wire spike322,    input wire spike323,    input wire spike324,    input wire spike325,    input wire spike326,    input wire spike327,    input wire spike328,    input wire spike329,    input wire spike330,    input wire spike331,    input wire spike332,    input wire spike333,    input wire spike334,    input wire spike335,    input wire spike336,    input wire spike337,    input wire spike338,    input wire spike339,    input wire spike340,    input wire spike341,    input wire spike342,    input wire spike343,    input wire spike344,    input wire spike345,    input wire spike346,    input wire spike347,    input wire spike348,    input wire spike349,    input wire spike350,    input wire spike351,    input wire spike352,    input wire spike353,    input wire spike354,    input wire spike355,    input wire spike356,    input wire spike357,    input wire spike358,    input wire spike359,    input wire spike360,    input wire spike361,    input wire spike362,    input wire spike363,    input wire spike364,    input wire spike365,    input wire spike366,    input wire spike367,    input wire spike368,    input wire spike369,    input wire spike370,    input wire spike371,    input wire spike372,    input wire spike373,    input wire spike374,    input wire spike375,    input wire spike376,    input wire spike377,    input wire spike378,    input wire spike379,    input wire spike380,    input wire spike381,    input wire spike382,    input wire spike383,    input wire spike384,    input wire spike385,    input wire spike386,    input wire spike387,    input wire spike388,    input wire spike389,    input wire spike390,    input wire spike391,    input wire spike392,    input wire spike393,    input wire spike394,    input wire spike395,    input wire spike396,    input wire spike397,    input wire spike398,    input wire spike399,    input wire spike400,
    input wire spike401,    input wire spike402,    input wire spike403,    input wire spike404,    input wire spike405,    input wire spike406,    input wire spike407,    input wire spike408,    input wire spike409,    input wire spike410,    input wire spike411,    input wire spike412,    input wire spike413,    input wire spike414,    input wire spike415,    input wire spike416,    input wire spike417,    input wire spike418,    input wire spike419,    input wire spike420,    input wire spike421,    input wire spike422,    input wire spike423,    input wire spike424,    input wire spike425,    input wire spike426,    input wire spike427,    input wire spike428,    input wire spike429,    input wire spike430,    input wire spike431,    input wire spike432,    input wire spike433,    input wire spike434,    input wire spike435,    input wire spike436,    input wire spike437,    input wire spike438,    input wire spike439,    input wire spike440,    input wire spike441,    input wire spike442,    input wire spike443,    input wire spike444,    input wire spike445,    input wire spike446,    input wire spike447,    input wire spike448,    input wire spike449,    input wire spike450,    input wire spike451,    input wire spike452,    input wire spike453,    input wire spike454,    input wire spike455,    input wire spike456,    input wire spike457,    input wire spike458,    input wire spike459,    input wire spike460,    input wire spike461,    input wire spike462,    input wire spike463,    input wire spike464,    input wire spike465,    input wire spike466,    input wire spike467,    input wire spike468,    input wire spike469,    input wire spike470,    input wire spike471,    input wire spike472,    input wire spike473,    input wire spike474,    input wire spike475,    input wire spike476,    input wire spike477,    input wire spike478,    input wire spike479,    input wire spike480,    input wire spike481,    input wire spike482,    input wire spike483,    input wire spike484,    input wire spike485,    input wire spike486,    input wire spike487,    input wire spike488,    input wire spike489,    input wire spike490,    input wire spike491,    input wire spike492,    input wire spike493,    input wire spike494,    input wire spike495,    input wire spike496,    input wire spike497,    input wire spike498,    input wire spike499,    input wire spike500,
    input wire spike501,    input wire spike502,    input wire spike503,    input wire spike504,    input wire spike505,    input wire spike506,    input wire spike507,    input wire spike508,    input wire spike509,    input wire spike510,    input wire spike511,    input wire spike512,    input wire spike513,    input wire spike514,    input wire spike515,    input wire spike516,    input wire spike517,    input wire spike518,    input wire spike519,    input wire spike520,    input wire spike521,    input wire spike522,    input wire spike523,    input wire spike524,    input wire spike525,    input wire spike526,    input wire spike527,    input wire spike528,    input wire spike529,    input wire spike530,    input wire spike531,    input wire spike532,    input wire spike533,    input wire spike534,    input wire spike535,    input wire spike536,    input wire spike537,    input wire spike538,    input wire spike539,    input wire spike540,    input wire spike541,    input wire spike542,    input wire spike543,    input wire spike544,    input wire spike545,    input wire spike546,    input wire spike547,    input wire spike548,    input wire spike549,    input wire spike550,    input wire spike551,    input wire spike552,    input wire spike553,    input wire spike554,    input wire spike555,    input wire spike556,    input wire spike557,    input wire spike558,    input wire spike559,    input wire spike560,    input wire spike561,    input wire spike562,    input wire spike563,    input wire spike564,    input wire spike565,    input wire spike566,    input wire spike567,    input wire spike568,    input wire spike569,    input wire spike570,    input wire spike571,    input wire spike572,    input wire spike573,    input wire spike574,    input wire spike575,    input wire spike576,    input wire spike577,    input wire spike578,    input wire spike579,    input wire spike580,    input wire spike581,    input wire spike582,    input wire spike583,    input wire spike584,    input wire spike585,    input wire spike586,    input wire spike587,    input wire spike588,    input wire spike589,    input wire spike590,    input wire spike591,    input wire spike592,    input wire spike593,    input wire spike594,    input wire spike595,    input wire spike596,    input wire spike597,    input wire spike598,    input wire spike599,    input wire spike600,
    input wire spike601,    input wire spike602,    input wire spike603,    input wire spike604,    input wire spike605,    input wire spike606,    input wire spike607,    input wire spike608,    input wire spike609,    input wire spike610,    input wire spike611,    input wire spike612,    input wire spike613,    input wire spike614,    input wire spike615,    input wire spike616,    input wire spike617,    input wire spike618,    input wire spike619,    input wire spike620,    input wire spike621,    input wire spike622,    input wire spike623,    input wire spike624,    input wire spike625,    input wire spike626,    input wire spike627,    input wire spike628,    input wire spike629,    input wire spike630,    input wire spike631,    input wire spike632,    input wire spike633,    input wire spike634,    input wire spike635,    input wire spike636,    input wire spike637,    input wire spike638,    input wire spike639,    input wire spike640,    input wire spike641,    input wire spike642,    input wire spike643,    input wire spike644,    input wire spike645,    input wire spike646,    input wire spike647,    input wire spike648,    input wire spike649,    input wire spike650,    input wire spike651,    input wire spike652,    input wire spike653,    input wire spike654,    input wire spike655,    input wire spike656,    input wire spike657,    input wire spike658,    input wire spike659,    input wire spike660,    input wire spike661,    input wire spike662,    input wire spike663,    input wire spike664,    input wire spike665,    input wire spike666,    input wire spike667,    input wire spike668,    input wire spike669,    input wire spike670,    input wire spike671,    input wire spike672,    input wire spike673,    input wire spike674,    input wire spike675,    input wire spike676,    input wire spike677,    input wire spike678,    input wire spike679,    input wire spike680,    input wire spike681,    input wire spike682,    input wire spike683,    input wire spike684,    input wire spike685,    input wire spike686,    input wire spike687,    input wire spike688,    input wire spike689,    input wire spike690,    input wire spike691,    input wire spike692,    input wire spike693,    input wire spike694,    input wire spike695,    input wire spike696,    input wire spike697,    input wire spike698,    input wire spike699,    input wire spike700,
    input wire spike701,    input wire spike702,    input wire spike703,    input wire spike704,    input wire spike705,    input wire spike706,    input wire spike707,    input wire spike708,    input wire spike709,    input wire spike710,    input wire spike711,    input wire spike712,    input wire spike713,    input wire spike714,    input wire spike715,    input wire spike716,    input wire spike717,    input wire spike718,    input wire spike719,    input wire spike720,    input wire spike721,    input wire spike722,    input wire spike723,    input wire spike724,    input wire spike725,    input wire spike726,    input wire spike727,    input wire spike728,    input wire spike729,    input wire spike730,    input wire spike731,    input wire spike732,    input wire spike733,    input wire spike734,    input wire spike735,    input wire spike736,    input wire spike737,    input wire spike738,    input wire spike739,    input wire spike740,    input wire spike741,    input wire spike742,    input wire spike743,    input wire spike744,    input wire spike745,    input wire spike746,    input wire spike747,    input wire spike748,    input wire spike749,    input wire spike750,    input wire spike751,    input wire spike752,    input wire spike753,    input wire spike754,    input wire spike755,    input wire spike756,    input wire spike757,    input wire spike758,    input wire spike759,    input wire spike760,    input wire spike761,    input wire spike762,    input wire spike763,    input wire spike764,    input wire spike765,    input wire spike766,    input wire spike767,    input wire spike768,    input wire spike769,    input wire spike770,    input wire spike771,    input wire spike772,    input wire spike773,    input wire spike774,    input wire spike775,    input wire spike776,    input wire spike777,    input wire spike778,    input wire spike779,    input wire spike780,    input wire spike781,    input wire spike782,    input wire spike783,    input wire spike784,    input wire spike785,    input wire spike786,    input wire spike787,    input wire spike788,    input wire spike789,    input wire spike790,    input wire spike791,    input wire spike792,    input wire spike793,    input wire spike794,    input wire spike795,    input wire spike796,    input wire spike797,    input wire spike798,    input wire spike799,    input wire spike800,
    input wire spike801,    input wire spike802,    input wire spike803,    input wire spike804,    input wire spike805,    input wire spike806,    input wire spike807,    input wire spike808,    input wire spike809,    input wire spike810,    input wire spike811,    input wire spike812,    input wire spike813,    input wire spike814,    input wire spike815,    input wire spike816,    input wire spike817,    input wire spike818,    input wire spike819,    input wire spike820,    input wire spike821,    input wire spike822,    input wire spike823,    input wire spike824,    input wire spike825,    input wire spike826,    input wire spike827,    input wire spike828,    input wire spike829,    input wire spike830,    input wire spike831,    input wire spike832,    input wire spike833,    input wire spike834,    input wire spike835,    input wire spike836,    input wire spike837,    input wire spike838,    input wire spike839,    input wire spike840,    input wire spike841,    input wire spike842,    input wire spike843,    input wire spike844,    input wire spike845,    input wire spike846,    input wire spike847,    input wire spike848,    input wire spike849,    input wire spike850,    input wire spike851,    input wire spike852,    input wire spike853,    input wire spike854,    input wire spike855,    input wire spike856,    input wire spike857,    input wire spike858,    input wire spike859,    input wire spike860,    input wire spike861,    input wire spike862,    input wire spike863,    input wire spike864,    input wire spike865,    input wire spike866,    input wire spike867,    input wire spike868,    input wire spike869,    input wire spike870,    input wire spike871,    input wire spike872,    input wire spike873,    input wire spike874,    input wire spike875,    input wire spike876,    input wire spike877,    input wire spike878,    input wire spike879,    input wire spike880,    input wire spike881,    input wire spike882,    input wire spike883,    input wire spike884,    input wire spike885,    input wire spike886,    input wire spike887,    input wire spike888,    input wire spike889,    input wire spike890,    input wire spike891,    input wire spike892,    input wire spike893,    input wire spike894,    input wire spike895,    input wire spike896,    input wire spike897,    input wire spike898,    input wire spike899,    input wire spike900,
    input wire spike901,    input wire spike902,    input wire spike903,    input wire spike904,    input wire spike905,    input wire spike906,    input wire spike907,    input wire spike908,    input wire spike909,    input wire spike910,    input wire spike911,    input wire spike912,    input wire spike913,    input wire spike914,    input wire spike915,    input wire spike916,    input wire spike917,    input wire spike918,    input wire spike919,    input wire spike920,    input wire spike921,    input wire spike922,    input wire spike923,    input wire spike924,    input wire spike925,    input wire spike926,    input wire spike927,    input wire spike928,    input wire spike929,    input wire spike930,    input wire spike931,    input wire spike932,    input wire spike933,    input wire spike934,    input wire spike935,    input wire spike936,    input wire spike937,    input wire spike938,    input wire spike939,    input wire spike940,    input wire spike941,    input wire spike942,    input wire spike943,    input wire spike944,    input wire spike945,    input wire spike946,    input wire spike947,    input wire spike948,    input wire spike949,    input wire spike950,    input wire spike951,    input wire spike952,    input wire spike953,    input wire spike954,    input wire spike955,    input wire spike956,    input wire spike957,    input wire spike958,    input wire spike959,    input wire spike960,    input wire spike961,    input wire spike962,    input wire spike963,    input wire spike964,    input wire spike965,    input wire spike966,    input wire spike967,    input wire spike968,    input wire spike969,    input wire spike970,    input wire spike971,    input wire spike972,    input wire spike973,    input wire spike974,    input wire spike975,    input wire spike976,    input wire spike977,    input wire spike978,    input wire spike979,    input wire spike980,    input wire spike981,    input wire spike982,    input wire spike983,    input wire spike984,    input wire spike985,    input wire spike986,    input wire spike987,    input wire spike988,    input wire spike989,    input wire spike990,    input wire spike991,    input wire spike992,    input wire spike993,    input wire spike994,    input wire spike995,    input wire spike996,    input wire spike997,    input wire spike998,    input wire spike999,    input wire spike1000,
    input wire spike1001,    input wire spike1002,    input wire spike1003,    input wire spike1004,    input wire spike1005,    input wire spike1006,    input wire spike1007,    input wire spike1008,    input wire spike1009,    input wire spike1010,    input wire spike1011,    input wire spike1012,    input wire spike1013,    input wire spike1014,    input wire spike1015,    input wire spike1016,    input wire spike1017,    input wire spike1018,    input wire spike1019,    input wire spike1020,    input wire spike1021,    input wire spike1022,    input wire spike1023,
    output wire output
);

    parameter number_of_neurons= 1024;
    reg spike_register[0:number_of_neurons-1];
    always @(clear, lock1, spike0, spike1, spike2, spike3, spike4, spike5, spike6, spike7, spike8, spike9, spike10, spike11, spike12, spike13, spike14, spike15, spike16, spike17, spike18, spike19, spike20, spike21, spike22, spike23, spike24, spike25, spike26, spike27, spike28, spike29, spike30, spike31, spike32, spike33, spike34, spike35, spike36, spike37, spike38, spike39, spike40, spike41, spike42, spike43, spike44, spike45, spike46, spike47, spike48, spike49) begin
        spike_register[0] = spike0;

        spike_register[1] = spike1;        spike_register[2] = spike2;        spike_register[3] = spike3;        spike_register[4] = spike4;        spike_register[5] = spike5;        spike_register[6] = spike6;        spike_register[7] = spike7;        spike_register[8] = spike8;        spike_register[9] = spike9;        spike_register[10] = spike10;        spike_register[11] = spike11;        spike_register[12] = spike12;        spike_register[13] = spike13;        spike_register[14] = spike14;        spike_register[15] = spike15;        spike_register[16] = spike16;        spike_register[17] = spike17;        spike_register[18] = spike18;        spike_register[19] = spike19;        spike_register[20] = spike20;        spike_register[21] = spike21;        spike_register[22] = spike22;        spike_register[23] = spike23;        spike_register[24] = spike24;        spike_register[25] = spike25;        spike_register[26] = spike26;        spike_register[27] = spike27;        spike_register[28] = spike28;        spike_register[29] = spike29;        spike_register[30] = spike30;        spike_register[31] = spike31;        spike_register[32] = spike32;        spike_register[33] = spike33;        spike_register[34] = spike34;        spike_register[35] = spike35;        spike_register[36] = spike36;        spike_register[37] = spike37;        spike_register[38] = spike38;        spike_register[39] = spike39;        spike_register[40] = spike40;        spike_register[41] = spike41;        spike_register[42] = spike42;        spike_register[43] = spike43;        spike_register[44] = spike44;        spike_register[45] = spike45;        spike_register[46] = spike46;        spike_register[47] = spike47;        spike_register[48] = spike48;        spike_register[49] = spike49;
        #0.5
        if(clear == 1'b0) begin
            for(i1 = 0; i1 <=49; i1= i1+1) begin
                if(spike_register[i1] == 1 && lock1 == 0) begin
                    lock1 = 1;
                    for(j1 = connection_pointer[i1]; j1 < connection_pointer[i1+1]; j1= j1+1) begin
                        packet1 = #0.1 {neuron_addresses[i1], downstream_connections[j1]};
                    end
                    spike_register[i1] = 0;
                    lock1 = 0;
                end
            end
        end

    end
    always @(clear, lock2, spike50, spike51, spike52, spike53, spike54, spike55, spike56, spike57, spike58, spike59, spike60, spike61, spike62, spike63, spike64, spike65, spike66, spike67, spike68, spike69, spike70, spike71, spike72, spike73, spike74, spike75, spike76, spike77, spike78, spike79, spike80, spike81, spike82, spike83, spike84, spike85, spike86, spike87, spike88, spike89, spike90, spike91, spike92, spike93, spike94, spike95, spike96, spike97, spike98, spike99) begin
        spike_register[50] = spike50;        spike_register[51] = spike51;        spike_register[52] = spike52;        spike_register[53] = spike53;        spike_register[54] = spike54;        spike_register[55] = spike55;        spike_register[56] = spike56;        spike_register[57] = spike57;        spike_register[58] = spike58;        spike_register[59] = spike59;        spike_register[60] = spike60;        spike_register[61] = spike61;        spike_register[62] = spike62;        spike_register[63] = spike63;        spike_register[64] = spike64;        spike_register[65] = spike65;        spike_register[66] = spike66;        spike_register[67] = spike67;        spike_register[68] = spike68;        spike_register[69] = spike69;        spike_register[70] = spike70;        spike_register[71] = spike71;        spike_register[72] = spike72;        spike_register[73] = spike73;        spike_register[74] = spike74;        spike_register[75] = spike75;        spike_register[76] = spike76;        spike_register[77] = spike77;        spike_register[78] = spike78;        spike_register[79] = spike79;        spike_register[80] = spike80;        spike_register[81] = spike81;        spike_register[82] = spike82;        spike_register[83] = spike83;        spike_register[84] = spike84;        spike_register[85] = spike85;        spike_register[86] = spike86;        spike_register[87] = spike87;        spike_register[88] = spike88;        spike_register[89] = spike89;        spike_register[90] = spike90;        spike_register[91] = spike91;        spike_register[92] = spike92;        spike_register[93] = spike93;        spike_register[94] = spike94;        spike_register[95] = spike95;        spike_register[96] = spike96;        spike_register[97] = spike97;        spike_register[98] = spike98;        spike_register[99] = spike99;
        #0.5
        if(clear == 1'b0) begin
            for(i2 = 50; i2 <=99; i2= i2+1) begin
                if(spike_register[i2] == 1 && lock2 == 0) begin
                    lock2 = 1;
                    for(j2 = connection_pointer[i2]; j2 < connection_pointer[i2+1]; j2= j2+1) begin
                        packet2 = #0.1 {neuron_addresses[i2], downstream_connections[j2]};
                    end
                    spike_register[i2] = 0;
                    lock2 = 0;
                end
            end
        end

    end
    always @(clear, lock3, spike100, spike101, spike102, spike103, spike104, spike105, spike106, spike107, spike108, spike109, spike110, spike111, spike112, spike113, spike114, spike115, spike116, spike117, spike118, spike119, spike120, spike121, spike122, spike123, spike124, spike125, spike126, spike127, spike128, spike129, spike130, spike131, spike132, spike133, spike134, spike135, spike136, spike137, spike138, spike139, spike140, spike141, spike142, spike143, spike144, spike145, spike146, spike147, spike148, spike149) begin
        spike_register[100] = spike100;

        spike_register[101] = spike101;        spike_register[102] = spike102;        spike_register[103] = spike103;        spike_register[104] = spike104;        spike_register[105] = spike105;        spike_register[106] = spike106;        spike_register[107] = spike107;        spike_register[108] = spike108;        spike_register[109] = spike109;        spike_register[110] = spike110;        spike_register[111] = spike111;        spike_register[112] = spike112;        spike_register[113] = spike113;        spike_register[114] = spike114;        spike_register[115] = spike115;        spike_register[116] = spike116;        spike_register[117] = spike117;        spike_register[118] = spike118;        spike_register[119] = spike119;        spike_register[120] = spike120;        spike_register[121] = spike121;        spike_register[122] = spike122;        spike_register[123] = spike123;        spike_register[124] = spike124;        spike_register[125] = spike125;        spike_register[126] = spike126;        spike_register[127] = spike127;        spike_register[128] = spike128;        spike_register[129] = spike129;        spike_register[130] = spike130;        spike_register[131] = spike131;        spike_register[132] = spike132;        spike_register[133] = spike133;        spike_register[134] = spike134;        spike_register[135] = spike135;        spike_register[136] = spike136;        spike_register[137] = spike137;        spike_register[138] = spike138;        spike_register[139] = spike139;        spike_register[140] = spike140;        spike_register[141] = spike141;        spike_register[142] = spike142;        spike_register[143] = spike143;        spike_register[144] = spike144;        spike_register[145] = spike145;        spike_register[146] = spike146;        spike_register[147] = spike147;        spike_register[148] = spike148;        spike_register[149] = spike149;
        #0.5
        if(clear == 1'b0) begin
            for(i3 = 100; i3 <=149; i3= i3+1) begin
                if(spike_register[i3] == 1 && lock3 == 0) begin
                    lock3 = 1;
                    for(j3 = connection_pointer[i3]; j3 < connection_pointer[i3+1]; j3= j3+1) begin
                        packet3 = #0.1 {neuron_addresses[i3], downstream_connections[j3]};
                    end
                    spike_register[i3] = 0;
                    lock3 = 0;
                end
            end
        end

    end
    always @(clear, lock4, spike150, spike151, spike152, spike153, spike154, spike155, spike156, spike157, spike158, spike159, spike160, spike161, spike162, spike163, spike164, spike165, spike166, spike167, spike168, spike169, spike170, spike171, spike172, spike173, spike174, spike175, spike176, spike177, spike178, spike179, spike180, spike181, spike182, spike183, spike184, spike185, spike186, spike187, spike188, spike189, spike190, spike191, spike192, spike193, spike194, spike195, spike196, spike197, spike198, spike199) begin
        spike_register[150] = spike150;        spike_register[151] = spike151;        spike_register[152] = spike152;        spike_register[153] = spike153;        spike_register[154] = spike154;        spike_register[155] = spike155;        spike_register[156] = spike156;        spike_register[157] = spike157;        spike_register[158] = spike158;        spike_register[159] = spike159;        spike_register[160] = spike160;        spike_register[161] = spike161;        spike_register[162] = spike162;        spike_register[163] = spike163;        spike_register[164] = spike164;        spike_register[165] = spike165;        spike_register[166] = spike166;        spike_register[167] = spike167;        spike_register[168] = spike168;        spike_register[169] = spike169;        spike_register[170] = spike170;        spike_register[171] = spike171;        spike_register[172] = spike172;        spike_register[173] = spike173;        spike_register[174] = spike174;        spike_register[175] = spike175;        spike_register[176] = spike176;        spike_register[177] = spike177;        spike_register[178] = spike178;        spike_register[179] = spike179;        spike_register[180] = spike180;        spike_register[181] = spike181;        spike_register[182] = spike182;        spike_register[183] = spike183;        spike_register[184] = spike184;        spike_register[185] = spike185;        spike_register[186] = spike186;        spike_register[187] = spike187;        spike_register[188] = spike188;        spike_register[189] = spike189;        spike_register[190] = spike190;        spike_register[191] = spike191;        spike_register[192] = spike192;        spike_register[193] = spike193;        spike_register[194] = spike194;        spike_register[195] = spike195;        spike_register[196] = spike196;        spike_register[197] = spike197;        spike_register[198] = spike198;        spike_register[199] = spike199;
        #0.5
        if(clear == 1'b0) begin
            for(i4 = 150; i4 <=199; i4= i4+1) begin
                if(spike_register[i4] == 1 && lock4 == 0) begin
                    lock4 = 1;
                    for(j4 = connection_pointer[i4]; j4 < connection_pointer[i4+1]; j4= j4+1) begin
                        packet4 = #0.1 {neuron_addresses[i4], downstream_connections[j4]};
                    end
                    spike_register[i4] = 0;
                    lock4 = 0;
                end
            end
        end

    end
    always @(clear, lock5, spike200, spike201, spike202, spike203, spike204, spike205, spike206, spike207, spike208, spike209, spike210, spike211, spike212, spike213, spike214, spike215, spike216, spike217, spike218, spike219, spike220, spike221, spike222, spike223, spike224, spike225, spike226, spike227, spike228, spike229, spike230, spike231, spike232, spike233, spike234, spike235, spike236, spike237, spike238, spike239, spike240, spike241, spike242, spike243, spike244, spike245, spike246, spike247, spike248, spike249) begin
        spike_register[200] = spike200;

        spike_register[201] = spike201;        spike_register[202] = spike202;        spike_register[203] = spike203;        spike_register[204] = spike204;        spike_register[205] = spike205;        spike_register[206] = spike206;        spike_register[207] = spike207;        spike_register[208] = spike208;        spike_register[209] = spike209;        spike_register[210] = spike210;        spike_register[211] = spike211;        spike_register[212] = spike212;        spike_register[213] = spike213;        spike_register[214] = spike214;        spike_register[215] = spike215;        spike_register[216] = spike216;        spike_register[217] = spike217;        spike_register[218] = spike218;        spike_register[219] = spike219;        spike_register[220] = spike220;        spike_register[221] = spike221;        spike_register[222] = spike222;        spike_register[223] = spike223;        spike_register[224] = spike224;        spike_register[225] = spike225;        spike_register[226] = spike226;        spike_register[227] = spike227;        spike_register[228] = spike228;        spike_register[229] = spike229;        spike_register[230] = spike230;        spike_register[231] = spike231;        spike_register[232] = spike232;        spike_register[233] = spike233;        spike_register[234] = spike234;        spike_register[235] = spike235;        spike_register[236] = spike236;        spike_register[237] = spike237;        spike_register[238] = spike238;        spike_register[239] = spike239;        spike_register[240] = spike240;        spike_register[241] = spike241;        spike_register[242] = spike242;        spike_register[243] = spike243;        spike_register[244] = spike244;        spike_register[245] = spike245;        spike_register[246] = spike246;        spike_register[247] = spike247;        spike_register[248] = spike248;        spike_register[249] = spike249;
        #0.5
        if(clear == 1'b0) begin
            for(i5 = 200; i5 <=249; i5= i5+1) begin
                if(spike_register[i5] == 1 && lock5 == 0) begin
                    lock5 = 1;
                    for(j5 = connection_pointer[i5]; j5 < connection_pointer[i5+1]; j5= j5+1) begin
                        packet5 = #0.1 {neuron_addresses[i5], downstream_connections[j5]};
                    end
                    spike_register[i5] = 0;
                    lock5 = 0;
                end
            end
        end

    end
    always @(clear, lock6, spike250, spike251, spike252, spike253, spike254, spike255, spike256, spike257, spike258, spike259, spike260, spike261, spike262, spike263, spike264, spike265, spike266, spike267, spike268, spike269, spike270, spike271, spike272, spike273, spike274, spike275, spike276, spike277, spike278, spike279, spike280, spike281, spike282, spike283, spike284, spike285, spike286, spike287, spike288, spike289, spike290, spike291, spike292, spike293, spike294, spike295, spike296, spike297, spike298, spike299) begin
        spike_register[250] = spike250;        spike_register[251] = spike251;        spike_register[252] = spike252;        spike_register[253] = spike253;        spike_register[254] = spike254;        spike_register[255] = spike255;        spike_register[256] = spike256;        spike_register[257] = spike257;        spike_register[258] = spike258;        spike_register[259] = spike259;        spike_register[260] = spike260;        spike_register[261] = spike261;        spike_register[262] = spike262;        spike_register[263] = spike263;        spike_register[264] = spike264;        spike_register[265] = spike265;        spike_register[266] = spike266;        spike_register[267] = spike267;        spike_register[268] = spike268;        spike_register[269] = spike269;        spike_register[270] = spike270;        spike_register[271] = spike271;        spike_register[272] = spike272;        spike_register[273] = spike273;        spike_register[274] = spike274;        spike_register[275] = spike275;        spike_register[276] = spike276;        spike_register[277] = spike277;        spike_register[278] = spike278;        spike_register[279] = spike279;        spike_register[280] = spike280;        spike_register[281] = spike281;        spike_register[282] = spike282;        spike_register[283] = spike283;        spike_register[284] = spike284;        spike_register[285] = spike285;        spike_register[286] = spike286;        spike_register[287] = spike287;        spike_register[288] = spike288;        spike_register[289] = spike289;        spike_register[290] = spike290;        spike_register[291] = spike291;        spike_register[292] = spike292;        spike_register[293] = spike293;        spike_register[294] = spike294;        spike_register[295] = spike295;        spike_register[296] = spike296;        spike_register[297] = spike297;        spike_register[298] = spike298;        spike_register[299] = spike299;
        #0.5
        if(clear == 1'b0) begin
            for(i6 = 250; i6 <=299; i6= i6+1) begin
                if(spike_register[i6] == 1 && lock6 == 0) begin
                    lock6 = 1;
                    for(j6 = connection_pointer[i6]; j6 < connection_pointer[i6+1]; j6= j6+1) begin
                        packet6 = #0.1 {neuron_addresses[i6], downstream_connections[j6]};
                    end
                    spike_register[i6] = 0;
                    lock6 = 0;
                end
            end
        end

    end
    always @(clear, lock7, spike300, spike301, spike302, spike303, spike304, spike305, spike306, spike307, spike308, spike309, spike310, spike311, spike312, spike313, spike314, spike315, spike316, spike317, spike318, spike319, spike320, spike321, spike322, spike323, spike324, spike325, spike326, spike327, spike328, spike329, spike330, spike331, spike332, spike333, spike334, spike335, spike336, spike337, spike338, spike339, spike340, spike341, spike342, spike343, spike344, spike345, spike346, spike347, spike348, spike349) begin
        spike_register[300] = spike300;

        spike_register[301] = spike301;        spike_register[302] = spike302;        spike_register[303] = spike303;        spike_register[304] = spike304;        spike_register[305] = spike305;        spike_register[306] = spike306;        spike_register[307] = spike307;        spike_register[308] = spike308;        spike_register[309] = spike309;        spike_register[310] = spike310;        spike_register[311] = spike311;        spike_register[312] = spike312;        spike_register[313] = spike313;        spike_register[314] = spike314;        spike_register[315] = spike315;        spike_register[316] = spike316;        spike_register[317] = spike317;        spike_register[318] = spike318;        spike_register[319] = spike319;        spike_register[320] = spike320;        spike_register[321] = spike321;        spike_register[322] = spike322;        spike_register[323] = spike323;        spike_register[324] = spike324;        spike_register[325] = spike325;        spike_register[326] = spike326;        spike_register[327] = spike327;        spike_register[328] = spike328;        spike_register[329] = spike329;        spike_register[330] = spike330;        spike_register[331] = spike331;        spike_register[332] = spike332;        spike_register[333] = spike333;        spike_register[334] = spike334;        spike_register[335] = spike335;        spike_register[336] = spike336;        spike_register[337] = spike337;        spike_register[338] = spike338;        spike_register[339] = spike339;        spike_register[340] = spike340;        spike_register[341] = spike341;        spike_register[342] = spike342;        spike_register[343] = spike343;        spike_register[344] = spike344;        spike_register[345] = spike345;        spike_register[346] = spike346;        spike_register[347] = spike347;        spike_register[348] = spike348;        spike_register[349] = spike349;
        #0.5
        if(clear == 1'b0) begin
            for(i7 = 300; i7 <=349; i7= i7+1) begin
                if(spike_register[i7] == 1 && lock7 == 0) begin
                    lock7 = 1;
                    for(j7 = connection_pointer[i7]; j7 < connection_pointer[i7+1]; j7= j7+1) begin
                        packet7 = #0.1 {neuron_addresses[i7], downstream_connections[j7]};
                    end
                    spike_register[i7] = 0;
                    lock7 = 0;
                end
            end
        end

    end
    always @(clear, lock8, spike350, spike351, spike352, spike353, spike354, spike355, spike356, spike357, spike358, spike359, spike360, spike361, spike362, spike363, spike364, spike365, spike366, spike367, spike368, spike369, spike370, spike371, spike372, spike373, spike374, spike375, spike376, spike377, spike378, spike379, spike380, spike381, spike382, spike383, spike384, spike385, spike386, spike387, spike388, spike389, spike390, spike391, spike392, spike393, spike394, spike395, spike396, spike397, spike398, spike399) begin
        spike_register[350] = spike350;        spike_register[351] = spike351;        spike_register[352] = spike352;        spike_register[353] = spike353;        spike_register[354] = spike354;        spike_register[355] = spike355;        spike_register[356] = spike356;        spike_register[357] = spike357;        spike_register[358] = spike358;        spike_register[359] = spike359;        spike_register[360] = spike360;        spike_register[361] = spike361;        spike_register[362] = spike362;        spike_register[363] = spike363;        spike_register[364] = spike364;        spike_register[365] = spike365;        spike_register[366] = spike366;        spike_register[367] = spike367;        spike_register[368] = spike368;        spike_register[369] = spike369;        spike_register[370] = spike370;        spike_register[371] = spike371;        spike_register[372] = spike372;        spike_register[373] = spike373;        spike_register[374] = spike374;        spike_register[375] = spike375;        spike_register[376] = spike376;        spike_register[377] = spike377;        spike_register[378] = spike378;        spike_register[379] = spike379;        spike_register[380] = spike380;        spike_register[381] = spike381;        spike_register[382] = spike382;        spike_register[383] = spike383;        spike_register[384] = spike384;        spike_register[385] = spike385;        spike_register[386] = spike386;        spike_register[387] = spike387;        spike_register[388] = spike388;        spike_register[389] = spike389;        spike_register[390] = spike390;        spike_register[391] = spike391;        spike_register[392] = spike392;        spike_register[393] = spike393;        spike_register[394] = spike394;        spike_register[395] = spike395;        spike_register[396] = spike396;        spike_register[397] = spike397;        spike_register[398] = spike398;        spike_register[399] = spike399;
        #0.5
        if(clear == 1'b0) begin
            for(i8 = 350; i8 <=399; i8= i8+1) begin
                if(spike_register[i8] == 1 && lock8 == 0) begin
                    lock8 = 1;
                    for(j8 = connection_pointer[i8]; j8 < connection_pointer[i8+1]; j8= j8+1) begin
                        packet8 = #0.1 {neuron_addresses[i8], downstream_connections[j8]};
                    end
                    spike_register[i8] = 0;
                    lock8 = 0;
                end
            end
        end

    end
    always @(clear, lock9, spike400, spike401, spike402, spike403, spike404, spike405, spike406, spike407, spike408, spike409, spike410, spike411, spike412, spike413, spike414, spike415, spike416, spike417, spike418, spike419, spike420, spike421, spike422, spike423, spike424, spike425, spike426, spike427, spike428, spike429, spike430, spike431, spike432, spike433, spike434, spike435, spike436, spike437, spike438, spike439, spike440, spike441, spike442, spike443, spike444, spike445, spike446, spike447, spike448, spike449) begin
        spike_register[400] = spike400;

        spike_register[401] = spike401;        spike_register[402] = spike402;        spike_register[403] = spike403;        spike_register[404] = spike404;        spike_register[405] = spike405;        spike_register[406] = spike406;        spike_register[407] = spike407;        spike_register[408] = spike408;        spike_register[409] = spike409;        spike_register[410] = spike410;        spike_register[411] = spike411;        spike_register[412] = spike412;        spike_register[413] = spike413;        spike_register[414] = spike414;        spike_register[415] = spike415;        spike_register[416] = spike416;        spike_register[417] = spike417;        spike_register[418] = spike418;        spike_register[419] = spike419;        spike_register[420] = spike420;        spike_register[421] = spike421;        spike_register[422] = spike422;        spike_register[423] = spike423;        spike_register[424] = spike424;        spike_register[425] = spike425;        spike_register[426] = spike426;        spike_register[427] = spike427;        spike_register[428] = spike428;        spike_register[429] = spike429;        spike_register[430] = spike430;        spike_register[431] = spike431;        spike_register[432] = spike432;        spike_register[433] = spike433;        spike_register[434] = spike434;        spike_register[435] = spike435;        spike_register[436] = spike436;        spike_register[437] = spike437;        spike_register[438] = spike438;        spike_register[439] = spike439;        spike_register[440] = spike440;        spike_register[441] = spike441;        spike_register[442] = spike442;        spike_register[443] = spike443;        spike_register[444] = spike444;        spike_register[445] = spike445;        spike_register[446] = spike446;        spike_register[447] = spike447;        spike_register[448] = spike448;        spike_register[449] = spike449;
        #0.5
        if(clear == 1'b0) begin
            for(i9 = 400; i9 <=449; i9= i9+1) begin
                if(spike_register[i9] == 1 && lock9 == 0) begin
                    lock9 = 1;
                    for(j9 = connection_pointer[i9]; j9 < connection_pointer[i9+1]; j9= j9+1) begin
                        packet9 = #0.1 {neuron_addresses[i9], downstream_connections[j9]};
                    end
                    spike_register[i9] = 0;
                    lock9 = 0;
                end
            end
        end

    end
    always @(clear, lock10, spike450, spike451, spike452, spike453, spike454, spike455, spike456, spike457, spike458, spike459, spike460, spike461, spike462, spike463, spike464, spike465, spike466, spike467, spike468, spike469, spike470, spike471, spike472, spike473, spike474, spike475, spike476, spike477, spike478, spike479, spike480, spike481, spike482, spike483, spike484, spike485, spike486, spike487, spike488, spike489, spike490, spike491, spike492, spike493, spike494, spike495, spike496, spike497, spike498, spike499) begin
        spike_register[450] = spike450;        spike_register[451] = spike451;        spike_register[452] = spike452;        spike_register[453] = spike453;        spike_register[454] = spike454;        spike_register[455] = spike455;        spike_register[456] = spike456;        spike_register[457] = spike457;        spike_register[458] = spike458;        spike_register[459] = spike459;        spike_register[460] = spike460;        spike_register[461] = spike461;        spike_register[462] = spike462;        spike_register[463] = spike463;        spike_register[464] = spike464;        spike_register[465] = spike465;        spike_register[466] = spike466;        spike_register[467] = spike467;        spike_register[468] = spike468;        spike_register[469] = spike469;        spike_register[470] = spike470;        spike_register[471] = spike471;        spike_register[472] = spike472;        spike_register[473] = spike473;        spike_register[474] = spike474;        spike_register[475] = spike475;        spike_register[476] = spike476;        spike_register[477] = spike477;        spike_register[478] = spike478;        spike_register[479] = spike479;        spike_register[480] = spike480;        spike_register[481] = spike481;        spike_register[482] = spike482;        spike_register[483] = spike483;        spike_register[484] = spike484;        spike_register[485] = spike485;        spike_register[486] = spike486;        spike_register[487] = spike487;        spike_register[488] = spike488;        spike_register[489] = spike489;        spike_register[490] = spike490;        spike_register[491] = spike491;        spike_register[492] = spike492;        spike_register[493] = spike493;        spike_register[494] = spike494;        spike_register[495] = spike495;        spike_register[496] = spike496;        spike_register[497] = spike497;        spike_register[498] = spike498;        spike_register[499] = spike499;
        #0.5
        if(clear == 1'b0) begin
            for(i10 = 450; i10 <=499; i10= i10+1) begin
                if(spike_register[i10] == 1 && lock10 == 0) begin
                    lock10 = 1;
                    for(j10 = connection_pointer[i10]; j10 < connection_pointer[i10+1]; j10= j10+1) begin
                        packet10 = #0.1 {neuron_addresses[i10], downstream_connections[j10]};
                    end
                    spike_register[i10] = 0;
                    lock10 = 0;
                end
            end
        end

    end
    always @(clear, lock11, spike500, spike501, spike502, spike503, spike504, spike505, spike506, spike507, spike508, spike509, spike510, spike511, spike512, spike513, spike514, spike515, spike516, spike517, spike518, spike519, spike520, spike521, spike522, spike523, spike524, spike525, spike526, spike527, spike528, spike529, spike530, spike531, spike532, spike533, spike534, spike535, spike536, spike537, spike538, spike539, spike540, spike541, spike542, spike543, spike544, spike545, spike546, spike547, spike548, spike549) begin
        spike_register[500] = spike500;

        spike_register[501] = spike501;        spike_register[502] = spike502;        spike_register[503] = spike503;        spike_register[504] = spike504;        spike_register[505] = spike505;        spike_register[506] = spike506;        spike_register[507] = spike507;        spike_register[508] = spike508;        spike_register[509] = spike509;        spike_register[510] = spike510;        spike_register[511] = spike511;        spike_register[512] = spike512;        spike_register[513] = spike513;        spike_register[514] = spike514;        spike_register[515] = spike515;        spike_register[516] = spike516;        spike_register[517] = spike517;        spike_register[518] = spike518;        spike_register[519] = spike519;        spike_register[520] = spike520;        spike_register[521] = spike521;        spike_register[522] = spike522;        spike_register[523] = spike523;        spike_register[524] = spike524;        spike_register[525] = spike525;        spike_register[526] = spike526;        spike_register[527] = spike527;        spike_register[528] = spike528;        spike_register[529] = spike529;        spike_register[530] = spike530;        spike_register[531] = spike531;        spike_register[532] = spike532;        spike_register[533] = spike533;        spike_register[534] = spike534;        spike_register[535] = spike535;        spike_register[536] = spike536;        spike_register[537] = spike537;        spike_register[538] = spike538;        spike_register[539] = spike539;        spike_register[540] = spike540;        spike_register[541] = spike541;        spike_register[542] = spike542;        spike_register[543] = spike543;        spike_register[544] = spike544;        spike_register[545] = spike545;        spike_register[546] = spike546;        spike_register[547] = spike547;        spike_register[548] = spike548;        spike_register[549] = spike549;
        #0.5
        if(clear == 1'b0) begin
            for(i11 = 500; i11 <=549; i11= i11+1) begin
                if(spike_register[i11] == 1 && lock11 == 0) begin
                    lock11 = 1;
                    for(j11 = connection_pointer[i11]; j11 < connection_pointer[i11+1]; j11= j11+1) begin
                        packet11 = #0.1 {neuron_addresses[i11], downstream_connections[j11]};
                    end
                    spike_register[i11] = 0;
                    lock11 = 0;
                end
            end
        end

    end
    always @(clear, lock12, spike550, spike551, spike552, spike553, spike554, spike555, spike556, spike557, spike558, spike559, spike560, spike561, spike562, spike563, spike564, spike565, spike566, spike567, spike568, spike569, spike570, spike571, spike572, spike573, spike574, spike575, spike576, spike577, spike578, spike579, spike580, spike581, spike582, spike583, spike584, spike585, spike586, spike587, spike588, spike589, spike590, spike591, spike592, spike593, spike594, spike595, spike596, spike597, spike598, spike599) begin
        spike_register[550] = spike550;        spike_register[551] = spike551;        spike_register[552] = spike552;        spike_register[553] = spike553;        spike_register[554] = spike554;        spike_register[555] = spike555;        spike_register[556] = spike556;        spike_register[557] = spike557;        spike_register[558] = spike558;        spike_register[559] = spike559;        spike_register[560] = spike560;        spike_register[561] = spike561;        spike_register[562] = spike562;        spike_register[563] = spike563;        spike_register[564] = spike564;        spike_register[565] = spike565;        spike_register[566] = spike566;        spike_register[567] = spike567;        spike_register[568] = spike568;        spike_register[569] = spike569;        spike_register[570] = spike570;        spike_register[571] = spike571;        spike_register[572] = spike572;        spike_register[573] = spike573;        spike_register[574] = spike574;        spike_register[575] = spike575;        spike_register[576] = spike576;        spike_register[577] = spike577;        spike_register[578] = spike578;        spike_register[579] = spike579;        spike_register[580] = spike580;        spike_register[581] = spike581;        spike_register[582] = spike582;        spike_register[583] = spike583;        spike_register[584] = spike584;        spike_register[585] = spike585;        spike_register[586] = spike586;        spike_register[587] = spike587;        spike_register[588] = spike588;        spike_register[589] = spike589;        spike_register[590] = spike590;        spike_register[591] = spike591;        spike_register[592] = spike592;        spike_register[593] = spike593;        spike_register[594] = spike594;        spike_register[595] = spike595;        spike_register[596] = spike596;        spike_register[597] = spike597;        spike_register[598] = spike598;        spike_register[599] = spike599;
        #0.5
        if(clear == 1'b0) begin
            for(i12 = 550; i12 <=599; i12= i12+1) begin
                if(spike_register[i12] == 1 && lock12 == 0) begin
                    lock12 = 1;
                    for(j12 = connection_pointer[i12]; j12 < connection_pointer[i12+1]; j12= j12+1) begin
                        packet12 = #0.1 {neuron_addresses[i12], downstream_connections[j12]};
                    end
                    spike_register[i12] = 0;
                    lock12 = 0;
                end
            end
        end

    end
    always @(clear, lock13, spike600, spike601, spike602, spike603, spike604, spike605, spike606, spike607, spike608, spike609, spike610, spike611, spike612, spike613, spike614, spike615, spike616, spike617, spike618, spike619, spike620, spike621, spike622, spike623, spike624, spike625, spike626, spike627, spike628, spike629, spike630, spike631, spike632, spike633, spike634, spike635, spike636, spike637, spike638, spike639, spike640, spike641, spike642, spike643, spike644, spike645, spike646, spike647, spike648, spike649) begin
        spike_register[600] = spike600;

        spike_register[601] = spike601;        spike_register[602] = spike602;        spike_register[603] = spike603;        spike_register[604] = spike604;        spike_register[605] = spike605;        spike_register[606] = spike606;        spike_register[607] = spike607;        spike_register[608] = spike608;        spike_register[609] = spike609;        spike_register[610] = spike610;        spike_register[611] = spike611;        spike_register[612] = spike612;        spike_register[613] = spike613;        spike_register[614] = spike614;        spike_register[615] = spike615;        spike_register[616] = spike616;        spike_register[617] = spike617;        spike_register[618] = spike618;        spike_register[619] = spike619;        spike_register[620] = spike620;        spike_register[621] = spike621;        spike_register[622] = spike622;        spike_register[623] = spike623;        spike_register[624] = spike624;        spike_register[625] = spike625;        spike_register[626] = spike626;        spike_register[627] = spike627;        spike_register[628] = spike628;        spike_register[629] = spike629;        spike_register[630] = spike630;        spike_register[631] = spike631;        spike_register[632] = spike632;        spike_register[633] = spike633;        spike_register[634] = spike634;        spike_register[635] = spike635;        spike_register[636] = spike636;        spike_register[637] = spike637;        spike_register[638] = spike638;        spike_register[639] = spike639;        spike_register[640] = spike640;        spike_register[641] = spike641;        spike_register[642] = spike642;        spike_register[643] = spike643;        spike_register[644] = spike644;        spike_register[645] = spike645;        spike_register[646] = spike646;        spike_register[647] = spike647;        spike_register[648] = spike648;        spike_register[649] = spike649;
        #0.5
        if(clear == 1'b0) begin
            for(i13 = 600; i13 <=649; i13= i13+1) begin
                if(spike_register[i13] == 1 && lock13 == 0) begin
                    lock13 = 1;
                    for(j13 = connection_pointer[i13]; j13 < connection_pointer[i13+1]; j13= j13+1) begin
                        packet13 = #0.1 {neuron_addresses[i13], downstream_connections[j13]};
                    end
                    spike_register[i13] = 0;
                    lock13 = 0;
                end
            end
        end

    end
    always @(clear, lock14, spike650, spike651, spike652, spike653, spike654, spike655, spike656, spike657, spike658, spike659, spike660, spike661, spike662, spike663, spike664, spike665, spike666, spike667, spike668, spike669, spike670, spike671, spike672, spike673, spike674, spike675, spike676, spike677, spike678, spike679, spike680, spike681, spike682, spike683, spike684, spike685, spike686, spike687, spike688, spike689, spike690, spike691, spike692, spike693, spike694, spike695, spike696, spike697, spike698, spike699) begin
        spike_register[650] = spike650;        spike_register[651] = spike651;        spike_register[652] = spike652;        spike_register[653] = spike653;        spike_register[654] = spike654;        spike_register[655] = spike655;        spike_register[656] = spike656;        spike_register[657] = spike657;        spike_register[658] = spike658;        spike_register[659] = spike659;        spike_register[660] = spike660;        spike_register[661] = spike661;        spike_register[662] = spike662;        spike_register[663] = spike663;        spike_register[664] = spike664;        spike_register[665] = spike665;        spike_register[666] = spike666;        spike_register[667] = spike667;        spike_register[668] = spike668;        spike_register[669] = spike669;        spike_register[670] = spike670;        spike_register[671] = spike671;        spike_register[672] = spike672;        spike_register[673] = spike673;        spike_register[674] = spike674;        spike_register[675] = spike675;        spike_register[676] = spike676;        spike_register[677] = spike677;        spike_register[678] = spike678;        spike_register[679] = spike679;        spike_register[680] = spike680;        spike_register[681] = spike681;        spike_register[682] = spike682;        spike_register[683] = spike683;        spike_register[684] = spike684;        spike_register[685] = spike685;        spike_register[686] = spike686;        spike_register[687] = spike687;        spike_register[688] = spike688;        spike_register[689] = spike689;        spike_register[690] = spike690;        spike_register[691] = spike691;        spike_register[692] = spike692;        spike_register[693] = spike693;        spike_register[694] = spike694;        spike_register[695] = spike695;        spike_register[696] = spike696;        spike_register[697] = spike697;        spike_register[698] = spike698;        spike_register[699] = spike699;
        #0.5
        if(clear == 1'b0) begin
            for(i14 = 650; i14 <=699; i14= i14+1) begin
                if(spike_register[i14] == 1 && lock14 == 0) begin
                    lock14 = 1;
                    for(j14 = connection_pointer[i14]; j14 < connection_pointer[i14+1]; j14= j14+1) begin
                        packet14 = #0.1 {neuron_addresses[i14], downstream_connections[j14]};
                    end
                    spike_register[i14] = 0;
                    lock14 = 0;
                end
            end
        end

    end
    always @(clear, lock15, spike700, spike701, spike702, spike703, spike704, spike705, spike706, spike707, spike708, spike709, spike710, spike711, spike712, spike713, spike714, spike715, spike716, spike717, spike718, spike719, spike720, spike721, spike722, spike723, spike724, spike725, spike726, spike727, spike728, spike729, spike730, spike731, spike732, spike733, spike734, spike735, spike736, spike737, spike738, spike739, spike740, spike741, spike742, spike743, spike744, spike745, spike746, spike747, spike748, spike749) begin
        spike_register[700] = spike700;

        spike_register[701] = spike701;        spike_register[702] = spike702;        spike_register[703] = spike703;        spike_register[704] = spike704;        spike_register[705] = spike705;        spike_register[706] = spike706;        spike_register[707] = spike707;        spike_register[708] = spike708;        spike_register[709] = spike709;        spike_register[710] = spike710;        spike_register[711] = spike711;        spike_register[712] = spike712;        spike_register[713] = spike713;        spike_register[714] = spike714;        spike_register[715] = spike715;        spike_register[716] = spike716;        spike_register[717] = spike717;        spike_register[718] = spike718;        spike_register[719] = spike719;        spike_register[720] = spike720;        spike_register[721] = spike721;        spike_register[722] = spike722;        spike_register[723] = spike723;        spike_register[724] = spike724;        spike_register[725] = spike725;        spike_register[726] = spike726;        spike_register[727] = spike727;        spike_register[728] = spike728;        spike_register[729] = spike729;        spike_register[730] = spike730;        spike_register[731] = spike731;        spike_register[732] = spike732;        spike_register[733] = spike733;        spike_register[734] = spike734;        spike_register[735] = spike735;        spike_register[736] = spike736;        spike_register[737] = spike737;        spike_register[738] = spike738;        spike_register[739] = spike739;        spike_register[740] = spike740;        spike_register[741] = spike741;        spike_register[742] = spike742;        spike_register[743] = spike743;        spike_register[744] = spike744;        spike_register[745] = spike745;        spike_register[746] = spike746;        spike_register[747] = spike747;        spike_register[748] = spike748;        spike_register[749] = spike749;
        #0.5
        if(clear == 1'b0) begin
            for(i15 = 700; i15 <=749; i15= i15+1) begin
                if(spike_register[i15] == 1 && lock15 == 0) begin
                    lock15 = 1;
                    for(j15 = connection_pointer[i15]; j15 < connection_pointer[i15+1]; j15= j15+1) begin
                        packet15 = #0.1 {neuron_addresses[i15], downstream_connections[j15]};
                    end
                    spike_register[i15] = 0;
                    lock15 = 0;
                end
            end
        end

    end
    always @(clear, lock16, spike750, spike751, spike752, spike753, spike754, spike755, spike756, spike757, spike758, spike759, spike760, spike761, spike762, spike763, spike764, spike765, spike766, spike767, spike768, spike769, spike770, spike771, spike772, spike773, spike774, spike775, spike776, spike777, spike778, spike779, spike780, spike781, spike782, spike783, spike784, spike785, spike786, spike787, spike788, spike789, spike790, spike791, spike792, spike793, spike794, spike795, spike796, spike797, spike798, spike799) begin
        spike_register[750] = spike750;        spike_register[751] = spike751;        spike_register[752] = spike752;        spike_register[753] = spike753;        spike_register[754] = spike754;        spike_register[755] = spike755;        spike_register[756] = spike756;        spike_register[757] = spike757;        spike_register[758] = spike758;        spike_register[759] = spike759;        spike_register[760] = spike760;        spike_register[761] = spike761;        spike_register[762] = spike762;        spike_register[763] = spike763;        spike_register[764] = spike764;        spike_register[765] = spike765;        spike_register[766] = spike766;        spike_register[767] = spike767;        spike_register[768] = spike768;        spike_register[769] = spike769;        spike_register[770] = spike770;        spike_register[771] = spike771;        spike_register[772] = spike772;        spike_register[773] = spike773;        spike_register[774] = spike774;        spike_register[775] = spike775;        spike_register[776] = spike776;        spike_register[777] = spike777;        spike_register[778] = spike778;        spike_register[779] = spike779;        spike_register[780] = spike780;        spike_register[781] = spike781;        spike_register[782] = spike782;        spike_register[783] = spike783;        spike_register[784] = spike784;        spike_register[785] = spike785;        spike_register[786] = spike786;        spike_register[787] = spike787;        spike_register[788] = spike788;        spike_register[789] = spike789;        spike_register[790] = spike790;        spike_register[791] = spike791;        spike_register[792] = spike792;        spike_register[793] = spike793;        spike_register[794] = spike794;        spike_register[795] = spike795;        spike_register[796] = spike796;        spike_register[797] = spike797;        spike_register[798] = spike798;        spike_register[799] = spike799;
        #0.5
        if(clear == 1'b0) begin
            for(i16 = 750; i16 <=799; i16= i16+1) begin
                if(spike_register[i16] == 1 && lock16 == 0) begin
                    lock16 = 1;
                    for(j16 = connection_pointer[i16]; j16 < connection_pointer[i16+1]; j16= j16+1) begin
                        packet16 = #0.1 {neuron_addresses[i16], downstream_connections[j16]};
                    end
                    spike_register[i16] = 0;
                    lock16 = 0;
                end
            end
        end

    end
    always @(clear, lock17, spike800, spike801, spike802, spike803, spike804, spike805, spike806, spike807, spike808, spike809, spike810, spike811, spike812, spike813, spike814, spike815, spike816, spike817, spike818, spike819, spike820, spike821, spike822, spike823, spike824, spike825, spike826, spike827, spike828, spike829, spike830, spike831, spike832, spike833, spike834, spike835, spike836, spike837, spike838, spike839, spike840, spike841, spike842, spike843, spike844, spike845, spike846, spike847, spike848, spike849) begin
        spike_register[800] = spike800;

        spike_register[801] = spike801;        spike_register[802] = spike802;        spike_register[803] = spike803;        spike_register[804] = spike804;        spike_register[805] = spike805;        spike_register[806] = spike806;        spike_register[807] = spike807;        spike_register[808] = spike808;        spike_register[809] = spike809;        spike_register[810] = spike810;        spike_register[811] = spike811;        spike_register[812] = spike812;        spike_register[813] = spike813;        spike_register[814] = spike814;        spike_register[815] = spike815;        spike_register[816] = spike816;        spike_register[817] = spike817;        spike_register[818] = spike818;        spike_register[819] = spike819;        spike_register[820] = spike820;        spike_register[821] = spike821;        spike_register[822] = spike822;        spike_register[823] = spike823;        spike_register[824] = spike824;        spike_register[825] = spike825;        spike_register[826] = spike826;        spike_register[827] = spike827;        spike_register[828] = spike828;        spike_register[829] = spike829;        spike_register[830] = spike830;        spike_register[831] = spike831;        spike_register[832] = spike832;        spike_register[833] = spike833;        spike_register[834] = spike834;        spike_register[835] = spike835;        spike_register[836] = spike836;        spike_register[837] = spike837;        spike_register[838] = spike838;        spike_register[839] = spike839;        spike_register[840] = spike840;        spike_register[841] = spike841;        spike_register[842] = spike842;        spike_register[843] = spike843;        spike_register[844] = spike844;        spike_register[845] = spike845;        spike_register[846] = spike846;        spike_register[847] = spike847;        spike_register[848] = spike848;        spike_register[849] = spike849;
        #0.5
        if(clear == 1'b0) begin
            for(i17 = 800; i17 <=849; i17= i17+1) begin
                if(spike_register[i17] == 1 && lock17 == 0) begin
                    lock17 = 1;
                    for(j17 = connection_pointer[i17]; j17 < connection_pointer[i17+1]; j17= j17+1) begin
                        packet17 = #0.1 {neuron_addresses[i17], downstream_connections[j17]};
                    end
                    spike_register[i17] = 0;
                    lock17 = 0;
                end
            end
        end

    end
    always @(clear, lock18, spike850, spike851, spike852, spike853, spike854, spike855, spike856, spike857, spike858, spike859, spike860, spike861, spike862, spike863, spike864, spike865, spike866, spike867, spike868, spike869, spike870, spike871, spike872, spike873, spike874, spike875, spike876, spike877, spike878, spike879, spike880, spike881, spike882, spike883, spike884, spike885, spike886, spike887, spike888, spike889, spike890, spike891, spike892, spike893, spike894, spike895, spike896, spike897, spike898, spike899) begin
        spike_register[850] = spike850;        spike_register[851] = spike851;        spike_register[852] = spike852;        spike_register[853] = spike853;        spike_register[854] = spike854;        spike_register[855] = spike855;        spike_register[856] = spike856;        spike_register[857] = spike857;        spike_register[858] = spike858;        spike_register[859] = spike859;        spike_register[860] = spike860;        spike_register[861] = spike861;        spike_register[862] = spike862;        spike_register[863] = spike863;        spike_register[864] = spike864;        spike_register[865] = spike865;        spike_register[866] = spike866;        spike_register[867] = spike867;        spike_register[868] = spike868;        spike_register[869] = spike869;        spike_register[870] = spike870;        spike_register[871] = spike871;        spike_register[872] = spike872;        spike_register[873] = spike873;        spike_register[874] = spike874;        spike_register[875] = spike875;        spike_register[876] = spike876;        spike_register[877] = spike877;        spike_register[878] = spike878;        spike_register[879] = spike879;        spike_register[880] = spike880;        spike_register[881] = spike881;        spike_register[882] = spike882;        spike_register[883] = spike883;        spike_register[884] = spike884;        spike_register[885] = spike885;        spike_register[886] = spike886;        spike_register[887] = spike887;        spike_register[888] = spike888;        spike_register[889] = spike889;        spike_register[890] = spike890;        spike_register[891] = spike891;        spike_register[892] = spike892;        spike_register[893] = spike893;        spike_register[894] = spike894;        spike_register[895] = spike895;        spike_register[896] = spike896;        spike_register[897] = spike897;        spike_register[898] = spike898;        spike_register[899] = spike899;
        #0.5
        if(clear == 1'b0) begin
            for(i18 = 850; i18 <=899; i18= i18+1) begin
                if(spike_register[i18] == 1 && lock18 == 0) begin
                    lock18 = 1;
                    for(j18 = connection_pointer[i18]; j18 < connection_pointer[i18+1]; j18= j18+1) begin
                        packet18 = #0.1 {neuron_addresses[i18], downstream_connections[j18]};
                    end
                    spike_register[i18] = 0;
                    lock18 = 0;
                end
            end
        end

    end
    always @(clear, lock19, spike900, spike901, spike902, spike903, spike904, spike905, spike906, spike907, spike908, spike909, spike910, spike911, spike912, spike913, spike914, spike915, spike916, spike917, spike918, spike919, spike920, spike921, spike922, spike923, spike924, spike925, spike926, spike927, spike928, spike929, spike930, spike931, spike932, spike933, spike934, spike935, spike936, spike937, spike938, spike939, spike940, spike941, spike942, spike943, spike944, spike945, spike946, spike947, spike948, spike949) begin
        spike_register[900] = spike900;

        spike_register[901] = spike901;        spike_register[902] = spike902;        spike_register[903] = spike903;        spike_register[904] = spike904;        spike_register[905] = spike905;        spike_register[906] = spike906;        spike_register[907] = spike907;        spike_register[908] = spike908;        spike_register[909] = spike909;        spike_register[910] = spike910;        spike_register[911] = spike911;        spike_register[912] = spike912;        spike_register[913] = spike913;        spike_register[914] = spike914;        spike_register[915] = spike915;        spike_register[916] = spike916;        spike_register[917] = spike917;        spike_register[918] = spike918;        spike_register[919] = spike919;        spike_register[920] = spike920;        spike_register[921] = spike921;        spike_register[922] = spike922;        spike_register[923] = spike923;        spike_register[924] = spike924;        spike_register[925] = spike925;        spike_register[926] = spike926;        spike_register[927] = spike927;        spike_register[928] = spike928;        spike_register[929] = spike929;        spike_register[930] = spike930;        spike_register[931] = spike931;        spike_register[932] = spike932;        spike_register[933] = spike933;        spike_register[934] = spike934;        spike_register[935] = spike935;        spike_register[936] = spike936;        spike_register[937] = spike937;        spike_register[938] = spike938;        spike_register[939] = spike939;        spike_register[940] = spike940;        spike_register[941] = spike941;        spike_register[942] = spike942;        spike_register[943] = spike943;        spike_register[944] = spike944;        spike_register[945] = spike945;        spike_register[946] = spike946;        spike_register[947] = spike947;        spike_register[948] = spike948;        spike_register[949] = spike949;
        #0.5
        if(clear == 1'b0) begin
            for(i19 = 900; i19 <=949; i19= i19+1) begin
                if(spike_register[i19] == 1 && lock19 == 0) begin
                    lock19 = 1;
                    for(j19 = connection_pointer[i19]; j19 < connection_pointer[i19+1]; j19= j19+1) begin
                        packet19 = #0.1 {neuron_addresses[i19], downstream_connections[j19]};
                    end
                    spike_register[i19] = 0;
                    lock19 = 0;
                end
            end
        end

    end
    always @(clear, lock20, spike950, spike951, spike952, spike953, spike954, spike955, spike956, spike957, spike958, spike959, spike960, spike961, spike962, spike963, spike964, spike965, spike966, spike967, spike968, spike969, spike970, spike971, spike972, spike973, spike974, spike975, spike976, spike977, spike978, spike979, spike980, spike981, spike982, spike983, spike984, spike985, spike986, spike987, spike988, spike989, spike990, spike991, spike992, spike993, spike994, spike995, spike996, spike997, spike998, spike999) begin
        spike_register[950] = spike950;        spike_register[951] = spike951;        spike_register[952] = spike952;        spike_register[953] = spike953;        spike_register[954] = spike954;        spike_register[955] = spike955;        spike_register[956] = spike956;        spike_register[957] = spike957;        spike_register[958] = spike958;        spike_register[959] = spike959;        spike_register[960] = spike960;        spike_register[961] = spike961;        spike_register[962] = spike962;        spike_register[963] = spike963;        spike_register[964] = spike964;        spike_register[965] = spike965;        spike_register[966] = spike966;        spike_register[967] = spike967;        spike_register[968] = spike968;        spike_register[969] = spike969;        spike_register[970] = spike970;        spike_register[971] = spike971;        spike_register[972] = spike972;        spike_register[973] = spike973;        spike_register[974] = spike974;        spike_register[975] = spike975;        spike_register[976] = spike976;        spike_register[977] = spike977;        spike_register[978] = spike978;        spike_register[979] = spike979;        spike_register[980] = spike980;        spike_register[981] = spike981;        spike_register[982] = spike982;        spike_register[983] = spike983;        spike_register[984] = spike984;        spike_register[985] = spike985;        spike_register[986] = spike986;        spike_register[987] = spike987;        spike_register[988] = spike988;        spike_register[989] = spike989;        spike_register[990] = spike990;        spike_register[991] = spike991;        spike_register[992] = spike992;        spike_register[993] = spike993;        spike_register[994] = spike994;        spike_register[995] = spike995;        spike_register[996] = spike996;        spike_register[997] = spike997;        spike_register[998] = spike998;        spike_register[999] = spike999;
        #0.5
        if(clear == 1'b0) begin
            for(i20 = 950; i20 <=999; i20= i20+1) begin
                if(spike_register[i20] == 1 && lock20 == 0) begin
                    lock20 = 1;
                    for(j20 = connection_pointer[i20]; j20 < connection_pointer[i20+1]; j20= j20+1) begin
                        packet20 = #0.1 {neuron_addresses[i20], downstream_connections[j20]};
                    end
                    spike_register[i20] = 0;
                    lock20 = 0;
                end
            end
        end

    end
    always @(clear, lock21, spike1000, spike1001, spike1002, spike1003, spike1004, spike1005, spike1006, spike1007, spike1008, spike1009, spike1010, spike1011, spike1012, spike1013, spike1014, spike1015, spike1016, spike1017, spike1018, spike1019, spike1020, spike1021, spike1022, spike1023) begin
        spike_register[1000] = spike1000;

        spike_register[1001] = spike1001;        spike_register[1002] = spike1002;        spike_register[1003] = spike1003;        spike_register[1004] = spike1004;        spike_register[1005] = spike1005;        spike_register[1006] = spike1006;        spike_register[1007] = spike1007;        spike_register[1008] = spike1008;        spike_register[1009] = spike1009;        spike_register[1010] = spike1010;        spike_register[1011] = spike1011;        spike_register[1012] = spike1012;        spike_register[1013] = spike1013;        spike_register[1014] = spike1014;        spike_register[1015] = spike1015;        spike_register[1016] = spike1016;        spike_register[1017] = spike1017;        spike_register[1018] = spike1018;        spike_register[1019] = spike1019;        spike_register[1020] = spike1020;        spike_register[1021] = spike1021;        spike_register[1022] = spike1022;        spike_register[1023] = spike1023;
        #0.5
        if(clear == 1'b0) begin
            for(i21 = 1000; i21 <=1049; i21= i21+1) begin
                if(spike_register[i21] == 1 && lock21 == 0) begin
                    lock21 = 1;
                    for(j21 = connection_pointer[i21]; j21 < connection_pointer[i21+1]; j21= j21+1) begin
                        packet21 = #0.1 {neuron_addresses[i21], downstream_connections[j21]};
                    end
                    spike_register[i21] = 0;
                    lock21 = 0;
                end
            end
        end

    end
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
    reg[18:0] i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, module network_interface_scaled (
        input wire spike0,
    input wire spike1,    input wire spike2,    input wire spike3,    input wire spike4,    input wire spike5,    input wire spike6,    input wire spike7,    input wire spike8,    input wire spike9,    input wire spike10,    input wire spike11,    input wire spike12,    input wire spike13,    input wire spike14,    input wire spike15,    input wire spike16,    input wire spike17,    input wire spike18,    input wire spike19,    input wire spike20,    input wire spike21,    input wire spike22,    input wire spike23,    input wire spike24,    input wire spike25,    input wire spike26,    input wire spike27,    input wire spike28,    input wire spike29,    input wire spike30,    input wire spike31,    input wire spike32,    input wire spike33,    input wire spike34,    input wire spike35,    input wire spike36,    input wire spike37,    input wire spike38,    input wire spike39,    input wire spike40,    input wire spike41,    input wire spike42,    input wire spike43,    input wire spike44,    input wire spike45,    input wire spike46,    input wire spike47,    input wire spike48,    input wire spike49,    input wire spike50,    input wire spike51,    input wire spike52,    input wire spike53,    input wire spike54,    input wire spike55,    input wire spike56,    input wire spike57,    input wire spike58,    input wire spike59,    input wire spike60,    input wire spike61,    input wire spike62,    input wire spike63,    input wire spike64,    input wire spike65,    input wire spike66,    input wire spike67,    input wire spike68,    input wire spike69,    input wire spike70,    input wire spike71,    input wire spike72,    input wire spike73,    input wire spike74,    input wire spike75,    input wire spike76,    input wire spike77,    input wire spike78,    input wire spike79,    input wire spike80,    input wire spike81,    input wire spike82,    input wire spike83,    input wire spike84,    input wire spike85,    input wire spike86,    input wire spike87,    input wire spike88,    input wire spike89,    input wire spike90,    input wire spike91,    input wire spike92,    input wire spike93,    input wire spike94,    input wire spike95,    input wire spike96,    input wire spike97,    input wire spike98,    input wire spike99,    input wire spike100,
    input wire spike101,    input wire spike102,    input wire spike103,    input wire spike104,    input wire spike105,    input wire spike106,    input wire spike107,    input wire spike108,    input wire spike109,    input wire spike110,    input wire spike111,    input wire spike112,    input wire spike113,    input wire spike114,    input wire spike115,    input wire spike116,    input wire spike117,    input wire spike118,    input wire spike119,    input wire spike120,    input wire spike121,    input wire spike122,    input wire spike123,    input wire spike124,    input wire spike125,    input wire spike126,    input wire spike127,    input wire spike128,    input wire spike129,    input wire spike130,    input wire spike131,    input wire spike132,    input wire spike133,    input wire spike134,    input wire spike135,    input wire spike136,    input wire spike137,    input wire spike138,    input wire spike139,    input wire spike140,    input wire spike141,    input wire spike142,    input wire spike143,    input wire spike144,    input wire spike145,    input wire spike146,    input wire spike147,    input wire spike148,    input wire spike149,    input wire spike150,    input wire spike151,    input wire spike152,    input wire spike153,    input wire spike154,    input wire spike155,    input wire spike156,    input wire spike157,    input wire spike158,    input wire spike159,    input wire spike160,    input wire spike161,    input wire spike162,    input wire spike163,    input wire spike164,    input wire spike165,    input wire spike166,    input wire spike167,    input wire spike168,    input wire spike169,    input wire spike170,    input wire spike171,    input wire spike172,    input wire spike173,    input wire spike174,    input wire spike175,    input wire spike176,    input wire spike177,    input wire spike178,    input wire spike179,    input wire spike180,    input wire spike181,    input wire spike182,    input wire spike183,    input wire spike184,    input wire spike185,    input wire spike186,    input wire spike187,    input wire spike188,    input wire spike189,    input wire spike190,    input wire spike191,    input wire spike192,    input wire spike193,    input wire spike194,    input wire spike195,    input wire spike196,    input wire spike197,    input wire spike198,    input wire spike199,    input wire spike200,
    input wire spike201,    input wire spike202,    input wire spike203,    input wire spike204,    input wire spike205,    input wire spike206,    input wire spike207,    input wire spike208,    input wire spike209,    input wire spike210,    input wire spike211,    input wire spike212,    input wire spike213,    input wire spike214,    input wire spike215,    input wire spike216,    input wire spike217,    input wire spike218,    input wire spike219,    input wire spike220,    input wire spike221,    input wire spike222,    input wire spike223,    input wire spike224,    input wire spike225,    input wire spike226,    input wire spike227,    input wire spike228,    input wire spike229,    input wire spike230,    input wire spike231,    input wire spike232,    input wire spike233,    input wire spike234,    input wire spike235,    input wire spike236,    input wire spike237,    input wire spike238,    input wire spike239,    input wire spike240,    input wire spike241,    input wire spike242,    input wire spike243,    input wire spike244,    input wire spike245,    input wire spike246,    input wire spike247,    input wire spike248,    input wire spike249,    input wire spike250,    input wire spike251,    input wire spike252,    input wire spike253,    input wire spike254,    input wire spike255,    input wire spike256,    input wire spike257,    input wire spike258,    input wire spike259,    input wire spike260,    input wire spike261,    input wire spike262,    input wire spike263,    input wire spike264,    input wire spike265,    input wire spike266,    input wire spike267,    input wire spike268,    input wire spike269,    input wire spike270,    input wire spike271,    input wire spike272,    input wire spike273,    input wire spike274,    input wire spike275,    input wire spike276,    input wire spike277,    input wire spike278,    input wire spike279,    input wire spike280,    input wire spike281,    input wire spike282,    input wire spike283,    input wire spike284,    input wire spike285,    input wire spike286,    input wire spike287,    input wire spike288,    input wire spike289,    input wire spike290,    input wire spike291,    input wire spike292,    input wire spike293,    input wire spike294,    input wire spike295,    input wire spike296,    input wire spike297,    input wire spike298,    input wire spike299,    input wire spike300,
    input wire spike301,    input wire spike302,    input wire spike303,    input wire spike304,    input wire spike305,    input wire spike306,    input wire spike307,    input wire spike308,    input wire spike309,    input wire spike310,    input wire spike311,    input wire spike312,    input wire spike313,    input wire spike314,    input wire spike315,    input wire spike316,    input wire spike317,    input wire spike318,    input wire spike319,    input wire spike320,    input wire spike321,    input wire spike322,    input wire spike323,    input wire spike324,    input wire spike325,    input wire spike326,    input wire spike327,    input wire spike328,    input wire spike329,    input wire spike330,    input wire spike331,    input wire spike332,    input wire spike333,    input wire spike334,    input wire spike335,    input wire spike336,    input wire spike337,    input wire spike338,    input wire spike339,    input wire spike340,    input wire spike341,    input wire spike342,    input wire spike343,    input wire spike344,    input wire spike345,    input wire spike346,    input wire spike347,    input wire spike348,    input wire spike349,    input wire spike350,    input wire spike351,    input wire spike352,    input wire spike353,    input wire spike354,    input wire spike355,    input wire spike356,    input wire spike357,    input wire spike358,    input wire spike359,    input wire spike360,    input wire spike361,    input wire spike362,    input wire spike363,    input wire spike364,    input wire spike365,    input wire spike366,    input wire spike367,    input wire spike368,    input wire spike369,    input wire spike370,    input wire spike371,    input wire spike372,    input wire spike373,    input wire spike374,    input wire spike375,    input wire spike376,    input wire spike377,    input wire spike378,    input wire spike379,    input wire spike380,    input wire spike381,    input wire spike382,    input wire spike383,    input wire spike384,    input wire spike385,    input wire spike386,    input wire spike387,    input wire spike388,    input wire spike389,    input wire spike390,    input wire spike391,    input wire spike392,    input wire spike393,    input wire spike394,    input wire spike395,    input wire spike396,    input wire spike397,    input wire spike398,    input wire spike399,    input wire spike400,
    input wire spike401,    input wire spike402,    input wire spike403,    input wire spike404,    input wire spike405,    input wire spike406,    input wire spike407,    input wire spike408,    input wire spike409,    input wire spike410,    input wire spike411,    input wire spike412,    input wire spike413,    input wire spike414,    input wire spike415,    input wire spike416,    input wire spike417,    input wire spike418,    input wire spike419,    input wire spike420,    input wire spike421,    input wire spike422,    input wire spike423,    input wire spike424,    input wire spike425,    input wire spike426,    input wire spike427,    input wire spike428,    input wire spike429,    input wire spike430,    input wire spike431,    input wire spike432,    input wire spike433,    input wire spike434,    input wire spike435,    input wire spike436,    input wire spike437,    input wire spike438,    input wire spike439,    input wire spike440,    input wire spike441,    input wire spike442,    input wire spike443,    input wire spike444,    input wire spike445,    input wire spike446,    input wire spike447,    input wire spike448,    input wire spike449,    input wire spike450,    input wire spike451,    input wire spike452,    input wire spike453,    input wire spike454,    input wire spike455,    input wire spike456,    input wire spike457,    input wire spike458,    input wire spike459,    input wire spike460,    input wire spike461,    input wire spike462,    input wire spike463,    input wire spike464,    input wire spike465,    input wire spike466,    input wire spike467,    input wire spike468,    input wire spike469,    input wire spike470,    input wire spike471,    input wire spike472,    input wire spike473,    input wire spike474,    input wire spike475,    input wire spike476,    input wire spike477,    input wire spike478,    input wire spike479,    input wire spike480,    input wire spike481,    input wire spike482,    input wire spike483,    input wire spike484,    input wire spike485,    input wire spike486,    input wire spike487,    input wire spike488,    input wire spike489,    input wire spike490,    input wire spike491,    input wire spike492,    input wire spike493,    input wire spike494,    input wire spike495,    input wire spike496,    input wire spike497,    input wire spike498,    input wire spike499,    input wire spike500,
    input wire spike501,    input wire spike502,    input wire spike503,    input wire spike504,    input wire spike505,    input wire spike506,    input wire spike507,    input wire spike508,    input wire spike509,    input wire spike510,    input wire spike511,    input wire spike512,    input wire spike513,    input wire spike514,    input wire spike515,    input wire spike516,    input wire spike517,    input wire spike518,    input wire spike519,    input wire spike520,    input wire spike521,    input wire spike522,    input wire spike523,    input wire spike524,    input wire spike525,    input wire spike526,    input wire spike527,    input wire spike528,    input wire spike529,    input wire spike530,    input wire spike531,    input wire spike532,    input wire spike533,    input wire spike534,    input wire spike535,    input wire spike536,    input wire spike537,    input wire spike538,    input wire spike539,    input wire spike540,    input wire spike541,    input wire spike542,    input wire spike543,    input wire spike544,    input wire spike545,    input wire spike546,    input wire spike547,    input wire spike548,    input wire spike549,    input wire spike550,    input wire spike551,    input wire spike552,    input wire spike553,    input wire spike554,    input wire spike555,    input wire spike556,    input wire spike557,    input wire spike558,    input wire spike559,    input wire spike560,    input wire spike561,    input wire spike562,    input wire spike563,    input wire spike564,    input wire spike565,    input wire spike566,    input wire spike567,    input wire spike568,    input wire spike569,    input wire spike570,    input wire spike571,    input wire spike572,    input wire spike573,    input wire spike574,    input wire spike575,    input wire spike576,    input wire spike577,    input wire spike578,    input wire spike579,    input wire spike580,    input wire spike581,    input wire spike582,    input wire spike583,    input wire spike584,    input wire spike585,    input wire spike586,    input wire spike587,    input wire spike588,    input wire spike589,    input wire spike590,    input wire spike591,    input wire spike592,    input wire spike593,    input wire spike594,    input wire spike595,    input wire spike596,    input wire spike597,    input wire spike598,    input wire spike599,    input wire spike600,
    input wire spike601,    input wire spike602,    input wire spike603,    input wire spike604,    input wire spike605,    input wire spike606,    input wire spike607,    input wire spike608,    input wire spike609,    input wire spike610,    input wire spike611,    input wire spike612,    input wire spike613,    input wire spike614,    input wire spike615,    input wire spike616,    input wire spike617,    input wire spike618,    input wire spike619,    input wire spike620,    input wire spike621,    input wire spike622,    input wire spike623,    input wire spike624,    input wire spike625,    input wire spike626,    input wire spike627,    input wire spike628,    input wire spike629,    input wire spike630,    input wire spike631,    input wire spike632,    input wire spike633,    input wire spike634,    input wire spike635,    input wire spike636,    input wire spike637,    input wire spike638,    input wire spike639,    input wire spike640,    input wire spike641,    input wire spike642,    input wire spike643,    input wire spike644,    input wire spike645,    input wire spike646,    input wire spike647,    input wire spike648,    input wire spike649,    input wire spike650,    input wire spike651,    input wire spike652,    input wire spike653,    input wire spike654,    input wire spike655,    input wire spike656,    input wire spike657,    input wire spike658,    input wire spike659,    input wire spike660,    input wire spike661,    input wire spike662,    input wire spike663,    input wire spike664,    input wire spike665,    input wire spike666,    input wire spike667,    input wire spike668,    input wire spike669,    input wire spike670,    input wire spike671,    input wire spike672,    input wire spike673,    input wire spike674,    input wire spike675,    input wire spike676,    input wire spike677,    input wire spike678,    input wire spike679,    input wire spike680,    input wire spike681,    input wire spike682,    input wire spike683,    input wire spike684,    input wire spike685,    input wire spike686,    input wire spike687,    input wire spike688,    input wire spike689,    input wire spike690,    input wire spike691,    input wire spike692,    input wire spike693,    input wire spike694,    input wire spike695,    input wire spike696,    input wire spike697,    input wire spike698,    input wire spike699,    input wire spike700,
    input wire spike701,    input wire spike702,    input wire spike703,    input wire spike704,    input wire spike705,    input wire spike706,    input wire spike707,    input wire spike708,    input wire spike709,    input wire spike710,    input wire spike711,    input wire spike712,    input wire spike713,    input wire spike714,    input wire spike715,    input wire spike716,    input wire spike717,    input wire spike718,    input wire spike719,    input wire spike720,    input wire spike721,    input wire spike722,    input wire spike723,    input wire spike724,    input wire spike725,    input wire spike726,    input wire spike727,    input wire spike728,    input wire spike729,    input wire spike730,    input wire spike731,    input wire spike732,    input wire spike733,    input wire spike734,    input wire spike735,    input wire spike736,    input wire spike737,    input wire spike738,    input wire spike739,    input wire spike740,    input wire spike741,    input wire spike742,    input wire spike743,    input wire spike744,    input wire spike745,    input wire spike746,    input wire spike747,    input wire spike748,    input wire spike749,    input wire spike750,    input wire spike751,    input wire spike752,    input wire spike753,    input wire spike754,    input wire spike755,    input wire spike756,    input wire spike757,    input wire spike758,    input wire spike759,    input wire spike760,    input wire spike761,    input wire spike762,    input wire spike763,    input wire spike764,    input wire spike765,    input wire spike766,    input wire spike767,    input wire spike768,    input wire spike769,    input wire spike770,    input wire spike771,    input wire spike772,    input wire spike773,    input wire spike774,    input wire spike775,    input wire spike776,    input wire spike777,    input wire spike778,    input wire spike779,    input wire spike780,    input wire spike781,    input wire spike782,    input wire spike783,    input wire spike784,    input wire spike785,    input wire spike786,    input wire spike787,    input wire spike788,    input wire spike789,    input wire spike790,    input wire spike791,    input wire spike792,    input wire spike793,    input wire spike794,    input wire spike795,    input wire spike796,    input wire spike797,    input wire spike798,    input wire spike799,    input wire spike800,
    input wire spike801,    input wire spike802,    input wire spike803,    input wire spike804,    input wire spike805,    input wire spike806,    input wire spike807,    input wire spike808,    input wire spike809,    input wire spike810,    input wire spike811,    input wire spike812,    input wire spike813,    input wire spike814,    input wire spike815,    input wire spike816,    input wire spike817,    input wire spike818,    input wire spike819,    input wire spike820,    input wire spike821,    input wire spike822,    input wire spike823,    input wire spike824,    input wire spike825,    input wire spike826,    input wire spike827,    input wire spike828,    input wire spike829,    input wire spike830,    input wire spike831,    input wire spike832,    input wire spike833,    input wire spike834,    input wire spike835,    input wire spike836,    input wire spike837,    input wire spike838,    input wire spike839,    input wire spike840,    input wire spike841,    input wire spike842,    input wire spike843,    input wire spike844,    input wire spike845,    input wire spike846,    input wire spike847,    input wire spike848,    input wire spike849,    input wire spike850,    input wire spike851,    input wire spike852,    input wire spike853,    input wire spike854,    input wire spike855,    input wire spike856,    input wire spike857,    input wire spike858,    input wire spike859,    input wire spike860,    input wire spike861,    input wire spike862,    input wire spike863,    input wire spike864,    input wire spike865,    input wire spike866,    input wire spike867,    input wire spike868,    input wire spike869,    input wire spike870,    input wire spike871,    input wire spike872,    input wire spike873,    input wire spike874,    input wire spike875,    input wire spike876,    input wire spike877,    input wire spike878,    input wire spike879,    input wire spike880,    input wire spike881,    input wire spike882,    input wire spike883,    input wire spike884,    input wire spike885,    input wire spike886,    input wire spike887,    input wire spike888,    input wire spike889,    input wire spike890,    input wire spike891,    input wire spike892,    input wire spike893,    input wire spike894,    input wire spike895,    input wire spike896,    input wire spike897,    input wire spike898,    input wire spike899,    input wire spike900,
    input wire spike901,    input wire spike902,    input wire spike903,    input wire spike904,    input wire spike905,    input wire spike906,    input wire spike907,    input wire spike908,    input wire spike909,    input wire spike910,    input wire spike911,    input wire spike912,    input wire spike913,    input wire spike914,    input wire spike915,    input wire spike916,    input wire spike917,    input wire spike918,    input wire spike919,    input wire spike920,    input wire spike921,    input wire spike922,    input wire spike923,    input wire spike924,    input wire spike925,    input wire spike926,    input wire spike927,    input wire spike928,    input wire spike929,    input wire spike930,    input wire spike931,    input wire spike932,    input wire spike933,    input wire spike934,    input wire spike935,    input wire spike936,    input wire spike937,    input wire spike938,    input wire spike939,    input wire spike940,    input wire spike941,    input wire spike942,    input wire spike943,    input wire spike944,    input wire spike945,    input wire spike946,    input wire spike947,    input wire spike948,    input wire spike949,    input wire spike950,    input wire spike951,    input wire spike952,    input wire spike953,    input wire spike954,    input wire spike955,    input wire spike956,    input wire spike957,    input wire spike958,    input wire spike959,    input wire spike960,    input wire spike961,    input wire spike962,    input wire spike963,    input wire spike964,    input wire spike965,    input wire spike966,    input wire spike967,    input wire spike968,    input wire spike969,    input wire spike970,    input wire spike971,    input wire spike972,    input wire spike973,    input wire spike974,    input wire spike975,    input wire spike976,    input wire spike977,    input wire spike978,    input wire spike979,    input wire spike980,    input wire spike981,    input wire spike982,    input wire spike983,    input wire spike984,    input wire spike985,    input wire spike986,    input wire spike987,    input wire spike988,    input wire spike989,    input wire spike990,    input wire spike991,    input wire spike992,    input wire spike993,    input wire spike994,    input wire spike995,    input wire spike996,    input wire spike997,    input wire spike998,    input wire spike999,    input wire spike1000,
    input wire spike1001,    input wire spike1002,    input wire spike1003,    input wire spike1004,    input wire spike1005,    input wire spike1006,    input wire spike1007,    input wire spike1008,    input wire spike1009,    input wire spike1010,    input wire spike1011,    input wire spike1012,    input wire spike1013,    input wire spike1014,    input wire spike1015,    input wire spike1016,    input wire spike1017,    input wire spike1018,    input wire spike1019,    input wire spike1020,    input wire spike1021,    input wire spike1022,    input wire spike1023,
    output wire output
);

    parameter number_of_neurons= 1024;
    reg spike_register[0:number_of_neurons-1];
    always @(clear, lock1, spike0, spike1, spike2, spike3, spike4, spike5, spike6, spike7, spike8, spike9, spike10, spike11, spike12, spike13, spike14, spike15, spike16, spike17, spike18, spike19, spike20, spike21, spike22, spike23, spike24, spike25, spike26, spike27, spike28, spike29, spike30, spike31, spike32, spike33, spike34, spike35, spike36, spike37, spike38, spike39, spike40, spike41, spike42, spike43, spike44, spike45, spike46, spike47, spike48, spike49) begin
        spike_register[0] = spike0;

        spike_register[1] = spike1;        spike_register[2] = spike2;        spike_register[3] = spike3;        spike_register[4] = spike4;        spike_register[5] = spike5;        spike_register[6] = spike6;        spike_register[7] = spike7;        spike_register[8] = spike8;        spike_register[9] = spike9;        spike_register[10] = spike10;        spike_register[11] = spike11;        spike_register[12] = spike12;        spike_register[13] = spike13;        spike_register[14] = spike14;        spike_register[15] = spike15;        spike_register[16] = spike16;        spike_register[17] = spike17;        spike_register[18] = spike18;        spike_register[19] = spike19;        spike_register[20] = spike20;        spike_register[21] = spike21;        spike_register[22] = spike22;        spike_register[23] = spike23;        spike_register[24] = spike24;        spike_register[25] = spike25;        spike_register[26] = spike26;        spike_register[27] = spike27;        spike_register[28] = spike28;        spike_register[29] = spike29;        spike_register[30] = spike30;        spike_register[31] = spike31;        spike_register[32] = spike32;        spike_register[33] = spike33;        spike_register[34] = spike34;        spike_register[35] = spike35;        spike_register[36] = spike36;        spike_register[37] = spike37;        spike_register[38] = spike38;        spike_register[39] = spike39;        spike_register[40] = spike40;        spike_register[41] = spike41;        spike_register[42] = spike42;        spike_register[43] = spike43;        spike_register[44] = spike44;        spike_register[45] = spike45;        spike_register[46] = spike46;        spike_register[47] = spike47;        spike_register[48] = spike48;        spike_register[49] = spike49;
        #0.5
        if(clear == 1'b0) begin
            for(i1 = 0; i1 <=49; i1= i1+1) begin
                if(spike_register[i1] == 1 && lock1 == 0) begin
                    lock1 = 1;
                    for(j1 = connection_pointer[i1]; j1 < connection_pointer[i1+1]; j1= j1+1) begin
                        packet1 = #0.1 {neuron_addresses[i1], downstream_connections[j1]};
                    end
                    spike_register[i1] = 0;
                    lock1 = 0;
                end
            end
        end

    end
    always @(clear, lock2, spike50, spike51, spike52, spike53, spike54, spike55, spike56, spike57, spike58, spike59, spike60, spike61, spike62, spike63, spike64, spike65, spike66, spike67, spike68, spike69, spike70, spike71, spike72, spike73, spike74, spike75, spike76, spike77, spike78, spike79, spike80, spike81, spike82, spike83, spike84, spike85, spike86, spike87, spike88, spike89, spike90, spike91, spike92, spike93, spike94, spike95, spike96, spike97, spike98, spike99) begin
        spike_register[50] = spike50;        spike_register[51] = spike51;        spike_register[52] = spike52;        spike_register[53] = spike53;        spike_register[54] = spike54;        spike_register[55] = spike55;        spike_register[56] = spike56;        spike_register[57] = spike57;        spike_register[58] = spike58;        spike_register[59] = spike59;        spike_register[60] = spike60;        spike_register[61] = spike61;        spike_register[62] = spike62;        spike_register[63] = spike63;        spike_register[64] = spike64;        spike_register[65] = spike65;        spike_register[66] = spike66;        spike_register[67] = spike67;        spike_register[68] = spike68;        spike_register[69] = spike69;        spike_register[70] = spike70;        spike_register[71] = spike71;        spike_register[72] = spike72;        spike_register[73] = spike73;        spike_register[74] = spike74;        spike_register[75] = spike75;        spike_register[76] = spike76;        spike_register[77] = spike77;        spike_register[78] = spike78;        spike_register[79] = spike79;        spike_register[80] = spike80;        spike_register[81] = spike81;        spike_register[82] = spike82;        spike_register[83] = spike83;        spike_register[84] = spike84;        spike_register[85] = spike85;        spike_register[86] = spike86;        spike_register[87] = spike87;        spike_register[88] = spike88;        spike_register[89] = spike89;        spike_register[90] = spike90;        spike_register[91] = spike91;        spike_register[92] = spike92;        spike_register[93] = spike93;        spike_register[94] = spike94;        spike_register[95] = spike95;        spike_register[96] = spike96;        spike_register[97] = spike97;        spike_register[98] = spike98;        spike_register[99] = spike99;
        #0.5
        if(clear == 1'b0) begin
            for(i2 = 50; i2 <=99; i2= i2+1) begin
                if(spike_register[i2] == 1 && lock2 == 0) begin
                    lock2 = 1;
                    for(j2 = connection_pointer[i2]; j2 < connection_pointer[i2+1]; j2= j2+1) begin
                        packet2 = #0.1 {neuron_addresses[i2], downstream_connections[j2]};
                    end
                    spike_register[i2] = 0;
                    lock2 = 0;
                end
            end
        end

    end
    always @(clear, lock3, spike100, spike101, spike102, spike103, spike104, spike105, spike106, spike107, spike108, spike109, spike110, spike111, spike112, spike113, spike114, spike115, spike116, spike117, spike118, spike119, spike120, spike121, spike122, spike123, spike124, spike125, spike126, spike127, spike128, spike129, spike130, spike131, spike132, spike133, spike134, spike135, spike136, spike137, spike138, spike139, spike140, spike141, spike142, spike143, spike144, spike145, spike146, spike147, spike148, spike149) begin
        spike_register[100] = spike100;

        spike_register[101] = spike101;        spike_register[102] = spike102;        spike_register[103] = spike103;        spike_register[104] = spike104;        spike_register[105] = spike105;        spike_register[106] = spike106;        spike_register[107] = spike107;        spike_register[108] = spike108;        spike_register[109] = spike109;        spike_register[110] = spike110;        spike_register[111] = spike111;        spike_register[112] = spike112;        spike_register[113] = spike113;        spike_register[114] = spike114;        spike_register[115] = spike115;        spike_register[116] = spike116;        spike_register[117] = spike117;        spike_register[118] = spike118;        spike_register[119] = spike119;        spike_register[120] = spike120;        spike_register[121] = spike121;        spike_register[122] = spike122;        spike_register[123] = spike123;        spike_register[124] = spike124;        spike_register[125] = spike125;        spike_register[126] = spike126;        spike_register[127] = spike127;        spike_register[128] = spike128;        spike_register[129] = spike129;        spike_register[130] = spike130;        spike_register[131] = spike131;        spike_register[132] = spike132;        spike_register[133] = spike133;        spike_register[134] = spike134;        spike_register[135] = spike135;        spike_register[136] = spike136;        spike_register[137] = spike137;        spike_register[138] = spike138;        spike_register[139] = spike139;        spike_register[140] = spike140;        spike_register[141] = spike141;        spike_register[142] = spike142;        spike_register[143] = spike143;        spike_register[144] = spike144;        spike_register[145] = spike145;        spike_register[146] = spike146;        spike_register[147] = spike147;        spike_register[148] = spike148;        spike_register[149] = spike149;
        #0.5
        if(clear == 1'b0) begin
            for(i3 = 100; i3 <=149; i3= i3+1) begin
                if(spike_register[i3] == 1 && lock3 == 0) begin
                    lock3 = 1;
                    for(j3 = connection_pointer[i3]; j3 < connection_pointer[i3+1]; j3= j3+1) begin
                        packet3 = #0.1 {neuron_addresses[i3], downstream_connections[j3]};
                    end
                    spike_register[i3] = 0;
                    lock3 = 0;
                end
            end
        end

    end
    always @(clear, lock4, spike150, spike151, spike152, spike153, spike154, spike155, spike156, spike157, spike158, spike159, spike160, spike161, spike162, spike163, spike164, spike165, spike166, spike167, spike168, spike169, spike170, spike171, spike172, spike173, spike174, spike175, spike176, spike177, spike178, spike179, spike180, spike181, spike182, spike183, spike184, spike185, spike186, spike187, spike188, spike189, spike190, spike191, spike192, spike193, spike194, spike195, spike196, spike197, spike198, spike199) begin
        spike_register[150] = spike150;        spike_register[151] = spike151;        spike_register[152] = spike152;        spike_register[153] = spike153;        spike_register[154] = spike154;        spike_register[155] = spike155;        spike_register[156] = spike156;        spike_register[157] = spike157;        spike_register[158] = spike158;        spike_register[159] = spike159;        spike_register[160] = spike160;        spike_register[161] = spike161;        spike_register[162] = spike162;        spike_register[163] = spike163;        spike_register[164] = spike164;        spike_register[165] = spike165;        spike_register[166] = spike166;        spike_register[167] = spike167;        spike_register[168] = spike168;        spike_register[169] = spike169;        spike_register[170] = spike170;        spike_register[171] = spike171;        spike_register[172] = spike172;        spike_register[173] = spike173;        spike_register[174] = spike174;        spike_register[175] = spike175;        spike_register[176] = spike176;        spike_register[177] = spike177;        spike_register[178] = spike178;        spike_register[179] = spike179;        spike_register[180] = spike180;        spike_register[181] = spike181;        spike_register[182] = spike182;        spike_register[183] = spike183;        spike_register[184] = spike184;        spike_register[185] = spike185;        spike_register[186] = spike186;        spike_register[187] = spike187;        spike_register[188] = spike188;        spike_register[189] = spike189;        spike_register[190] = spike190;        spike_register[191] = spike191;        spike_register[192] = spike192;        spike_register[193] = spike193;        spike_register[194] = spike194;        spike_register[195] = spike195;        spike_register[196] = spike196;        spike_register[197] = spike197;        spike_register[198] = spike198;        spike_register[199] = spike199;
        #0.5
        if(clear == 1'b0) begin
            for(i4 = 150; i4 <=199; i4= i4+1) begin
                if(spike_register[i4] == 1 && lock4 == 0) begin
                    lock4 = 1;
                    for(j4 = connection_pointer[i4]; j4 < connection_pointer[i4+1]; j4= j4+1) begin
                        packet4 = #0.1 {neuron_addresses[i4], downstream_connections[j4]};
                    end
                    spike_register[i4] = 0;
                    lock4 = 0;
                end
            end
        end

    end
    always @(clear, lock5, spike200, spike201, spike202, spike203, spike204, spike205, spike206, spike207, spike208, spike209, spike210, spike211, spike212, spike213, spike214, spike215, spike216, spike217, spike218, spike219, spike220, spike221, spike222, spike223, spike224, spike225, spike226, spike227, spike228, spike229, spike230, spike231, spike232, spike233, spike234, spike235, spike236, spike237, spike238, spike239, spike240, spike241, spike242, spike243, spike244, spike245, spike246, spike247, spike248, spike249) begin
        spike_register[200] = spike200;

        spike_register[201] = spike201;        spike_register[202] = spike202;        spike_register[203] = spike203;        spike_register[204] = spike204;        spike_register[205] = spike205;        spike_register[206] = spike206;        spike_register[207] = spike207;        spike_register[208] = spike208;        spike_register[209] = spike209;        spike_register[210] = spike210;        spike_register[211] = spike211;        spike_register[212] = spike212;        spike_register[213] = spike213;        spike_register[214] = spike214;        spike_register[215] = spike215;        spike_register[216] = spike216;        spike_register[217] = spike217;        spike_register[218] = spike218;        spike_register[219] = spike219;        spike_register[220] = spike220;        spike_register[221] = spike221;        spike_register[222] = spike222;        spike_register[223] = spike223;        spike_register[224] = spike224;        spike_register[225] = spike225;        spike_register[226] = spike226;        spike_register[227] = spike227;        spike_register[228] = spike228;        spike_register[229] = spike229;        spike_register[230] = spike230;        spike_register[231] = spike231;        spike_register[232] = spike232;        spike_register[233] = spike233;        spike_register[234] = spike234;        spike_register[235] = spike235;        spike_register[236] = spike236;        spike_register[237] = spike237;        spike_register[238] = spike238;        spike_register[239] = spike239;        spike_register[240] = spike240;        spike_register[241] = spike241;        spike_register[242] = spike242;        spike_register[243] = spike243;        spike_register[244] = spike244;        spike_register[245] = spike245;        spike_register[246] = spike246;        spike_register[247] = spike247;        spike_register[248] = spike248;        spike_register[249] = spike249;
        #0.5
        if(clear == 1'b0) begin
            for(i5 = 200; i5 <=249; i5= i5+1) begin
                if(spike_register[i5] == 1 && lock5 == 0) begin
                    lock5 = 1;
                    for(j5 = connection_pointer[i5]; j5 < connection_pointer[i5+1]; j5= j5+1) begin
                        packet5 = #0.1 {neuron_addresses[i5], downstream_connections[j5]};
                    end
                    spike_register[i5] = 0;
                    lock5 = 0;
                end
            end
        end

    end
    always @(clear, lock6, spike250, spike251, spike252, spike253, spike254, spike255, spike256, spike257, spike258, spike259, spike260, spike261, spike262, spike263, spike264, spike265, spike266, spike267, spike268, spike269, spike270, spike271, spike272, spike273, spike274, spike275, spike276, spike277, spike278, spike279, spike280, spike281, spike282, spike283, spike284, spike285, spike286, spike287, spike288, spike289, spike290, spike291, spike292, spike293, spike294, spike295, spike296, spike297, spike298, spike299) begin
        spike_register[250] = spike250;        spike_register[251] = spike251;        spike_register[252] = spike252;        spike_register[253] = spike253;        spike_register[254] = spike254;        spike_register[255] = spike255;        spike_register[256] = spike256;        spike_register[257] = spike257;        spike_register[258] = spike258;        spike_register[259] = spike259;        spike_register[260] = spike260;        spike_register[261] = spike261;        spike_register[262] = spike262;        spike_register[263] = spike263;        spike_register[264] = spike264;        spike_register[265] = spike265;        spike_register[266] = spike266;        spike_register[267] = spike267;        spike_register[268] = spike268;        spike_register[269] = spike269;        spike_register[270] = spike270;        spike_register[271] = spike271;        spike_register[272] = spike272;        spike_register[273] = spike273;        spike_register[274] = spike274;        spike_register[275] = spike275;        spike_register[276] = spike276;        spike_register[277] = spike277;        spike_register[278] = spike278;        spike_register[279] = spike279;        spike_register[280] = spike280;        spike_register[281] = spike281;        spike_register[282] = spike282;        spike_register[283] = spike283;        spike_register[284] = spike284;        spike_register[285] = spike285;        spike_register[286] = spike286;        spike_register[287] = spike287;        spike_register[288] = spike288;        spike_register[289] = spike289;        spike_register[290] = spike290;        spike_register[291] = spike291;        spike_register[292] = spike292;        spike_register[293] = spike293;        spike_register[294] = spike294;        spike_register[295] = spike295;        spike_register[296] = spike296;        spike_register[297] = spike297;        spike_register[298] = spike298;        spike_register[299] = spike299;
        #0.5
        if(clear == 1'b0) begin
            for(i6 = 250; i6 <=299; i6= i6+1) begin
                if(spike_register[i6] == 1 && lock6 == 0) begin
                    lock6 = 1;
                    for(j6 = connection_pointer[i6]; j6 < connection_pointer[i6+1]; j6= j6+1) begin
                        packet6 = #0.1 {neuron_addresses[i6], downstream_connections[j6]};
                    end
                    spike_register[i6] = 0;
                    lock6 = 0;
                end
            end
        end

    end
    always @(clear, lock7, spike300, spike301, spike302, spike303, spike304, spike305, spike306, spike307, spike308, spike309, spike310, spike311, spike312, spike313, spike314, spike315, spike316, spike317, spike318, spike319, spike320, spike321, spike322, spike323, spike324, spike325, spike326, spike327, spike328, spike329, spike330, spike331, spike332, spike333, spike334, spike335, spike336, spike337, spike338, spike339, spike340, spike341, spike342, spike343, spike344, spike345, spike346, spike347, spike348, spike349) begin
        spike_register[300] = spike300;

        spike_register[301] = spike301;        spike_register[302] = spike302;        spike_register[303] = spike303;        spike_register[304] = spike304;        spike_register[305] = spike305;        spike_register[306] = spike306;        spike_register[307] = spike307;        spike_register[308] = spike308;        spike_register[309] = spike309;        spike_register[310] = spike310;        spike_register[311] = spike311;        spike_register[312] = spike312;        spike_register[313] = spike313;        spike_register[314] = spike314;        spike_register[315] = spike315;        spike_register[316] = spike316;        spike_register[317] = spike317;        spike_register[318] = spike318;        spike_register[319] = spike319;        spike_register[320] = spike320;        spike_register[321] = spike321;        spike_register[322] = spike322;        spike_register[323] = spike323;        spike_register[324] = spike324;        spike_register[325] = spike325;        spike_register[326] = spike326;        spike_register[327] = spike327;        spike_register[328] = spike328;        spike_register[329] = spike329;        spike_register[330] = spike330;        spike_register[331] = spike331;        spike_register[332] = spike332;        spike_register[333] = spike333;        spike_register[334] = spike334;        spike_register[335] = spike335;        spike_register[336] = spike336;        spike_register[337] = spike337;        spike_register[338] = spike338;        spike_register[339] = spike339;        spike_register[340] = spike340;        spike_register[341] = spike341;        spike_register[342] = spike342;        spike_register[343] = spike343;        spike_register[344] = spike344;        spike_register[345] = spike345;        spike_register[346] = spike346;        spike_register[347] = spike347;        spike_register[348] = spike348;        spike_register[349] = spike349;
        #0.5
        if(clear == 1'b0) begin
            for(i7 = 300; i7 <=349; i7= i7+1) begin
                if(spike_register[i7] == 1 && lock7 == 0) begin
                    lock7 = 1;
                    for(j7 = connection_pointer[i7]; j7 < connection_pointer[i7+1]; j7= j7+1) begin
                        packet7 = #0.1 {neuron_addresses[i7], downstream_connections[j7]};
                    end
                    spike_register[i7] = 0;
                    lock7 = 0;
                end
            end
        end

    end
    always @(clear, lock8, spike350, spike351, spike352, spike353, spike354, spike355, spike356, spike357, spike358, spike359, spike360, spike361, spike362, spike363, spike364, spike365, spike366, spike367, spike368, spike369, spike370, spike371, spike372, spike373, spike374, spike375, spike376, spike377, spike378, spike379, spike380, spike381, spike382, spike383, spike384, spike385, spike386, spike387, spike388, spike389, spike390, spike391, spike392, spike393, spike394, spike395, spike396, spike397, spike398, spike399) begin
        spike_register[350] = spike350;        spike_register[351] = spike351;        spike_register[352] = spike352;        spike_register[353] = spike353;        spike_register[354] = spike354;        spike_register[355] = spike355;        spike_register[356] = spike356;        spike_register[357] = spike357;        spike_register[358] = spike358;        spike_register[359] = spike359;        spike_register[360] = spike360;        spike_register[361] = spike361;        spike_register[362] = spike362;        spike_register[363] = spike363;        spike_register[364] = spike364;        spike_register[365] = spike365;        spike_register[366] = spike366;        spike_register[367] = spike367;        spike_register[368] = spike368;        spike_register[369] = spike369;        spike_register[370] = spike370;        spike_register[371] = spike371;        spike_register[372] = spike372;        spike_register[373] = spike373;        spike_register[374] = spike374;        spike_register[375] = spike375;        spike_register[376] = spike376;        spike_register[377] = spike377;        spike_register[378] = spike378;        spike_register[379] = spike379;        spike_register[380] = spike380;        spike_register[381] = spike381;        spike_register[382] = spike382;        spike_register[383] = spike383;        spike_register[384] = spike384;        spike_register[385] = spike385;        spike_register[386] = spike386;        spike_register[387] = spike387;        spike_register[388] = spike388;        spike_register[389] = spike389;        spike_register[390] = spike390;        spike_register[391] = spike391;        spike_register[392] = spike392;        spike_register[393] = spike393;        spike_register[394] = spike394;        spike_register[395] = spike395;        spike_register[396] = spike396;        spike_register[397] = spike397;        spike_register[398] = spike398;        spike_register[399] = spike399;
        #0.5
        if(clear == 1'b0) begin
            for(i8 = 350; i8 <=399; i8= i8+1) begin
                if(spike_register[i8] == 1 && lock8 == 0) begin
                    lock8 = 1;
                    for(j8 = connection_pointer[i8]; j8 < connection_pointer[i8+1]; j8= j8+1) begin
                        packet8 = #0.1 {neuron_addresses[i8], downstream_connections[j8]};
                    end
                    spike_register[i8] = 0;
                    lock8 = 0;
                end
            end
        end

    end
    always @(clear, lock9, spike400, spike401, spike402, spike403, spike404, spike405, spike406, spike407, spike408, spike409, spike410, spike411, spike412, spike413, spike414, spike415, spike416, spike417, spike418, spike419, spike420, spike421, spike422, spike423, spike424, spike425, spike426, spike427, spike428, spike429, spike430, spike431, spike432, spike433, spike434, spike435, spike436, spike437, spike438, spike439, spike440, spike441, spike442, spike443, spike444, spike445, spike446, spike447, spike448, spike449) begin
        spike_register[400] = spike400;

        spike_register[401] = spike401;        spike_register[402] = spike402;        spike_register[403] = spike403;        spike_register[404] = spike404;        spike_register[405] = spike405;        spike_register[406] = spike406;        spike_register[407] = spike407;        spike_register[408] = spike408;        spike_register[409] = spike409;        spike_register[410] = spike410;        spike_register[411] = spike411;        spike_register[412] = spike412;        spike_register[413] = spike413;        spike_register[414] = spike414;        spike_register[415] = spike415;        spike_register[416] = spike416;        spike_register[417] = spike417;        spike_register[418] = spike418;        spike_register[419] = spike419;        spike_register[420] = spike420;        spike_register[421] = spike421;        spike_register[422] = spike422;        spike_register[423] = spike423;        spike_register[424] = spike424;        spike_register[425] = spike425;        spike_register[426] = spike426;        spike_register[427] = spike427;        spike_register[428] = spike428;        spike_register[429] = spike429;        spike_register[430] = spike430;        spike_register[431] = spike431;        spike_register[432] = spike432;        spike_register[433] = spike433;        spike_register[434] = spike434;        spike_register[435] = spike435;        spike_register[436] = spike436;        spike_register[437] = spike437;        spike_register[438] = spike438;        spike_register[439] = spike439;        spike_register[440] = spike440;        spike_register[441] = spike441;        spike_register[442] = spike442;        spike_register[443] = spike443;        spike_register[444] = spike444;        spike_register[445] = spike445;        spike_register[446] = spike446;        spike_register[447] = spike447;        spike_register[448] = spike448;        spike_register[449] = spike449;
        #0.5
        if(clear == 1'b0) begin
            for(i9 = 400; i9 <=449; i9= i9+1) begin
                if(spike_register[i9] == 1 && lock9 == 0) begin
                    lock9 = 1;
                    for(j9 = connection_pointer[i9]; j9 < connection_pointer[i9+1]; j9= j9+1) begin
                        packet9 = #0.1 {neuron_addresses[i9], downstream_connections[j9]};
                    end
                    spike_register[i9] = 0;
                    lock9 = 0;
                end
            end
        end

    end
    always @(clear, lock10, spike450, spike451, spike452, spike453, spike454, spike455, spike456, spike457, spike458, spike459, spike460, spike461, spike462, spike463, spike464, spike465, spike466, spike467, spike468, spike469, spike470, spike471, spike472, spike473, spike474, spike475, spike476, spike477, spike478, spike479, spike480, spike481, spike482, spike483, spike484, spike485, spike486, spike487, spike488, spike489, spike490, spike491, spike492, spike493, spike494, spike495, spike496, spike497, spike498, spike499) begin
        spike_register[450] = spike450;        spike_register[451] = spike451;        spike_register[452] = spike452;        spike_register[453] = spike453;        spike_register[454] = spike454;        spike_register[455] = spike455;        spike_register[456] = spike456;        spike_register[457] = spike457;        spike_register[458] = spike458;        spike_register[459] = spike459;        spike_register[460] = spike460;        spike_register[461] = spike461;        spike_register[462] = spike462;        spike_register[463] = spike463;        spike_register[464] = spike464;        spike_register[465] = spike465;        spike_register[466] = spike466;        spike_register[467] = spike467;        spike_register[468] = spike468;        spike_register[469] = spike469;        spike_register[470] = spike470;        spike_register[471] = spike471;        spike_register[472] = spike472;        spike_register[473] = spike473;        spike_register[474] = spike474;        spike_register[475] = spike475;        spike_register[476] = spike476;        spike_register[477] = spike477;        spike_register[478] = spike478;        spike_register[479] = spike479;        spike_register[480] = spike480;        spike_register[481] = spike481;        spike_register[482] = spike482;        spike_register[483] = spike483;        spike_register[484] = spike484;        spike_register[485] = spike485;        spike_register[486] = spike486;        spike_register[487] = spike487;        spike_register[488] = spike488;        spike_register[489] = spike489;        spike_register[490] = spike490;        spike_register[491] = spike491;        spike_register[492] = spike492;        spike_register[493] = spike493;        spike_register[494] = spike494;        spike_register[495] = spike495;        spike_register[496] = spike496;        spike_register[497] = spike497;        spike_register[498] = spike498;        spike_register[499] = spike499;
        #0.5
        if(clear == 1'b0) begin
            for(i10 = 450; i10 <=499; i10= i10+1) begin
                if(spike_register[i10] == 1 && lock10 == 0) begin
                    lock10 = 1;
                    for(j10 = connection_pointer[i10]; j10 < connection_pointer[i10+1]; j10= j10+1) begin
                        packet10 = #0.1 {neuron_addresses[i10], downstream_connections[j10]};
                    end
                    spike_register[i10] = 0;
                    lock10 = 0;
                end
            end
        end

    end
    always @(clear, lock11, spike500, spike501, spike502, spike503, spike504, spike505, spike506, spike507, spike508, spike509, spike510, spike511, spike512, spike513, spike514, spike515, spike516, spike517, spike518, spike519, spike520, spike521, spike522, spike523, spike524, spike525, spike526, spike527, spike528, spike529, spike530, spike531, spike532, spike533, spike534, spike535, spike536, spike537, spike538, spike539, spike540, spike541, spike542, spike543, spike544, spike545, spike546, spike547, spike548, spike549) begin
        spike_register[500] = spike500;

        spike_register[501] = spike501;        spike_register[502] = spike502;        spike_register[503] = spike503;        spike_register[504] = spike504;        spike_register[505] = spike505;        spike_register[506] = spike506;        spike_register[507] = spike507;        spike_register[508] = spike508;        spike_register[509] = spike509;        spike_register[510] = spike510;        spike_register[511] = spike511;        spike_register[512] = spike512;        spike_register[513] = spike513;        spike_register[514] = spike514;        spike_register[515] = spike515;        spike_register[516] = spike516;        spike_register[517] = spike517;        spike_register[518] = spike518;        spike_register[519] = spike519;        spike_register[520] = spike520;        spike_register[521] = spike521;        spike_register[522] = spike522;        spike_register[523] = spike523;        spike_register[524] = spike524;        spike_register[525] = spike525;        spike_register[526] = spike526;        spike_register[527] = spike527;        spike_register[528] = spike528;        spike_register[529] = spike529;        spike_register[530] = spike530;        spike_register[531] = spike531;        spike_register[532] = spike532;        spike_register[533] = spike533;        spike_register[534] = spike534;        spike_register[535] = spike535;        spike_register[536] = spike536;        spike_register[537] = spike537;        spike_register[538] = spike538;        spike_register[539] = spike539;        spike_register[540] = spike540;        spike_register[541] = spike541;        spike_register[542] = spike542;        spike_register[543] = spike543;        spike_register[544] = spike544;        spike_register[545] = spike545;        spike_register[546] = spike546;        spike_register[547] = spike547;        spike_register[548] = spike548;        spike_register[549] = spike549;
        #0.5
        if(clear == 1'b0) begin
            for(i11 = 500; i11 <=549; i11= i11+1) begin
                if(spike_register[i11] == 1 && lock11 == 0) begin
                    lock11 = 1;
                    for(j11 = connection_pointer[i11]; j11 < connection_pointer[i11+1]; j11= j11+1) begin
                        packet11 = #0.1 {neuron_addresses[i11], downstream_connections[j11]};
                    end
                    spike_register[i11] = 0;
                    lock11 = 0;
                end
            end
        end

    end
    always @(clear, lock12, spike550, spike551, spike552, spike553, spike554, spike555, spike556, spike557, spike558, spike559, spike560, spike561, spike562, spike563, spike564, spike565, spike566, spike567, spike568, spike569, spike570, spike571, spike572, spike573, spike574, spike575, spike576, spike577, spike578, spike579, spike580, spike581, spike582, spike583, spike584, spike585, spike586, spike587, spike588, spike589, spike590, spike591, spike592, spike593, spike594, spike595, spike596, spike597, spike598, spike599) begin
        spike_register[550] = spike550;        spike_register[551] = spike551;        spike_register[552] = spike552;        spike_register[553] = spike553;        spike_register[554] = spike554;        spike_register[555] = spike555;        spike_register[556] = spike556;        spike_register[557] = spike557;        spike_register[558] = spike558;        spike_register[559] = spike559;        spike_register[560] = spike560;        spike_register[561] = spike561;        spike_register[562] = spike562;        spike_register[563] = spike563;        spike_register[564] = spike564;        spike_register[565] = spike565;        spike_register[566] = spike566;        spike_register[567] = spike567;        spike_register[568] = spike568;        spike_register[569] = spike569;        spike_register[570] = spike570;        spike_register[571] = spike571;        spike_register[572] = spike572;        spike_register[573] = spike573;        spike_register[574] = spike574;        spike_register[575] = spike575;        spike_register[576] = spike576;        spike_register[577] = spike577;        spike_register[578] = spike578;        spike_register[579] = spike579;        spike_register[580] = spike580;        spike_register[581] = spike581;        spike_register[582] = spike582;        spike_register[583] = spike583;        spike_register[584] = spike584;        spike_register[585] = spike585;        spike_register[586] = spike586;        spike_register[587] = spike587;        spike_register[588] = spike588;        spike_register[589] = spike589;        spike_register[590] = spike590;        spike_register[591] = spike591;        spike_register[592] = spike592;        spike_register[593] = spike593;        spike_register[594] = spike594;        spike_register[595] = spike595;        spike_register[596] = spike596;        spike_register[597] = spike597;        spike_register[598] = spike598;        spike_register[599] = spike599;
        #0.5
        if(clear == 1'b0) begin
            for(i12 = 550; i12 <=599; i12= i12+1) begin
                if(spike_register[i12] == 1 && lock12 == 0) begin
                    lock12 = 1;
                    for(j12 = connection_pointer[i12]; j12 < connection_pointer[i12+1]; j12= j12+1) begin
                        packet12 = #0.1 {neuron_addresses[i12], downstream_connections[j12]};
                    end
                    spike_register[i12] = 0;
                    lock12 = 0;
                end
            end
        end

    end
    always @(clear, lock13, spike600, spike601, spike602, spike603, spike604, spike605, spike606, spike607, spike608, spike609, spike610, spike611, spike612, spike613, spike614, spike615, spike616, spike617, spike618, spike619, spike620, spike621, spike622, spike623, spike624, spike625, spike626, spike627, spike628, spike629, spike630, spike631, spike632, spike633, spike634, spike635, spike636, spike637, spike638, spike639, spike640, spike641, spike642, spike643, spike644, spike645, spike646, spike647, spike648, spike649) begin
        spike_register[600] = spike600;

        spike_register[601] = spike601;        spike_register[602] = spike602;        spike_register[603] = spike603;        spike_register[604] = spike604;        spike_register[605] = spike605;        spike_register[606] = spike606;        spike_register[607] = spike607;        spike_register[608] = spike608;        spike_register[609] = spike609;        spike_register[610] = spike610;        spike_register[611] = spike611;        spike_register[612] = spike612;        spike_register[613] = spike613;        spike_register[614] = spike614;        spike_register[615] = spike615;        spike_register[616] = spike616;        spike_register[617] = spike617;        spike_register[618] = spike618;        spike_register[619] = spike619;        spike_register[620] = spike620;        spike_register[621] = spike621;        spike_register[622] = spike622;        spike_register[623] = spike623;        spike_register[624] = spike624;        spike_register[625] = spike625;        spike_register[626] = spike626;        spike_register[627] = spike627;        spike_register[628] = spike628;        spike_register[629] = spike629;        spike_register[630] = spike630;        spike_register[631] = spike631;        spike_register[632] = spike632;        spike_register[633] = spike633;        spike_register[634] = spike634;        spike_register[635] = spike635;        spike_register[636] = spike636;        spike_register[637] = spike637;        spike_register[638] = spike638;        spike_register[639] = spike639;        spike_register[640] = spike640;        spike_register[641] = spike641;        spike_register[642] = spike642;        spike_register[643] = spike643;        spike_register[644] = spike644;        spike_register[645] = spike645;        spike_register[646] = spike646;        spike_register[647] = spike647;        spike_register[648] = spike648;        spike_register[649] = spike649;
        #0.5
        if(clear == 1'b0) begin
            for(i13 = 600; i13 <=649; i13= i13+1) begin
                if(spike_register[i13] == 1 && lock13 == 0) begin
                    lock13 = 1;
                    for(j13 = connection_pointer[i13]; j13 < connection_pointer[i13+1]; j13= j13+1) begin
                        packet13 = #0.1 {neuron_addresses[i13], downstream_connections[j13]};
                    end
                    spike_register[i13] = 0;
                    lock13 = 0;
                end
            end
        end

    end
    always @(clear, lock14, spike650, spike651, spike652, spike653, spike654, spike655, spike656, spike657, spike658, spike659, spike660, spike661, spike662, spike663, spike664, spike665, spike666, spike667, spike668, spike669, spike670, spike671, spike672, spike673, spike674, spike675, spike676, spike677, spike678, spike679, spike680, spike681, spike682, spike683, spike684, spike685, spike686, spike687, spike688, spike689, spike690, spike691, spike692, spike693, spike694, spike695, spike696, spike697, spike698, spike699) begin
        spike_register[650] = spike650;        spike_register[651] = spike651;        spike_register[652] = spike652;        spike_register[653] = spike653;        spike_register[654] = spike654;        spike_register[655] = spike655;        spike_register[656] = spike656;        spike_register[657] = spike657;        spike_register[658] = spike658;        spike_register[659] = spike659;        spike_register[660] = spike660;        spike_register[661] = spike661;        spike_register[662] = spike662;        spike_register[663] = spike663;        spike_register[664] = spike664;        spike_register[665] = spike665;        spike_register[666] = spike666;        spike_register[667] = spike667;        spike_register[668] = spike668;        spike_register[669] = spike669;        spike_register[670] = spike670;        spike_register[671] = spike671;        spike_register[672] = spike672;        spike_register[673] = spike673;        spike_register[674] = spike674;        spike_register[675] = spike675;        spike_register[676] = spike676;        spike_register[677] = spike677;        spike_register[678] = spike678;        spike_register[679] = spike679;        spike_register[680] = spike680;        spike_register[681] = spike681;        spike_register[682] = spike682;        spike_register[683] = spike683;        spike_register[684] = spike684;        spike_register[685] = spike685;        spike_register[686] = spike686;        spike_register[687] = spike687;        spike_register[688] = spike688;        spike_register[689] = spike689;        spike_register[690] = spike690;        spike_register[691] = spike691;        spike_register[692] = spike692;        spike_register[693] = spike693;        spike_register[694] = spike694;        spike_register[695] = spike695;        spike_register[696] = spike696;        spike_register[697] = spike697;        spike_register[698] = spike698;        spike_register[699] = spike699;
        #0.5
        if(clear == 1'b0) begin
            for(i14 = 650; i14 <=699; i14= i14+1) begin
                if(spike_register[i14] == 1 && lock14 == 0) begin
                    lock14 = 1;
                    for(j14 = connection_pointer[i14]; j14 < connection_pointer[i14+1]; j14= j14+1) begin
                        packet14 = #0.1 {neuron_addresses[i14], downstream_connections[j14]};
                    end
                    spike_register[i14] = 0;
                    lock14 = 0;
                end
            end
        end

    end
    always @(clear, lock15, spike700, spike701, spike702, spike703, spike704, spike705, spike706, spike707, spike708, spike709, spike710, spike711, spike712, spike713, spike714, spike715, spike716, spike717, spike718, spike719, spike720, spike721, spike722, spike723, spike724, spike725, spike726, spike727, spike728, spike729, spike730, spike731, spike732, spike733, spike734, spike735, spike736, spike737, spike738, spike739, spike740, spike741, spike742, spike743, spike744, spike745, spike746, spike747, spike748, spike749) begin
        spike_register[700] = spike700;

        spike_register[701] = spike701;        spike_register[702] = spike702;        spike_register[703] = spike703;        spike_register[704] = spike704;        spike_register[705] = spike705;        spike_register[706] = spike706;        spike_register[707] = spike707;        spike_register[708] = spike708;        spike_register[709] = spike709;        spike_register[710] = spike710;        spike_register[711] = spike711;        spike_register[712] = spike712;        spike_register[713] = spike713;        spike_register[714] = spike714;        spike_register[715] = spike715;        spike_register[716] = spike716;        spike_register[717] = spike717;        spike_register[718] = spike718;        spike_register[719] = spike719;        spike_register[720] = spike720;        spike_register[721] = spike721;        spike_register[722] = spike722;        spike_register[723] = spike723;        spike_register[724] = spike724;        spike_register[725] = spike725;        spike_register[726] = spike726;        spike_register[727] = spike727;        spike_register[728] = spike728;        spike_register[729] = spike729;        spike_register[730] = spike730;        spike_register[731] = spike731;        spike_register[732] = spike732;        spike_register[733] = spike733;        spike_register[734] = spike734;        spike_register[735] = spike735;        spike_register[736] = spike736;        spike_register[737] = spike737;        spike_register[738] = spike738;        spike_register[739] = spike739;        spike_register[740] = spike740;        spike_register[741] = spike741;        spike_register[742] = spike742;        spike_register[743] = spike743;        spike_register[744] = spike744;        spike_register[745] = spike745;        spike_register[746] = spike746;        spike_register[747] = spike747;        spike_register[748] = spike748;        spike_register[749] = spike749;
        #0.5
        if(clear == 1'b0) begin
            for(i15 = 700; i15 <=749; i15= i15+1) begin
                if(spike_register[i15] == 1 && lock15 == 0) begin
                    lock15 = 1;
                    for(j15 = connection_pointer[i15]; j15 < connection_pointer[i15+1]; j15= j15+1) begin
                        packet15 = #0.1 {neuron_addresses[i15], downstream_connections[j15]};
                    end
                    spike_register[i15] = 0;
                    lock15 = 0;
                end
            end
        end

    end
    always @(clear, lock16, spike750, spike751, spike752, spike753, spike754, spike755, spike756, spike757, spike758, spike759, spike760, spike761, spike762, spike763, spike764, spike765, spike766, spike767, spike768, spike769, spike770, spike771, spike772, spike773, spike774, spike775, spike776, spike777, spike778, spike779, spike780, spike781, spike782, spike783, spike784, spike785, spike786, spike787, spike788, spike789, spike790, spike791, spike792, spike793, spike794, spike795, spike796, spike797, spike798, spike799) begin
        spike_register[750] = spike750;        spike_register[751] = spike751;        spike_register[752] = spike752;        spike_register[753] = spike753;        spike_register[754] = spike754;        spike_register[755] = spike755;        spike_register[756] = spike756;        spike_register[757] = spike757;        spike_register[758] = spike758;        spike_register[759] = spike759;        spike_register[760] = spike760;        spike_register[761] = spike761;        spike_register[762] = spike762;        spike_register[763] = spike763;        spike_register[764] = spike764;        spike_register[765] = spike765;        spike_register[766] = spike766;        spike_register[767] = spike767;        spike_register[768] = spike768;        spike_register[769] = spike769;        spike_register[770] = spike770;        spike_register[771] = spike771;        spike_register[772] = spike772;        spike_register[773] = spike773;        spike_register[774] = spike774;        spike_register[775] = spike775;        spike_register[776] = spike776;        spike_register[777] = spike777;        spike_register[778] = spike778;        spike_register[779] = spike779;        spike_register[780] = spike780;        spike_register[781] = spike781;        spike_register[782] = spike782;        spike_register[783] = spike783;        spike_register[784] = spike784;        spike_register[785] = spike785;        spike_register[786] = spike786;        spike_register[787] = spike787;        spike_register[788] = spike788;        spike_register[789] = spike789;        spike_register[790] = spike790;        spike_register[791] = spike791;        spike_register[792] = spike792;        spike_register[793] = spike793;        spike_register[794] = spike794;        spike_register[795] = spike795;        spike_register[796] = spike796;        spike_register[797] = spike797;        spike_register[798] = spike798;        spike_register[799] = spike799;
        #0.5
        if(clear == 1'b0) begin
            for(i16 = 750; i16 <=799; i16= i16+1) begin
                if(spike_register[i16] == 1 && lock16 == 0) begin
                    lock16 = 1;
                    for(j16 = connection_pointer[i16]; j16 < connection_pointer[i16+1]; j16= j16+1) begin
                        packet16 = #0.1 {neuron_addresses[i16], downstream_connections[j16]};
                    end
                    spike_register[i16] = 0;
                    lock16 = 0;
                end
            end
        end

    end
    always @(clear, lock17, spike800, spike801, spike802, spike803, spike804, spike805, spike806, spike807, spike808, spike809, spike810, spike811, spike812, spike813, spike814, spike815, spike816, spike817, spike818, spike819, spike820, spike821, spike822, spike823, spike824, spike825, spike826, spike827, spike828, spike829, spike830, spike831, spike832, spike833, spike834, spike835, spike836, spike837, spike838, spike839, spike840, spike841, spike842, spike843, spike844, spike845, spike846, spike847, spike848, spike849) begin
        spike_register[800] = spike800;

        spike_register[801] = spike801;        spike_register[802] = spike802;        spike_register[803] = spike803;        spike_register[804] = spike804;        spike_register[805] = spike805;        spike_register[806] = spike806;        spike_register[807] = spike807;        spike_register[808] = spike808;        spike_register[809] = spike809;        spike_register[810] = spike810;        spike_register[811] = spike811;        spike_register[812] = spike812;        spike_register[813] = spike813;        spike_register[814] = spike814;        spike_register[815] = spike815;        spike_register[816] = spike816;        spike_register[817] = spike817;        spike_register[818] = spike818;        spike_register[819] = spike819;        spike_register[820] = spike820;        spike_register[821] = spike821;        spike_register[822] = spike822;        spike_register[823] = spike823;        spike_register[824] = spike824;        spike_register[825] = spike825;        spike_register[826] = spike826;        spike_register[827] = spike827;        spike_register[828] = spike828;        spike_register[829] = spike829;        spike_register[830] = spike830;        spike_register[831] = spike831;        spike_register[832] = spike832;        spike_register[833] = spike833;        spike_register[834] = spike834;        spike_register[835] = spike835;        spike_register[836] = spike836;        spike_register[837] = spike837;        spike_register[838] = spike838;        spike_register[839] = spike839;        spike_register[840] = spike840;        spike_register[841] = spike841;        spike_register[842] = spike842;        spike_register[843] = spike843;        spike_register[844] = spike844;        spike_register[845] = spike845;        spike_register[846] = spike846;        spike_register[847] = spike847;        spike_register[848] = spike848;        spike_register[849] = spike849;
        #0.5
        if(clear == 1'b0) begin
            for(i17 = 800; i17 <=849; i17= i17+1) begin
                if(spike_register[i17] == 1 && lock17 == 0) begin
                    lock17 = 1;
                    for(j17 = connection_pointer[i17]; j17 < connection_pointer[i17+1]; j17= j17+1) begin
                        packet17 = #0.1 {neuron_addresses[i17], downstream_connections[j17]};
                    end
                    spike_register[i17] = 0;
                    lock17 = 0;
                end
            end
        end

    end
    always @(clear, lock18, spike850, spike851, spike852, spike853, spike854, spike855, spike856, spike857, spike858, spike859, spike860, spike861, spike862, spike863, spike864, spike865, spike866, spike867, spike868, spike869, spike870, spike871, spike872, spike873, spike874, spike875, spike876, spike877, spike878, spike879, spike880, spike881, spike882, spike883, spike884, spike885, spike886, spike887, spike888, spike889, spike890, spike891, spike892, spike893, spike894, spike895, spike896, spike897, spike898, spike899) begin
        spike_register[850] = spike850;        spike_register[851] = spike851;        spike_register[852] = spike852;        spike_register[853] = spike853;        spike_register[854] = spike854;        spike_register[855] = spike855;        spike_register[856] = spike856;        spike_register[857] = spike857;        spike_register[858] = spike858;        spike_register[859] = spike859;        spike_register[860] = spike860;        spike_register[861] = spike861;        spike_register[862] = spike862;        spike_register[863] = spike863;        spike_register[864] = spike864;        spike_register[865] = spike865;        spike_register[866] = spike866;        spike_register[867] = spike867;        spike_register[868] = spike868;        spike_register[869] = spike869;        spike_register[870] = spike870;        spike_register[871] = spike871;        spike_register[872] = spike872;        spike_register[873] = spike873;        spike_register[874] = spike874;        spike_register[875] = spike875;        spike_register[876] = spike876;        spike_register[877] = spike877;        spike_register[878] = spike878;        spike_register[879] = spike879;        spike_register[880] = spike880;        spike_register[881] = spike881;        spike_register[882] = spike882;        spike_register[883] = spike883;        spike_register[884] = spike884;        spike_register[885] = spike885;        spike_register[886] = spike886;        spike_register[887] = spike887;        spike_register[888] = spike888;        spike_register[889] = spike889;        spike_register[890] = spike890;        spike_register[891] = spike891;        spike_register[892] = spike892;        spike_register[893] = spike893;        spike_register[894] = spike894;        spike_register[895] = spike895;        spike_register[896] = spike896;        spike_register[897] = spike897;        spike_register[898] = spike898;        spike_register[899] = spike899;
        #0.5
        if(clear == 1'b0) begin
            for(i18 = 850; i18 <=899; i18= i18+1) begin
                if(spike_register[i18] == 1 && lock18 == 0) begin
                    lock18 = 1;
                    for(j18 = connection_pointer[i18]; j18 < connection_pointer[i18+1]; j18= j18+1) begin
                        packet18 = #0.1 {neuron_addresses[i18], downstream_connections[j18]};
                    end
                    spike_register[i18] = 0;
                    lock18 = 0;
                end
            end
        end

    end
    always @(clear, lock19, spike900, spike901, spike902, spike903, spike904, spike905, spike906, spike907, spike908, spike909, spike910, spike911, spike912, spike913, spike914, spike915, spike916, spike917, spike918, spike919, spike920, spike921, spike922, spike923, spike924, spike925, spike926, spike927, spike928, spike929, spike930, spike931, spike932, spike933, spike934, spike935, spike936, spike937, spike938, spike939, spike940, spike941, spike942, spike943, spike944, spike945, spike946, spike947, spike948, spike949) begin
        spike_register[900] = spike900;

        spike_register[901] = spike901;        spike_register[902] = spike902;        spike_register[903] = spike903;        spike_register[904] = spike904;        spike_register[905] = spike905;        spike_register[906] = spike906;        spike_register[907] = spike907;        spike_register[908] = spike908;        spike_register[909] = spike909;        spike_register[910] = spike910;        spike_register[911] = spike911;        spike_register[912] = spike912;        spike_register[913] = spike913;        spike_register[914] = spike914;        spike_register[915] = spike915;        spike_register[916] = spike916;        spike_register[917] = spike917;        spike_register[918] = spike918;        spike_register[919] = spike919;        spike_register[920] = spike920;        spike_register[921] = spike921;        spike_register[922] = spike922;        spike_register[923] = spike923;        spike_register[924] = spike924;        spike_register[925] = spike925;        spike_register[926] = spike926;        spike_register[927] = spike927;        spike_register[928] = spike928;        spike_register[929] = spike929;        spike_register[930] = spike930;        spike_register[931] = spike931;        spike_register[932] = spike932;        spike_register[933] = spike933;        spike_register[934] = spike934;        spike_register[935] = spike935;        spike_register[936] = spike936;        spike_register[937] = spike937;        spike_register[938] = spike938;        spike_register[939] = spike939;        spike_register[940] = spike940;        spike_register[941] = spike941;        spike_register[942] = spike942;        spike_register[943] = spike943;        spike_register[944] = spike944;        spike_register[945] = spike945;        spike_register[946] = spike946;        spike_register[947] = spike947;        spike_register[948] = spike948;        spike_register[949] = spike949;
        #0.5
        if(clear == 1'b0) begin
            for(i19 = 900; i19 <=949; i19= i19+1) begin
                if(spike_register[i19] == 1 && lock19 == 0) begin
                    lock19 = 1;
                    for(j19 = connection_pointer[i19]; j19 < connection_pointer[i19+1]; j19= j19+1) begin
                        packet19 = #0.1 {neuron_addresses[i19], downstream_connections[j19]};
                    end
                    spike_register[i19] = 0;
                    lock19 = 0;
                end
            end
        end

    end
    always @(clear, lock20, spike950, spike951, spike952, spike953, spike954, spike955, spike956, spike957, spike958, spike959, spike960, spike961, spike962, spike963, spike964, spike965, spike966, spike967, spike968, spike969, spike970, spike971, spike972, spike973, spike974, spike975, spike976, spike977, spike978, spike979, spike980, spike981, spike982, spike983, spike984, spike985, spike986, spike987, spike988, spike989, spike990, spike991, spike992, spike993, spike994, spike995, spike996, spike997, spike998, spike999) begin
        spike_register[950] = spike950;        spike_register[951] = spike951;        spike_register[952] = spike952;        spike_register[953] = spike953;        spike_register[954] = spike954;        spike_register[955] = spike955;        spike_register[956] = spike956;        spike_register[957] = spike957;        spike_register[958] = spike958;        spike_register[959] = spike959;        spike_register[960] = spike960;        spike_register[961] = spike961;        spike_register[962] = spike962;        spike_register[963] = spike963;        spike_register[964] = spike964;        spike_register[965] = spike965;        spike_register[966] = spike966;        spike_register[967] = spike967;        spike_register[968] = spike968;        spike_register[969] = spike969;        spike_register[970] = spike970;        spike_register[971] = spike971;        spike_register[972] = spike972;        spike_register[973] = spike973;        spike_register[974] = spike974;        spike_register[975] = spike975;        spike_register[976] = spike976;        spike_register[977] = spike977;        spike_register[978] = spike978;        spike_register[979] = spike979;        spike_register[980] = spike980;        spike_register[981] = spike981;        spike_register[982] = spike982;        spike_register[983] = spike983;        spike_register[984] = spike984;        spike_register[985] = spike985;        spike_register[986] = spike986;        spike_register[987] = spike987;        spike_register[988] = spike988;        spike_register[989] = spike989;        spike_register[990] = spike990;        spike_register[991] = spike991;        spike_register[992] = spike992;        spike_register[993] = spike993;        spike_register[994] = spike994;        spike_register[995] = spike995;        spike_register[996] = spike996;        spike_register[997] = spike997;        spike_register[998] = spike998;        spike_register[999] = spike999;
        #0.5
        if(clear == 1'b0) begin
            for(i20 = 950; i20 <=999; i20= i20+1) begin
                if(spike_register[i20] == 1 && lock20 == 0) begin
                    lock20 = 1;
                    for(j20 = connection_pointer[i20]; j20 < connection_pointer[i20+1]; j20= j20+1) begin
                        packet20 = #0.1 {neuron_addresses[i20], downstream_connections[j20]};
                    end
                    spike_register[i20] = 0;
                    lock20 = 0;
                end
            end
        end

    end
    always @(clear, lock21, spike1000, spike1001, spike1002, spike1003, spike1004, spike1005, spike1006, spike1007, spike1008, spike1009, spike1010, spike1011, spike1012, spike1013, spike1014, spike1015, spike1016, spike1017, spike1018, spike1019, spike1020, spike1021, spike1022, spike1023) begin
        spike_register[1000] = spike1000;

        spike_register[1001] = spike1001;        spike_register[1002] = spike1002;        spike_register[1003] = spike1003;        spike_register[1004] = spike1004;        spike_register[1005] = spike1005;        spike_register[1006] = spike1006;        spike_register[1007] = spike1007;        spike_register[1008] = spike1008;        spike_register[1009] = spike1009;        spike_register[1010] = spike1010;        spike_register[1011] = spike1011;        spike_register[1012] = spike1012;        spike_register[1013] = spike1013;        spike_register[1014] = spike1014;        spike_register[1015] = spike1015;        spike_register[1016] = spike1016;        spike_register[1017] = spike1017;        spike_register[1018] = spike1018;        spike_register[1019] = spike1019;        spike_register[1020] = spike1020;        spike_register[1021] = spike1021;        spike_register[1022] = spike1022;        spike_register[1023] = spike1023;
        #0.5
        if(clear == 1'b0) begin
            for(i21 = 1000; i21 <=1049; i21= i21+1) begin
                if(spike_register[i21] == 1 && lock21 == 0) begin
                    lock21 = 1;
                    for(j21 = connection_pointer[i21]; j21 < connection_pointer[i21+1]; j21= j21+1) begin
                        packet21 = #0.1 {neuron_addresses[i21], downstream_connections[j21]};
                    end
                    spike_register[i21] = 0;
                    lock21 = 0;
                end
            end
        end

    end
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
    reg[18:0] i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21;
    reg[18:0] j1, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21;
    
endmodule
