# DO NOT RUN FILE WITHOUT CONSENT 

def generate_verilog_module(num_inputs):
    module_name = "network_interface_scaled"
    verilog_code = f"""module {module_name} (
    """

    # Generate input ports
    for i in range(num_inputs):
        verilog_code += f"    input wire spike{i},"
        if(i % 100 == 0):
            verilog_code += "\n"
    verilog_code += "\n"

    # Remove the trailing comma from the last input
    verilog_code = verilog_code[:-1] + "\n"

    # Generate output port
    verilog_code += f"    output wire output\n);\n\n"

    # other required parameters
    verilog_code += "    parameter number_of_neurons= 1024;\n"
    verilog_code += "    reg spike_register[0:number_of_neurons-1];\n"

    # Generate always block that is triggered upon spike input. 
    verilog_code += "    always @("
    for i in range (num_inputs):
        verilog_code += f"spike{i}, "
    verilog_code = verilog_code[:-2] + ") begin\n"

    # Logic inside the always block
    for i in range (num_inputs):
        verilog_code += f"        spike_register[{i}] = spike{i};"
        if (i % 100 == 0):
            verilog_code += "\n"

    verilog_code += "\n    end\n"

    # # Generate logic for output
    # verilog_code += "assign output = "
    # for i in range(num_inputs):
    #     verilog_code += f"input_{i} & "
    # verilog_code = verilog_code[:-3] + ";\n\n"

    verilog_code += "endmodule\n"
    
    return verilog_code

num_inputs = 1024
verilog_code = generate_verilog_module(num_inputs)

# Write the Verilog code to a file
verilog_file = "code/e18-verilog-tb/src/network_interface_scaled_junk.v"
with open(verilog_file, "w") as f:
    f.write(verilog_code)

print(f"Verilog module with {num_inputs} inputs generated in {verilog_file}.")
