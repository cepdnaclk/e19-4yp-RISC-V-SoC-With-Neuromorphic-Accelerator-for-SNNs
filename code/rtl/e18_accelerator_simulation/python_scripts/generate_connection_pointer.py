# DO NOT RUN FILE WITHOUT CONSENT

# DO NOT RUN FILE WITHOUT CONSENT 

def generate_verilog_module():
    verilog_code = ''
    topBorder=0
    lowerBorder=0
    number_of_neruons=994+1
    index_width=18
    for i in range (number_of_neruons):
        topBorder = (number_of_neruons*index_width)-1 - (i*index_width);
        lowerBorder = (number_of_neruons*index_width)-index_width - (i*index_width);
        verilog_code += f'connection_pointer[{str(i)}]=connection_pointer_initialization[{topBorder}:{lowerBorder}]'+';      '
    
    return verilog_code

num_inputs=1024
verilog_code = generate_verilog_module()

# Write the Verilog code to a file
verilog_file = "connection_pointers.txt"
with open(verilog_file, "w") as f:
    f.write(verilog_code)

print(f"Verilog module with {num_inputs} inputs generated in {verilog_file}.")