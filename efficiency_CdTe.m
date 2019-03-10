clear all
 q = 1.6e-19 ;
 ni = 2.23e6 ;
 vt = 0.0259 ; 
 
 dCdS = 0.4e-4 ; % cm

%  lamda=[    302        303         304         305         306          307         308         309         310         311         312         313         314.0       315.0       316.0       317.0       318.0       319.0       320.0       321.0       322.0       323.0       324.0       325.0       326.0       327.0       328.0       329.0       330.0       331.0       332.0       333.0       334.0       335.0       336.0       337.0       338.0       339.0       340.0       341.0       342.0       343.0       344.0       345.0       346.0       347.0       348.0       349.0       350.0       351.0       352.0       353.0       354.0       355.0       356.0       357.0       358.0       359.0       360.0       361.0       362.0       363.0       364.0       365.0       366.0       367.0       368.0       369.0       370.0       371.0       372.0       373.0	374.0	375.0	376.0	377.0	378.0	379.0	380.0	381.0	382.0	383.0	384.0	385.0	386.0	387.0	388.0	389.0	390.0	391.0	392.0	393.0	394.0	395.0	396.0	397.0	398.0	399.0	400.0  401.0	402.0	403.0	404.0	405.0	406.0	407.0	408.0	409.0	410.0	411.0	412.0	413.0	414.0	415.0	416.0	417.0	418.0	419.0	420.0	421.0	422.0	423.0	424.0	425.0	426.0	427.0	428.0	429.0	430.0	431.0	432.0	433.0	434.0	435.0	436.0	437.0	438.0	439.0	440.0	441.0	442.0	443.0	444.0	445.0	446.0	447.0	448.0	449.0	450.0	451.0	452.0	453.0	454.0	455.0	456.0	457.0	458.0	459.0	460.0	461.0	462.0	463.0	464.0	465.0	466.0	467.0	468.0	469.0	470.0	471.0	472.0	473.0	474.0	475.0	476.0	477.0	478.0	479.0	480.0	481.0	482.0	483.0	484.0	485.0	486.0	487.0	488.0	489.0	490.0	491.0	492.0	493.0	494.0	495.0	496.0	497.0	498.0	499.0	500.0	501.0	502.0	503.0	504.0	505.0	506.0	507.0	508.0	509.0	510.0	511.0	512.0	513.0	514.0	515.0	516.0	517.0	518.0	519.0	520.0	521.0	522.0	523.0	524.0	525.0	526.0	527.0	528.0	529.0	530.0	531.0	532.0	533.0	534.0	535.0	536.0	537.0	538.0	539.0	540.0	541.0	542.0	543.0	544.0	545.0	546.0	547.0	548.0	549.0	550.0	551.0	552.0	553.0	554.0	555.0	556.0	557.0	558.0	559.0	560.0	561.0	562.0	563.0	564.0	565.0	566.0	567.0	568.0	569.0	570.0	571.0	572.0	573.0	574.0	575.0	576.0	577.0	578.0	579.0	580.0	581.0	582.0	583.0	584.0	585.0	586.0	587.0	588.0	589.0	590.0	591.0	592.0	593.0	594.0	595.0	596.0	597.0	598.0	599.0	600.0  601.0	602.0	603.0	604.0	605.0	606.0	607.0	608.0	609.0	610.0	611.0	612.0	613.0	614.0	615.0	616.0	617.0	618.0	619.0	620.0	621.0	622.0	623.0	624.0	625.0	626.0	627.0	628.0	629.0	630.0	631.0	632.0	633.0	634.0	635.0	636.0	637.0	638.0	639.0	640.0	641.0	642.0	643.0	644.0	645.0	646.0	647.0	648.0	649.0	650.0	651.0	652.0	653.0	654.0	655.0	656.0	657.0	658.0	659.0	660.0	661.0	662.0	663.0	664.0	665.0	666.0	667.0	668.0	669.0	670.0	671.0	672.0	673.0	674.0	675.0	676.0	677.0	678.0	679.0	680.0	681.0	682.0	683.0	684.0	685.0	686.0	687.0	688.0	689.0	690.0	691.0	692.0	693.0	694.0	695.0	696.0	697.0	698.0	699.0	700.0	701.0	702.0	703.0	704.0	705.0	706.0	707.0	708.0	709.0	710.0	711.0	712.0	713.0	714.0	715.0	716.0	717.0	718.0	719.0	720.0	721.0	722.0	723.0	724.0	725.0	726.0	727.0	728.0	729.0	730.0	731.0	732.0	733.0	734.0	735.0	736.0	737.0	738.0	739.0	740.0	741.0	742.0	743.0	744.0	745.0	746.0	747.0	748.0	749.0	750.0  751.0	752.0	753.0	754.0	755.0	756.0	757.0	758.0	759.0	760.0	761.0	762.0	763.0	764.0	765.0	766.0	767.0	768.0	769.0	770.0	771.0	772.0	773.0	774.0	775.0	776.0	777.0	778.0	779.0	780.0	781.0	782.0	783.0	784.0	785.0	786.0	787.0	788.0	789.0	790.0	791.0	792.0	793.0	794.0	795.0	796.0	797.0	798.0	799.0	800.0	801.0	802.0	803.0	804.0	805.0	806.0	807.0	808.0	809.0	810.0	811.0	812.0	813.0	814.0	815.0	816.0	817.0	818.0	819.0	820.0	821.0	822.0	823.0	824.0	825.0	826.0	827.0	828.0	829.0	830.0	831.0	832.0	833.0	834.0	835.0	836.0	837.0	838.0	839.0	840.0	841.0	842.0	843.0	844.0	845.0	846.0	847.0	848.0	849.0	850.0	851.0	852.0	853.0	854.0	855.0	856.0	857.0	858.0	859.0	860.0	861.0	862.0	863.0	864.0	865.0	866.0	867.0	868.0	869.0	870.0	871.0	872.0	873.0	874.0	875.0	876.0	877.0	878.0	879.0	880.0	881.0	882.0	883.0	884.0	885.0	886.0	887.0	888.0	889.0	890.0	891.0	892.0	893.0	894.0	895.0	896.0	897.0	898.0	899.0 900.0];
%  Wm2=[2.9209E-03	7.0945E-03	9.4701E-03	1.6463E-02	1.8577E-02	2.7849E-02	3.7837E-02	4.0534E-02	5.0939E-02	8.2922E-02	9.3376E-02	1.0733E-01	1.1969E-01	1.3625E-01	1.2348E-01	1.7158E-01	1.7594E-01	2.0470E-01	2.0527E-01	2.5024E-01	2.2203E-01	2.1226E-01	2.7537E-01	2.7894E-01	3.8120E-01	3.9806E-01	3.5116E-01	4.2235E-01	4.7139E-01	4.0262E-01	4.3623E-01	4.2944E-01	4.1497E-01	4.6388E-01	4.1519E-01	3.7380E-01	4.3411E-01	4.6355E-01	5.0180E-01	4.7139E-01	4.8934E-01	5.1489E-01	4.1843E-01	4.5898E-01	4.7778E-01	4.9404E-01	4.7511E-01	4.6564E-01	5.2798E-01	5.5172E-01	5.1791E-01	5.2040E-01	6.0498E-01	6.1140E-01	5.5387E-01	4.5673E-01	4.3006E-01	4.6953E-01	5.9817E-01	5.2024E-01	5.3420E-01	6.0191E-01	6.0628E-01	6.2359E-01	7.3532E-01	7.2285E-01	6.6759E-01	6.9315E-01	7.5507E-01	6.9338E-01	6.7444E-01	6.1886E-01	5.5640E-01	5.8930E-01	6.7480E-01	7.1225E-01	8.5595E-01	7.4389E-01	7.0077E-01	7.6383E-01	5.8678E-01	4.5499E-01	5.0968E-01	6.7355E-01	6.2100E-01	6.5147E-01	6.3582E-01	6.8543E-01	7.9699E-01	8.5138E-01	7.9493E-01	4.7975E-01	4.9567E-01	8.0772E-01	7.5655E-01	4.2619E-01	8.5249E-01	1.0693E+00	1.1141E+00  1.1603E+00	1.2061E+00	1.1613E+00	1.1801E+00	1.1511E+00	1.1227E+00	1.1026E+00	1.1514E+00	1.2299E+00	1.0485E+00	1.1738E+00	1.2478E+00	1.1971E+00	1.1842E+00	1.2258E+00	1.2624E+00	1.2312E+00	1.1777E+00	1.2258E+00	1.1232E+00	1.2757E+00	1.2583E+00	1.2184E+00	1.2117E+00	1.2488E+00	1.2135E+00	1.1724E+00	1.1839E+00	1.0963E+00	8.7462E-01	7.9394E-01	1.3207E+00	1.2288E+00	1.1352E+00	1.2452E+00	1.3659E+00	1.3943E+00	1.2238E+00	1.1775E+00	1.3499E+00	1.3313E+00	1.4250E+00	1.4453E+00	1.4084E+00	1.4619E+00	1.3108E+00	1.4903E+00	1.5081E+00	1.5045E+00	1.5595E+00	1.6173E+00	1.5482E+00	1.4297E+00	1.5335E+00	1.5224E+00	1.5724E+00	1.5854E+00	1.5514E+00	1.5391E+00	1.5291E+00	1.5827E+00	1.5975E+00	1.6031E+00	1.5544E+00	1.5350E+00	1.5673E+00	1.4973E+00	1.5619E+00	1.5682E+00	1.5077E+00	1.5331E+00	1.6126E+00	1.5499E+00	1.5671E+00	1.6185E+00	1.5631E+00	1.5724E+00	1.6230E+00	1.5916E+00	1.6181E+00	1.6177E+00	1.6236E+00	1.6038E+00	1.5734E+00	1.5683E+00	1.2716E+00	1.4241E+00	1.5413E+00	1.4519E+00	1.6224E+00	1.5595E+00	1.4869E+00	1.5903E+00	1.5525E+00	1.6485E+00	1.5676E+00	1.5944E+00	1.5509E+00	1.5507E+00	1.5451E+00	1.4978E+00	1.4966E+00	1.5653E+00	1.4587E+00	1.5635E+00	1.6264E+00	1.5560E+00	1.5165E+00	1.5893E+00	1.5481E+00	1.5769E+00	1.6186E+00	1.5206E+00	1.4885E+00	1.5314E+00	1.5455E+00	1.2594E+00	1.4403E+00	1.3957E+00	1.5236E+00	1.5346E+00	1.5690E+00	1.4789E+00	1.5905E+00	1.5781E+00	1.5341E+00	1.3417E+00	1.5357E+00	1.6071E+00	1.5446E+00	1.6292E+00	1.5998E+00	1.4286E+00	1.5302E+00	1.5535E+00	1.6199E+00	1.4989E+00	1.5738E+00	1.5352E+00	1.4825E+00	1.4251E+00	1.5511E+00	1.5256E+00	1.5792E+00	1.5435E+00	1.5291E+00	1.5490E+00	1.5049E+00	1.5520E+00	1.5399E+00	1.5382E+00	1.5697E+00	1.5250E+00	1.5549E+00	1.5634E+00	1.5366E+00	1.4988E+00	1.5310E+00	1.4483E+00	1.4740E+00	1.5595E+00	1.4847E+00	1.5408E+00	1.5106E+00	1.5201E+00	1.4374E+00	1.5320E+00	1.5180E+00	1.4807E+00	1.4816E+00	1.4331E+00	1.5134E+00	1.5198E+00	1.5119E+00	1.4777E+00	1.4654E+00	1.5023E+00	1.4560E+00	1.4770E+00	1.5020E+00	1.5089E+00	1.5320E+00	1.5479E+00	1.5448E+00	1.5324E+00	1.4953E+00	1.5281E+00	1.4934E+00	1.2894E+00	1.3709E+00	1.4662E+00	1.4354E+00	1.4561E+00	1.4491E+00	1.4308E+00	1.4745E+00	1.4788E+00	1.4607E+00	1.4606E+00	1.4753E+00  1.4579E+00	1.4360E+00	1.4664E+00	1.4921E+00	1.4895E+00	1.4822E+00	1.4911E+00	1.4862E+00	1.4749E+00	1.4686E+00	1.4611E+00	1.4831E+00	1.4621E+00	1.4176E+00	1.4697E+00	1.4310E+00	1.4128E+00	1.4664E+00	1.4733E+00	1.4739E+00	1.4802E+00	1.4269E+00	1.4165E+00	1.4118E+00	1.4026E+00	1.4012E+00	1.4417E+00	1.3631E+00	1.4114E+00	1.3924E+00	1.4161E+00	1.3638E+00	1.4508E+00	1.4284E+00	1.4458E+00	1.4128E+00	1.4610E+00	1.4707E+00	1.4646E+00	1.4340E+00	1.4348E+00	1.4376E+00	1.4525E+00	1.4462E+00	1.4567E+00	1.4150E+00	1.4086E+00	1.3952E+00	1.3519E+00	1.3594E+00	1.4447E+00	1.3871E+00	1.4311E+00	1.4153E+00	1.3499E+00	1.1851E+00	1.2393E+00	1.3855E+00	1.3905E+00	1.3992E+00	1.3933E+00	1.3819E+00	1.3844E+00	1.3967E+00	1.4214E+00	1.4203E+00	1.4102E+00	1.4150E+00	1.4394E+00	1.4196E+00	1.4169E+00	1.3972E+00	1.4094E+00	1.4074E+00	1.3958E+00	1.4120E+00	1.3991E+00	1.4066E+00	1.3947E+00	1.3969E+00	1.3915E+00	1.3981E+00	1.3830E+00	1.3739E+00	1.3748E+00	1.3438E+00	9.6824E-01	1.1206E+00	1.1278E+00	1.1821E+00	1.2333E+00	1.2689E+00	1.2609E+00	1.2464E+00	1.2714E+00	1.2684E+00	1.3403E+00	1.3192E+00	1.2918E+00	1.2823E+00	1.2659E+00	1.2674E+00	1.2747E+00	1.3078E+00	1.3214E+00	1.3144E+00	1.3090E+00	1.3048E+00	1.3095E+00	1.3175E+00	1.3155E+00	1.3071E+00	1.2918E+00	1.3029E+00	1.2587E+00	1.2716E+00	1.1071E+00	1.0296E+00	9.2318E-01	9.8550E-01	1.0861E+00	1.2407E+00	1.1444E+00	1.0555E+00	1.0380E+00	1.0813E+00	1.0850E+00	1.0400E+00	1.0466E+00	1.1285E+00	1.0703E+00	1.1534E+00	1.1962E+00	1.2357E+00	1.2178E+00	1.2059E+00	1.2039E+00	1.2269E+00	1.1905E+00	1.2195E+00	1.2148E+00	1.2153E+00	1.2405E+00	1.2503E+00	1.2497E+00	1.2470E+00	1.2477E+00	1.2401E+00	1.2357E+00	1.2341E+00  1.2286E+00	1.2330E+00	1.2266E+00	1.2420E+00	1.2383E+00	1.2232E+00	1.2221E+00	1.2295E+00	1.1945E+00	2.6604E-01	1.5396E-01	6.8766E-01	3.7952E-01	5.3878E-01	6.8601E-01	8.1461E-01	9.7417E-01	1.1138E+00	1.1278E+00	1.1608E+00	1.1686E+00	1.1778E+00	1.1771E+00	1.1771E+00	1.1771E+00	1.1798E+00	1.1727E+00	1.1713E+00	1.1765E+00	1.1636E+00	1.1607E+00	1.1662E+00	1.1614E+00	1.1536E+00	1.1586E+00	1.1592E+00	1.1450E+00	1.1305E+00	1.1257E+00	1.0910E+00	1.1058E+00	1.0953E+00	1.0875E+00	1.0972E+00	1.0932E+00	1.0742E+00	1.0913E+00	1.1121E+00	1.0905E+00	1.0725E+00	1.0843E+00	1.0856E+00	1.0657E+00	1.0782E+00	1.0545E+00	1.0974E+00	1.0859E+00	1.0821E+00	1.0548E+00	1.0559E+00	1.0533E+00	1.0268E+00	1.0086E+00	9.0356E-01	8.9523E-01	8.3216E-01	8.5183E-01	8.2259E-01	9.0519E-01	8.6188E-01	9.9764E-01	9.5157E-01	6.7271E-01	9.3506E-01	9.6935E-01	9.3381E-01	9.8465E-01	8.4979E-01	9.2930E-01	9.1601E-01	9.2392E-01	8.9426E-01	9.5650E-01	9.3412E-01	1.0032E+00	9.7234E-01	1.0092E+00	9.9901E-01	1.0013E+00	1.0157E+00	1.0101E+00	9.9703E-01	1.0053E+00	9.8631E-01	1.0165E+00	1.0187E+00	9.9170E-01	9.9217E-01	9.8596E-01	8.9372E-01	9.7493E-01	9.6927E-01	9.6486E-01	8.5112E-01	9.1300E-01	9.7317E-01	9.9166E-01	9.9196E-01	9.9171E-01	9.8816E-01	9.8679E-01	9.9449E-01	1.0005E+00	9.7916E-01	9.6324E-01	8.4900E-01	9.1546E-01	9.5920E-01	9.4956E-01	9.6755E-01	9.5387E-01	9.6686E-01	9.5721E-01	9.4042E-01	9.2687E-01	9.5277E-01	9.5615E-01	9.5237E-01	9.3656E-01	9.3957E-01	9.0861E-01	9.3245E-01	9.2927E-01	9.3305E-01	9.4423E-01	9.0752E-01	9.1062E-01	9.2228E-01	9.3455E-01	9.2393E-01	9.2584E-01	9.0881E-01	8.7327E-01	8.5130E-01	8.1357E-01	7.6253E-01	6.6566E-01	7.1780E-01	5.4871E-01	7.4260E-01];
 wavelength=[    302        303         304         305         306          307         308         309         310         311         312         313         314.0       315.0       316.0       317.0       318.0       319.0       320.0       321.0       322.0       323.0       324.0       325.0       326.0       327.0       328.0       329.0       330.0       331.0       332.0       333.0       334.0       335.0       336.0       337.0       338.0       339.0       340.0       341.0       342.0       343.0       344.0       345.0       346.0       347.0       348.0       349.0       350.0       351.0       352.0       353.0       354.0       355.0       356.0       357.0       358.0       359.0       360.0       361.0       362.0       363.0       364.0       365.0       366.0       367.0       368.0       369.0       370.0       371.0       372.0       373.0	374.0	375.0	376.0	377.0	378.0	379.0	380.0	381.0	382.0	383.0	384.0	385.0	386.0	387.0	388.0	389.0	390.0	391.0	392.0	393.0	394.0	395.0	396.0	397.0	398.0	399.0	400.0  401.0	402.0	403.0	404.0	405.0	406.0	407.0	408.0	409.0	410.0	411.0	412.0	413.0	414.0	415.0	416.0	417.0	418.0	419.0	420.0	421.0	422.0	423.0	424.0	425.0	426.0	427.0	428.0	429.0	430.0	431.0	432.0	433.0	434.0	435.0	436.0	437.0	438.0	439.0	440.0	441.0	442.0	443.0	444.0	445.0	446.0	447.0	448.0	449.0	450.0	451.0	452.0	453.0	454.0	455.0	456.0	457.0	458.0	459.0	460.0	461.0	462.0	463.0	464.0	465.0	466.0	467.0	468.0	469.0	470.0	471.0	472.0	473.0	474.0	475.0	476.0	477.0	478.0	479.0	480.0	481.0	482.0	483.0	484.0	485.0	486.0	487.0	488.0	489.0	490.0	491.0	492.0	493.0	494.0	495.0	496.0	497.0	498.0	499.0	500.0	501.0	502.0	503.0	504.0	505.0	506.0	507.0	508.0	509.0	510.0	511.0	512.0	513.0	514.0	515.0	516.0	517.0	518.0	519.0	520.0	521.0	522.0	523.0	524.0	525.0	526.0	527.0	528.0	529.0	530.0	531.0	532.0	533.0	534.0	535.0	536.0	537.0	538.0	539.0	540.0	541.0	542.0	543.0	544.0	545.0	546.0	547.0	548.0	549.0	550.0	551.0	552.0	553.0	554.0	555.0	556.0	557.0	558.0	559.0	560.0	561.0	562.0	563.0	564.0	565.0	566.0	567.0	568.0	569.0	570.0	571.0	572.0	573.0	574.0	575.0	576.0	577.0	578.0	579.0	580.0	581.0	582.0	583.0	584.0	585.0	586.0	587.0	588.0	589.0	590.0	591.0	592.0	593.0	594.0	595.0	596.0	597.0	598.0	599.0	600.0  601.0	602.0	603.0	604.0	605.0	606.0	607.0	608.0	609.0	610.0	611.0	612.0	613.0	614.0	615.0	616.0	617.0	618.0	619.0	620.0	621.0	622.0	623.0	624.0	625.0	626.0	627.0	628.0	629.0	630.0	631.0	632.0	633.0	634.0	635.0	636.0	637.0	638.0	639.0	640.0	641.0	642.0	643.0	644.0	645.0	646.0	647.0	648.0	649.0	650.0	651.0	652.0	653.0	654.0	655.0	656.0	657.0	658.0	659.0	660.0	661.0	662.0	663.0	664.0	665.0	666.0	667.0	668.0	669.0	670.0	671.0	672.0	673.0	674.0	675.0	676.0	677.0	678.0	679.0	680.0	681.0	682.0	683.0	684.0	685.0	686.0	687.0	688.0	689.0	690.0	691.0	692.0	693.0	694.0	695.0	696.0	697.0	698.0	699.0	700.0	701.0	702.0	703.0	704.0	705.0	706.0	707.0	708.0	709.0	710.0	711.0	712.0	713.0	714.0	715.0	716.0	717.0	718.0	719.0	720.0	721.0	722.0	723.0	724.0	725.0	726.0	727.0	728.0	729.0	730.0	731.0	732.0	733.0	734.0	735.0	736.0	737.0	738.0	739.0	740.0	741.0	742.0	743.0	744.0	745.0	746.0	747.0	748.0	749.0	750.0  751.0	752.0	753.0	754.0	755.0	756.0	757.0	758.0	759.0	760.0	761.0	762.0	763.0	764.0	765.0	766.0	767.0	768.0	769.0	770.0	771.0	772.0	773.0	774.0	775.0	776.0	777.0	778.0	779.0	780.0	781.0	782.0	783.0	784.0	785.0	786.0	787.0	788.0	789.0	790.0	791.0	792.0	793.0	794.0	795.0	796.0	797.0	798.0	799.0	800.0	801.0	802.0	803.0	804.0	805.0	806.0	807.0	808.0	809.0	810.0	811.0	812.0	813.0	814.0	815.0	816.0	817.0	818.0	819.0	820.0	821.0	822.0	823.0	824.0	825.0	826.0	827.0	828.0	829.0	830.0	831.0	832.0	833.0	834.0	835.0	836.0	837.0	838.0	839.0	840.0	841.0	842.0	843.0	844.0	845.0	846.0	847.0	848.0	849.0	850.0	851.0	852.0	853.0	854.0	855.0	856.0	857.0	858.0	859.0	860.0	861.0	862.0	863.0	864.0	865.0	866.0	867.0	868.0	869.0	870.0	871.0	872.0	873.0	874.0	875.0	876.0	877.0	878.0	879.0	880.0	881.0	882.0	883.0	884.0	885.0	886.0	887.0	888.0	889.0	890.0	891.0	892.0	893.0	894.0	895.0	896.0	897.0	898.0	899.0 900.0 901.0	902.0	903.0	904.0	905.0	906.0	907.0	908.0	909.0	910.0	911.0	912.0	913.0	914.0	915.0	916.0	917.0	918.0	919.0	920.0	921.0	922.0	923.0	924.0	925.0	926.0	927.0	928.0	929.0	930.0	931.0	932.0	933.0	934.0	935.0	936.0	937.0	938.0	939.0	940.0	941.0	942.0	943.0	944.0	945.0	946.0	947.0	948.0	949.0	950.0	951.0	952.0	953.0	954.0	955.0	956.0	957.0	958.0	959.0	960.0	961.0	962.0	963.0	964.0	965.0	966.0	967.0	968.0	969.0	970.0	971.0	972.0	973.0	974.0	975.0	976.0	977.0	978.0	979.0	980.0	981.0	982.0	983.0	984.0	985.0	986.0	987.0	988.0	989.0	990.0	991.0	992.0	993.0	994.0	995.0	996.0	997.0	998.0	999.0	1000.0	1001.0	1002.0	1003.0	1004.0	1005.0	1006.0	1007.0	1008.0	1009.0	1010.0	1011.0	1012.0	1013.0	1014.0	1015.0	1016.0	1017.0	1018.0	1019.0	1020.0	1021.0	1022.0	1023.0	1024.0	1025.0	1026.0	1027.0	1028.0	1029.0	1030.0	1031.0	1032.0	1033.0	1034.0	1035.0	1036.0	1037.0	1038.0	1039.0	1040.0	1041.0	1042.0	1043.0	1044.0	1045.0	1046.0	1047.0	1048.0	1049.0	1050.0	1051.0	1052.0	1053.0	1054.0	1055.0	1056.0	1057.0	1058.0	1059.0	1060.0	1061.0	1062.0	1063.0	1064.0	1065.0	1066.0	1067.0	1068.0	1069.0	1070.0	1071.0	1072.0	1073.0	1074.0	1075.0	1076.0	1077.0	1078.0	1079.0	1080.0	1081.0	1082.0	1083.0	1084.0	1085.0	1086.0	1087.0	1088.0	1089.0	1090.0	1091.0	1092.0	1093.0	1094.0	1095.0	1096.0	1097.0	1098.0	1099.0	1100.0	1101.0	1102.0	1103.0	1104.0	1105.0	1106.0	1107.0	1108.0	1109.0	1110.0	1111.0	1112.0	1113.0	1114.0	1115.0	1116.0	1117.0	1118.0	1119.0	1120.0	1121.0	1122.0	1123.0	1124.0	1125.0	1126.0	1127.0	1128.0	1129.0	1130.0	1131.0	1132.0	1133.0	1134.0	1135.0	1136.0	1137.0	1138.0	1139.0	1140.0	1141.0	1142.0	1143.0	1144.0	1145.0	1146.0	1147.0	1148.0	1149.0	1150.0 1151.0	1152.0	1153.0	1154.0	1155.0	1156.0	1157.0	1158.0	1159.0	1160.0	1161.0	1162.0	1163.0	1164.0	1165.0	1166.0	1167.0	1168.0	1169.0	1170.0	1171.0	1172.0	1173.0	1174.0	1175.0	1176.0	1177.0	1178.0	1179.0	1180.0	1181.0	1182.0	1183.0	1184.0	1185.0	1186.0	1187.0	1188.0	1189.0	1190.0	1191.0	1192.0	1193.0	1194.0	1195.0	1196.0	1197.0	1198.0	1199.0	1200.0	1201.0	1202.0	1203.0	1204.0	1205.0	1206.0	1207.0	1208.0	1209.0	1210.0	1211.0	1212.0	1213.0	1214.0	1215.0	1216.0	1217.0	1218.0	1219.0	1220.0	1221.0	1222.0	1223.0	1224.0	1225.0	1226.0	1227.0	1228.0	1229.0	1230.0	1231.0	1232.0	1233.0	1234.0	1235.0	1236.0	1237.0	1238.0	1239.0	1240.0	1241.0	1242.0	1243.0	1244.0	1245.0	1246.0	1247.0	1248.0	1249.0	1250.0	1251.0	1252.0	1253.0	1254.0	1255.0	1256.0	1257.0	1258.0	1259.0	1260.0	1261.0	1262.0	1263.0	1264.0	1265.0	1266.0	1267.0	1268.0	1269.0	1270.0	1271.0	1272.0	1273.0	1274.0	1275.0	1276.0	1277.0	1278.0	1279.0	1280.0	1281.0	1282.0	1283.0	1284.0	1285.0	1286.0	1287.0	1288.0	1289.0	1290.0	1291.0	1292.0	1293.0	1294.0	1295.0	1296.0	1297.0	1298.0	1299.0	1300.0	1301.0	1302.0	1303.0	1304.0	1305.0	1306.0	1307.0	1308.0	1309.0	1310.0	1311.0	1312.0	1313.0	1314.0	1315.0	1316.0	1317.0	1318.0	1319.0	1320.0	1321.0	1322.0	1323.0	1324.0	1325.0	1326.0	1327.0	1328.0	1329.0	1330.0	1331.0	1332.0	1333.0	1334.0	1335.0	1336.0	1337.0	1338.0	1339.0	1340.0	1341.0	1342.0	1343.0	1344.0	1345.0	1346.0	1347.0	1348.0	1349.0	1350.0	1351.0	1352.0	1353.0	1354.0	1355.0	1356.0	1357.0	1358.0	1359.0	1360.0	1361.0	1362.0	1363.0	1364.0	1365.0	1366.0	1367.0	1368.0	1369.0	1370.0	1371.0	1372.0	1373.0	1374.0	1375.0	1376.0	1377.0	1378.0	1379.0	1380.0	1381.0	1382.0	1383.0	1384.0	1385.0	1386.0	1387.0	1388.0	1389.0	1390.0	1391.0	1392.0	1393.0	1394.0	1395.0	1396.0	1397.0	1398.0	1399.0	1400.0];
 globaltilt=[2.9209E-03	7.0945E-03	9.4701E-03	1.6463E-02	1.8577E-02	2.7849E-02	3.7837E-02	4.0534E-02	5.0939E-02	8.2922E-02	9.3376E-02	1.0733E-01	1.1969E-01	1.3625E-01	1.2348E-01	1.7158E-01	1.7594E-01	2.0470E-01	2.0527E-01	2.5024E-01	2.2203E-01	2.1226E-01	2.7537E-01	2.7894E-01	3.8120E-01	3.9806E-01	3.5116E-01	4.2235E-01	4.7139E-01	4.0262E-01	4.3623E-01	4.2944E-01	4.1497E-01	4.6388E-01	4.1519E-01	3.7380E-01	4.3411E-01	4.6355E-01	5.0180E-01	4.7139E-01	4.8934E-01	5.1489E-01	4.1843E-01	4.5898E-01	4.7778E-01	4.9404E-01	4.7511E-01	4.6564E-01	5.2798E-01	5.5172E-01	5.1791E-01	5.2040E-01	6.0498E-01	6.1140E-01	5.5387E-01	4.5673E-01	4.3006E-01	4.6953E-01	5.9817E-01	5.2024E-01	5.3420E-01	6.0191E-01	6.0628E-01	6.2359E-01	7.3532E-01	7.2285E-01	6.6759E-01	6.9315E-01	7.5507E-01	6.9338E-01	6.7444E-01	6.1886E-01	5.5640E-01	5.8930E-01	6.7480E-01	7.1225E-01	8.5595E-01	7.4389E-01	7.0077E-01	7.6383E-01	5.8678E-01	4.5499E-01	5.0968E-01	6.7355E-01	6.2100E-01	6.5147E-01	6.3582E-01	6.8543E-01	7.9699E-01	8.5138E-01	7.9493E-01	4.7975E-01	4.9567E-01	8.0772E-01	7.5655E-01	4.2619E-01	8.5249E-01	1.0693E+00	1.1141E+00  1.1603E+00	1.2061E+00	1.1613E+00	1.1801E+00	1.1511E+00	1.1227E+00	1.1026E+00	1.1514E+00	1.2299E+00	1.0485E+00	1.1738E+00	1.2478E+00	1.1971E+00	1.1842E+00	1.2258E+00	1.2624E+00	1.2312E+00	1.1777E+00	1.2258E+00	1.1232E+00	1.2757E+00	1.2583E+00	1.2184E+00	1.2117E+00	1.2488E+00	1.2135E+00	1.1724E+00	1.1839E+00	1.0963E+00	8.7462E-01	7.9394E-01	1.3207E+00	1.2288E+00	1.1352E+00	1.2452E+00	1.3659E+00	1.3943E+00	1.2238E+00	1.1775E+00	1.3499E+00	1.3313E+00	1.4250E+00	1.4453E+00	1.4084E+00	1.4619E+00	1.3108E+00	1.4903E+00	1.5081E+00	1.5045E+00	1.5595E+00	1.6173E+00	1.5482E+00	1.4297E+00	1.5335E+00	1.5224E+00	1.5724E+00	1.5854E+00	1.5514E+00	1.5391E+00	1.5291E+00	1.5827E+00	1.5975E+00	1.6031E+00	1.5544E+00	1.5350E+00	1.5673E+00	1.4973E+00	1.5619E+00	1.5682E+00	1.5077E+00	1.5331E+00	1.6126E+00	1.5499E+00	1.5671E+00	1.6185E+00	1.5631E+00	1.5724E+00	1.6230E+00	1.5916E+00	1.6181E+00	1.6177E+00	1.6236E+00	1.6038E+00	1.5734E+00	1.5683E+00	1.2716E+00	1.4241E+00	1.5413E+00	1.4519E+00	1.6224E+00	1.5595E+00	1.4869E+00	1.5903E+00	1.5525E+00	1.6485E+00	1.5676E+00	1.5944E+00	1.5509E+00	1.5507E+00	1.5451E+00	1.4978E+00	1.4966E+00	1.5653E+00	1.4587E+00	1.5635E+00	1.6264E+00	1.5560E+00	1.5165E+00	1.5893E+00	1.5481E+00	1.5769E+00	1.6186E+00	1.5206E+00	1.4885E+00	1.5314E+00	1.5455E+00	1.2594E+00	1.4403E+00	1.3957E+00	1.5236E+00	1.5346E+00	1.5690E+00	1.4789E+00	1.5905E+00	1.5781E+00	1.5341E+00	1.3417E+00	1.5357E+00	1.6071E+00	1.5446E+00	1.6292E+00	1.5998E+00	1.4286E+00	1.5302E+00	1.5535E+00	1.6199E+00	1.4989E+00	1.5738E+00	1.5352E+00	1.4825E+00	1.4251E+00	1.5511E+00	1.5256E+00	1.5792E+00	1.5435E+00	1.5291E+00	1.5490E+00	1.5049E+00	1.5520E+00	1.5399E+00	1.5382E+00	1.5697E+00	1.5250E+00	1.5549E+00	1.5634E+00	1.5366E+00	1.4988E+00	1.5310E+00	1.4483E+00	1.4740E+00	1.5595E+00	1.4847E+00	1.5408E+00	1.5106E+00	1.5201E+00	1.4374E+00	1.5320E+00	1.5180E+00	1.4807E+00	1.4816E+00	1.4331E+00	1.5134E+00	1.5198E+00	1.5119E+00	1.4777E+00	1.4654E+00	1.5023E+00	1.4560E+00	1.4770E+00	1.5020E+00	1.5089E+00	1.5320E+00	1.5479E+00	1.5448E+00	1.5324E+00	1.4953E+00	1.5281E+00	1.4934E+00	1.2894E+00	1.3709E+00	1.4662E+00	1.4354E+00	1.4561E+00	1.4491E+00	1.4308E+00	1.4745E+00	1.4788E+00	1.4607E+00	1.4606E+00	1.4753E+00  1.4579E+00	1.4360E+00	1.4664E+00	1.4921E+00	1.4895E+00	1.4822E+00	1.4911E+00	1.4862E+00	1.4749E+00	1.4686E+00	1.4611E+00	1.4831E+00	1.4621E+00	1.4176E+00	1.4697E+00	1.4310E+00	1.4128E+00	1.4664E+00	1.4733E+00	1.4739E+00	1.4802E+00	1.4269E+00	1.4165E+00	1.4118E+00	1.4026E+00	1.4012E+00	1.4417E+00	1.3631E+00	1.4114E+00	1.3924E+00	1.4161E+00	1.3638E+00	1.4508E+00	1.4284E+00	1.4458E+00	1.4128E+00	1.4610E+00	1.4707E+00	1.4646E+00	1.4340E+00	1.4348E+00	1.4376E+00	1.4525E+00	1.4462E+00	1.4567E+00	1.4150E+00	1.4086E+00	1.3952E+00	1.3519E+00	1.3594E+00	1.4447E+00	1.3871E+00	1.4311E+00	1.4153E+00	1.3499E+00	1.1851E+00	1.2393E+00	1.3855E+00	1.3905E+00	1.3992E+00	1.3933E+00	1.3819E+00	1.3844E+00	1.3967E+00	1.4214E+00	1.4203E+00	1.4102E+00	1.4150E+00	1.4394E+00	1.4196E+00	1.4169E+00	1.3972E+00	1.4094E+00	1.4074E+00	1.3958E+00	1.4120E+00	1.3991E+00	1.4066E+00	1.3947E+00	1.3969E+00	1.3915E+00	1.3981E+00	1.3830E+00	1.3739E+00	1.3748E+00	1.3438E+00	9.6824E-01	1.1206E+00	1.1278E+00	1.1821E+00	1.2333E+00	1.2689E+00	1.2609E+00	1.2464E+00	1.2714E+00	1.2684E+00	1.3403E+00	1.3192E+00	1.2918E+00	1.2823E+00	1.2659E+00	1.2674E+00	1.2747E+00	1.3078E+00	1.3214E+00	1.3144E+00	1.3090E+00	1.3048E+00	1.3095E+00	1.3175E+00	1.3155E+00	1.3071E+00	1.2918E+00	1.3029E+00	1.2587E+00	1.2716E+00	1.1071E+00	1.0296E+00	9.2318E-01	9.8550E-01	1.0861E+00	1.2407E+00	1.1444E+00	1.0555E+00	1.0380E+00	1.0813E+00	1.0850E+00	1.0400E+00	1.0466E+00	1.1285E+00	1.0703E+00	1.1534E+00	1.1962E+00	1.2357E+00	1.2178E+00	1.2059E+00	1.2039E+00	1.2269E+00	1.1905E+00	1.2195E+00	1.2148E+00	1.2153E+00	1.2405E+00	1.2503E+00	1.2497E+00	1.2470E+00	1.2477E+00	1.2401E+00	1.2357E+00	1.2341E+00  1.2286E+00	1.2330E+00	1.2266E+00	1.2420E+00	1.2383E+00	1.2232E+00	1.2221E+00	1.2295E+00	1.1945E+00	2.6604E-01	1.5396E-01	6.8766E-01	3.7952E-01	5.3878E-01	6.8601E-01	8.1461E-01	9.7417E-01	1.1138E+00	1.1278E+00	1.1608E+00	1.1686E+00	1.1778E+00	1.1771E+00	1.1771E+00	1.1771E+00	1.1798E+00	1.1727E+00	1.1713E+00	1.1765E+00	1.1636E+00	1.1607E+00	1.1662E+00	1.1614E+00	1.1536E+00	1.1586E+00	1.1592E+00	1.1450E+00	1.1305E+00	1.1257E+00	1.0910E+00	1.1058E+00	1.0953E+00	1.0875E+00	1.0972E+00	1.0932E+00	1.0742E+00	1.0913E+00	1.1121E+00	1.0905E+00	1.0725E+00	1.0843E+00	1.0856E+00	1.0657E+00	1.0782E+00	1.0545E+00	1.0974E+00	1.0859E+00	1.0821E+00	1.0548E+00	1.0559E+00	1.0533E+00	1.0268E+00	1.0086E+00	9.0356E-01	8.9523E-01	8.3216E-01	8.5183E-01	8.2259E-01	9.0519E-01	8.6188E-01	9.9764E-01	9.5157E-01	6.7271E-01	9.3506E-01	9.6935E-01	9.3381E-01	9.8465E-01	8.4979E-01	9.2930E-01	9.1601E-01	9.2392E-01	8.9426E-01	9.5650E-01	9.3412E-01	1.0032E+00	9.7234E-01	1.0092E+00	9.9901E-01	1.0013E+00	1.0157E+00	1.0101E+00	9.9703E-01	1.0053E+00	9.8631E-01	1.0165E+00	1.0187E+00	9.9170E-01	9.9217E-01	9.8596E-01	8.9372E-01	9.7493E-01	9.6927E-01	9.6486E-01	8.5112E-01	9.1300E-01	9.7317E-01	9.9166E-01	9.9196E-01	9.9171E-01	9.8816E-01	9.8679E-01	9.9449E-01	1.0005E+00	9.7916E-01	9.6324E-01	8.4900E-01	9.1546E-01	9.5920E-01	9.4956E-01	9.6755E-01	9.5387E-01	9.6686E-01	9.5721E-01	9.4042E-01	9.2687E-01	9.5277E-01	9.5615E-01	9.5237E-01	9.3656E-01	9.3957E-01	9.0861E-01	9.3245E-01	9.2927E-01	9.3305E-01	9.4423E-01	9.0752E-01	9.1062E-01	9.2228E-01	9.3455E-01	9.2393E-01	9.2584E-01	9.0881E-01	8.7327E-01	8.5130E-01	8.1357E-01	7.6253E-01	6.6566E-01	7.1780E-01	5.4871E-01	7.4260E-01 5.9933E-01	6.6791E-01	6.8889E-01	8.4457E-01	8.1709E-01	7.7558E-01	6.3854E-01	6.5217E-01	7.0431E-01	6.2467E-01	6.6808E-01	6.8893E-01	6.2834E-01	6.2649E-01	6.7836E-01	5.7646E-01	7.3017E-01	5.9271E-01	7.3877E-01	7.4414E-01	7.8049E-01	7.0026E-01	7.4504E-01	7.2150E-01	7.1110E-01	7.0331E-01	7.8742E-01	5.8968E-01	5.5127E-01	4.3210E-01	4.0921E-01	3.0086E-01	2.4841E-01	1.4380E-01	2.5084E-01	1.6142E-01	1.6338E-01	2.0058E-01	3.9887E-01	4.7181E-01	3.7195E-01	4.0532E-01	2.7834E-01	2.8579E-01	3.6821E-01	1.9461E-01	3.7112E-01	2.7423E-01	4.9396E-01	1.4726E-01	4.8378E-01	2.6891E-01	3.4362E-01	4.2411E-01	3.4117E-01	3.2821E-01	2.7067E-01	4.6101E-01	3.7385E-01	4.2066E-01	4.6120E-01	4.4174E-01	5.0503E-01	4.5860E-01	5.0374E-01	5.0275E-01	5.0240E-01	6.5210E-01	6.8622E-01	6.3461E-01	7.1397E-01	6.8765E-01	6.0648E-01	5.7529E-01	5.8987E-01	5.7191E-01	6.3864E-01	6.1509E-01	6.3815E-01	6.0468E-01	7.1338E-01	6.9218E-01	6.6865E-01	7.3732E-01	6.8817E-01	7.5083E-01	7.3928E-01	7.3462E-01	7.4906E-01	7.3227E-01	7.5358E-01	7.5102E-01	7.3728E-01	7.5410E-01	7.5176E-01	7.4884E-01	7.3971E-01	7.3887E-01	7.3857E-01	7.3532E-01	7.4442E-01	7.2805E-01	7.3442E-01	7.2336E-01	6.8174E-01	7.1252E-01	7.2753E-01	7.2685E-01	7.1972E-01	7.1914E-01	7.2278E-01	7.1877E-01	7.1761E-01	7.2068E-01	7.0817E-01	7.1129E-01	7.0337E-01	7.1422E-01	6.8878E-01	6.9896E-01	7.0175E-01	6.8970E-01	6.9508E-01	6.9058E-01	6.9753E-01	6.9636E-01	6.9305E-01	6.9385E-01	6.8628E-01	6.9055E-01	6.8736E-01	6.8787E-01	6.7613E-01	6.8015E-01	6.8234E-01	6.8202E-01	6.7497E-01	6.7172E-01	6.7636E-01	6.7170E-01	6.7176E-01	6.7200E-01	6.6525E-01	6.6833E-01	6.6452E-01	6.4714E-01	6.5694E-01	6.6274E-01	6.5896E-01	6.5463E-01	6.5521E-01	6.5118E-01	6.4919E-01	6.4646E-01	6.4847E-01	6.4641E-01	6.4482E-01	6.3818E-01	6.1875E-01	6.3585E-01	6.2121E-01	6.3266E-01	6.2239E-01	6.3196E-01	6.2913E-01	6.1713E-01	6.2032E-01	6.1944E-01	5.8626E-01	6.0469E-01	6.1661E-01	6.1536E-01	6.0363E-01	6.2158E-01	5.9252E-01	6.1471E-01	6.0434E-01	6.0321E-01	6.0474E-01	5.9722E-01	5.8083E-01	5.8940E-01	5.9814E-01	5.7852E-01	5.9330E-01	5.5410E-01	5.6697E-01	5.9317E-01	5.7919E-01	5.5573E-01	5.8835E-01	5.8124E-01	5.1058E-01	5.3965E-01	5.2067E-01	5.0323E-01	5.7852E-01	5.0291E-01	5.0772E-01	4.8577E-01	4.9696E-01	4.6883E-01	4.6637E-01	4.6765E-01	5.0644E-01	3.9792E-01	4.8304E-01	4.1565E-01	4.1278E-01	4.7899E-01	3.3154E-01	4.1357E-01	2.6850E-01	2.9985E-01	2.4987E-01	2.0136E-01	7.9618E-02	2.1753E-01	1.1317E-01	1.4189E-01	1.8586E-01	8.1686E-02	1.2817E-01	1.0870E-01	1.4428E-01	5.1589E-02	1.5725E-01	9.9224E-02	1.0591E-01	7.0574E-02	2.9560E-01	2.3411E-01	1.5331E-01	4.1740E-02	1.5462E-02	1.2876E-01	2.8785E-01	2.0329E-01	2.9850E-01	2.5599E-01	1.9337E-01	2.2479E-01	3.1183E-01	1.1326E-01	1.4604E-01	1.5764E-01	5.9176E-02	2.7113E-01	2.1854E-01	1.2164E-01 2.0340E-01	2.4762E-01	2.3812E-01	1.4248E-01	3.1316E-01	2.8090E-01	3.1458E-01	3.1171E-01	3.3693E-01	2.8648E-01	3.4753E-01	3.5002E-01	4.6857E-01	4.0188E-01	3.8860E-01	3.7494E-01	4.0996E-01	4.1954E-01	4.2310E-01	4.5873E-01	4.4831E-01	4.5483E-01	4.5642E-01	3.3692E-01	4.5240E-01	4.7679E-01	4.7235E-01	3.6000E-01	4.8371E-01	4.4069E-01	4.5514E-01	3.2318E-01	4.3870E-01	4.1985E-01	4.0741E-01	4.7715E-01	4.5575E-01	3.3504E-01	4.1569E-01	4.6239E-01	4.4660E-01	4.7336E-01	4.5434E-01	4.6890E-01	4.4696E-01	4.3131E-01	4.7715E-01	4.3392E-01	3.6489E-01	4.4825E-01	4.3708E-01	4.3717E-01	4.3409E-01	3.6247E-01	4.3692E-01	4.8086E-01	4.2986E-01	4.3346E-01	4.1428E-01	4.5336E-01	4.2232E-01	4.2489E-01	4.6956E-01	4.3407E-01	4.2780E-01	4.6640E-01	4.5528E-01	4.5934E-01	4.4663E-01	4.5805E-01	4.6531E-01	4.5139E-01	4.4406E-01	4.4808E-01	4.6236E-01	4.6819E-01	4.3304E-01	4.6658E-01	4.6721E-01	4.6003E-01	4.7203E-01	4.6633E-01	4.5397E-01	4.7016E-01	4.6504E-01	4.6908E-01	4.6339E-01	4.6797E-01	4.6272E-01	4.6077E-01	4.6197E-01	4.6247E-01	4.5754E-01	4.5528E-01	4.5655E-01	4.5945E-01	4.5746E-01	4.5860E-01	4.5966E-01	4.5705E-01	4.5258E-01	4.5097E-01	4.4773E-01	4.4363E-01	4.5070E-01	4.4023E-01	4.3532E-01	4.4496E-01	4.2725E-01	4.3110E-01	4.1146E-01	3.9567E-01	4.0019E-01	3.7148E-01	3.9570E-01	3.8527E-01	3.8822E-01	3.7051E-01	2.4652E-01	3.8744E-01	4.0825E-01	4.0879E-01	4.0625E-01	4.0614E-01	4.1233E-01	4.1693E-01	4.2001E-01	4.2763E-01	4.2456E-01	4.2204E-01	4.1335E-01	3.7305E-01	4.0733E-01	4.2078E-01	4.2399E-01	4.2714E-01	4.2213E-01	4.1989E-01	4.0936E-01	4.1285E-01	4.1786E-01	3.9618E-01	4.1257E-01	4.0421E-01	4.0514E-01	3.8957E-01	3.7130E-01	3.9183E-01	4.0852E-01	3.5312E-01 3.6228E-01	3.9181E-01	3.4621E-01	3.0062E-01	3.8382E-01	3.8453E-01	3.0594E-01	3.4696E-01	3.8413E-01	3.0114E-01	3.3366E-01	3.3337E-01	3.1352E-01	2.8833E-01	2.8581E-01	3.2419E-01	3.1217E-01	3.3328E-01	2.6855E-01	2.5872E-01	2.9866E-01	3.0217E-01	2.3279E-01	2.6249E-01	3.2224E-01	2.8051E-01	2.6625E-01	2.3450E-01	1.7759E-01	2.2923E-01	1.4480E-01	1.4579E-01	2.0304E-01	1.6925E-01	2.3117E-01	1.8348E-01	1.6454E-01	1.7804E-01	1.7681E-01	1.6831E-01	1.7039E-01	1.7798E-01	1.2711E-01	7.5645E-02	1.0904E-01	5.8186E-02	6.0119E-02	4.7451E-03	1.6159E-02	1.6025E-02	4.6298E-03	1.5164E-03	9.6096E-05	2.9009E-04	3.6034E-06	4.8070E-05	7.1786E-05	4.1948E-06	7.3439E-07	2.1404E-06	4.8133E-09	1.8076E-11	3.1563E-06	1.3589E-06	9.0764E-12	1.2791E-05	4.9764E-06	1.4810E-13	5.1667E-07	2.9200E-07	1.9731E-08	2.7498E-06	4.4401E-05	1.7917E-04	3.2332E-04	2.5748E-04	1.2270E-04	1.1089E-03	5.2164E-05	8.1587E-05	2.3716E-06	2.5672E-06	4.4017E-08	6.1689E-07	2.0899E-06	2.5215E-06	1.9896E-04	4.0262E-06	5.8098E-04	4.9328E-04	3.4384E-04	2.3782E-05	1.1586E-04	7.5526E-05	6.7136E-07	6.3215E-09	4.9057E-05	1.2704E-03	8.1226E-04	3.2466E-09];
 lamda=wavelength(1:1099);
 Wm2=globaltilt(1:1099);
 alfaCdS = alpha_functionCdS(lamda) ; 
 attCdS = exp(-dCdS.*alfaCdS) ;
 
