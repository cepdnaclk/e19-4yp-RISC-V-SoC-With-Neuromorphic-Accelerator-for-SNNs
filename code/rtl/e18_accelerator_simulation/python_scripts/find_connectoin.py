downstream_connections_initialization = []
verilog_code = ''
count=0
count_iterations=0

for i in range (0, 784):
    for j in range (784, 984):
        verilog_code += f"        12'd{j}, "
        downstream_connections_initialization.append(verilog_code)
        verilog_code = ''
        count = count+12
        count_iterations +=1

for i in range (784, 984):
    
    for j in range (984, 994):
        verilog_code += f"        12'd{j}, "
        downstream_connections_initialization.append(verilog_code)
        verilog_code = ''
        count = count+12
        count_iterations +=1

print(count, count_iterations)