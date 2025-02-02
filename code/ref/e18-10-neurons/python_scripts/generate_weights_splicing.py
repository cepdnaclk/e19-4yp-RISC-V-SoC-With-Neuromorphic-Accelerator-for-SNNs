# DO NOT RUN FILE WITHOUT CONSENT

# DO NOT RUN FILE WITHOUT CONSENT 

def generate_verilog_module():
    verilog_code = ''
    topBorder=0
    lowerBorder=0
    for i in range (784):
        topBorder = 25087 - (i*32);
        lowerBorder = 25056 - (i*32);
        verilog_code += f'weights[{str(i)}]=weights_array[{topBorder}:{lowerBorder}]'+';      '
    
    return verilog_code

num_inputs=1024
verilog_code = generate_verilog_module()

# Write the Verilog code to a file
verilog_file = "weights_slicing.txt"
with open(verilog_file, "w") as f:
    f.write(verilog_code)

print(f"Verilog module with {num_inputs} inputs generated in {verilog_file}.")