%  plot(lamda, attCdS)
 
 Wavelength_nm=lamda;
 Global_tilt_Wm2=Wm2.*attCdS;
 
%  plot(lamda, Global_tilt_Wm2,'r') ;
%  hold on
%  plot(lamda, Wm2) ;
%  hold on

% i=14

%%
% mu*tao product of hole is very less w.r.t electron
% mue*taoe=8*10^-4, muh*taoh=7*10^-5 [Sellin, IEEE TRANSACTIONS ON NUCLEAR SCIENCE, VOL. 52, NO. 6, DECEMBER 2005]

%%



alpha=alpha_functionCdTe(lamda);              %absorption coefficient- cm^-1
G0=0.77*(Global_tilt_Wm2.*lamda)./(1.24*1.6e-19*1000*100*100);
G =G0.*alpha;

mue=180;                %mobility of electron cm^2/V/sec [Prog. Photovolt: Res. Appl; 15:587-602]
muh=5;                  %mobility of hole [ratio from book "TK 2960 T445 2007 WEB", page-281]
taoe=1e-7;              %lifetime of electron- sec ?
taoh=2e-7;              %lifetime of hole- sec ?
                        %width- cm
mutaub = muh*taoh       ;
mutaut = mue*taoe        ;



Jsd=2.5e-10;
Vt=.0259;
IF=1.8;                 %ideality factor
R=7;                    %series resistance

