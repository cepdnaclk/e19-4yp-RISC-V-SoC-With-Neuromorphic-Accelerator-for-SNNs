# DO NOT RUN FILE WITHOUT CONSENT

# DO NOT RUN FILE WITHOUT CONSENT 

def generate_verilog_module():
    verilog_code = ''
    topBorder=0
    lowerBorder=0
    number_of_neurons= 994;
    for i in range (number_of_neurons):
        topBorder = (number_of_neurons*12)-1 - (i*12);
        lowerBorder = (number_of_neurons*12)-12 - (i*12);
        verilog_code += f'neuron_addresses[{str(i)}]=neuron_addresses_initialization[{topBorder}:{lowerBorder}]'+';      '
    
    return verilog_code

num_inputs=1024
verilog_code = generate_verilog_module()

# Write the Verilog code to a file
verilog_file = "neruon_address_slicing.txt"
with open(verilog_file, "w") as f:
    f.write(verilog_code)

print(f"Verilog module with {num_inputs} inputs generated in {verilog_file}.")