Jm =[];
dif =[];


%%
V1=.8;
Vbi=.79;
W=1.8e-4; 
Jf = [];

 for V= [0:.01:Vbi];
  
% V = 0.01 ; % volt
    k = 1 ;
    dif(1)= 0.05 ;   % it should be higher then 0.05 because bellow this value curve will be distorted
  
    Jm(1) = 0 ;
    
for J = [0.0001:.00001:.05]
    
    k = k+1 ;
    Jm(k) = J ;
    
% Jd=Jsd*(exp((V+J*R)/(IF*Vt))-1);

 Jd=(q*ni*W*vt*(pi/2)*(exp((V+J*R)/(IF*vt))-1))/(sqrt(taoe*taoh)*(Vbi-(V+J*R)));

F =(Vbi-(V+J*R))/W;

A=(q*mutaub*F*G)./(W*(1-alpha*mutaub*F));
B=(q*mutaut*F*(exp(-W*alpha).*G))./(W*(1+alpha*mutaut*F));

  jb=A.*((1-exp(-alpha*W))./alpha - mutaub*F*(1-exp(-W/(mutaub*F))));
  jt=B.*(-(1-exp(alpha*W))./alpha - mutaut*F*(1-exp(-W/(mutaut*F))));
  
Jop1=jb+jt;
Jop = sum(Jop1) ;
Jtot=Jop-Jd ;

  dif(k) = abs(Jtot-J);
  
  if dif(k) >= dif(k-1)
    Jf1=Jm(k-1) ;
%     V1 = V;
   break 
  end
end

 Jf = [Jf Jf1];
 
 end
 V= [0:.01:Vbi];

% J=sum(J)
%  plot(V,-Jf,'r')
eff=max(V.*Jf)*10000/sum(globaltilt)*100


%% 
% in v100 we have 37 data
v100=[-0.497908	-0.447699	-0.395398	-0.343096	-0.297071	-0.244770	-0.194561	-0.146444	-0.087866	-0.046025	0.004184	0.050209	0.100418	0.150628	0.200837	0.255230	0.303347	0.349372	0.407950	0.451883	0.504184	0.552301	0.592050	0.629707	0.658996	0.682008	0.702929	0.728033	0.742678	0.759414	0.776151	0.784519	0.797071	0.807531	0.817992	0.826360	0.838912];
j100=[-0.017921	-0.017921	-0.017921	-0.017921	-0.017921	-0.017865	-0.017865	-0.017865	-0.017921	-0.017809	-0.017809	-0.017865	-0.017865	-0.017865	-0.017865	-0.017753	-0.017697	-0.017640	-0.017640	-0.017416	-0.017022	-0.016292	-0.015337	-0.013876	-0.012360	-0.010618	-0.008483	-0.006348	-0.004382	-0.002191	-0.000056	0.001966	0.003539	0.005843	0.007528	0.009607	0.011292];
% 
v32=[-0.497905	-0.464386	-0.418296	-0.370112	-0.330307	-0.282123	-0.250698	-0.202514	-0.162710	-0.120810	-0.083101	-0.034916	0.000698	0.050978	0.084497	0.134777	0.164106	0.212291	0.252095	0.296089	0.331704	0.386173	0.413408	0.465782	0.499302	0.549581	0.583101	0.635475	0.658520	0.704609	0.717179	0.740224	0.750698	0.767458	0.777933	0.790503	0.798883	0.805168	0.817738	0.828212	0.838687	0.847067	0.851257	0.859637];
j32=[-0.006106	-0.006106	-0.006106	-0.006050	-0.006106	-0.006106	-0.006050	-0.006106	-0.006162	-0.006162	-0.006050	-0.006050	-0.006106	-0.006050	-0.006050	-0.006106	-0.006106	-0.005994	-0.006050	-0.006106	-0.006050	-0.006050	-0.005994	-0.005882	-0.005994	-0.005826	-0.005658	-0.004986	-0.004426	-0.003025	-0.002129	-0.000784	0.000000	0.001569	0.002689	0.004034	0.005154	0.006218	0.007731	0.009356	0.010644	0.012101	0.013221	0.014622];
% 
v10=[-0.497905	-0.474860	-0.445531	-0.405726	-0.359637	-0.321927	-0.275838	-0.236034	-0.194134	-0.156425	-0.114525	-0.072626	-0.028631	0.011173	0.055168	0.094972	0.138967	0.176676	0.218576	0.262570	0.306564	0.344274	0.388268	0.430168	0.472067	0.509777	0.555866	0.597765	0.639665	0.683659	0.717179	0.738129	0.756983	0.771648	0.784218	0.798883	0.811453	0.821927	0.834497	0.838687	0.851257	0.857542	0.863827];
j10=[-0.002017	-0.002073	-0.002017	-0.001961	-0.002017	-0.002017	-0.002017	-0.002073	-0.001961	-0.002017	-0.001961	-0.001961	-0.002017	-0.002017	-0.002017	-0.001961	-0.001961	-0.001961	-0.001961	-0.001961	-0.001905	-0.001961	-0.001905	-0.001961	-0.001905	-0.001961	-0.001849	-0.001793	-0.001401	-0.000896	0.000112	0.001176	0.002521	0.003473	0.004706	0.005994	0.007339	0.008796	0.009916	0.011541	0.012885	0.014286	0.015406];
% % 
% v0=[-0.497905	-0.460196	-0.420391	-0.386872	-0.328212	-0.282123	-0.231844	-0.156425	-0.108240	-0.062151	0.004888	0.046788	0.097067	0.176676	0.222765	0.275140	0.342179	0.394553	0.442738	0.503492	0.553771	0.597765	0.658520	0.700419	0.733939	0.761173	0.780028	0.800978	0.815643	0.830307	0.842877	0.851257	0.868017	0.876397	0.884777	0.895252];
% j0=[0.000056	0.000056	0.000056	0.000056	0.000056	0.000000	0.000000	0.000056	0.000000	0.000000	0.000000	0.000112	0.000000	0.000056	0.000000	0.000000	0.000056	0.000000	0.000056	0.000000	0.000000	0.000224	0.000448	0.001176	0.001905	0.003305	0.004762	0.006275	0.007787	0.009468	0.011092	0.012661	0.014342	0.015854	0.017423	0.018992];
%% 

% plot(v100,j100,'ks');
% hold on
% % % %  
% plot(v32,j32,'d')
% hold on

% plot(v10,j10,'p');
% hold on

% plot(v0,j0,'o');
% hold on

% plot(V,Jd)
% hold on
% plot(V,J)
% hold on
