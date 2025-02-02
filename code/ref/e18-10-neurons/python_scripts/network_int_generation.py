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
    a = 0
    for j in range (21):
        b = a + 50
        print(a, b)
        verilog_code += f"    always @(clear, lock{j+1}, "
        for i in range (a, b):
            if(i > 1023):
                break
            verilog_code += f"spike{i}, "
        verilog_code = verilog_code[:-2] + ") begin\n"

        # Logic inside the always block
        for i in range (a, b):
            if(i > 1023):
                break
            verilog_code += f"        spike_register[{i}] = spike{i};"
            if (i % 100 == 0):
                verilog_code += "\n\n"

        
        verilog_code += "\n        #0.5\n"
        verilog_code += "        if(clear == 1'b0) begin\n"
        verilog_code += f"            for(i{j+1} = {a}; i{j+1} <={b-1}; i{j+1}= i{j+1}+1) begin\n"
        verilog_code += f"                if(spike_register[i{j+1}] == 1 && lock{j+1} == 0) begin\n"
        verilog_code += f"                    lock{j+1} = 1;\n"
        verilog_code += f"                    for(j{j+1} = connection_pointer[i{j+1}]; j{j+1} < connection_pointer[i{j+1}+1]; j{j+1}= j{j+1}+1) begin\n"
        verilog_code += f"                        packet{j+1} = #0.1 {{neuron_addresses[i{j+1}], downstream_connections[j{j+1}]}};\n"
        verilog_code += "                    end\n"
        verilog_code += f"                    spike_register[i{j+1}] = 0;\n"
        verilog_code += f"                    lock{j+1} = 0;\n"
        verilog_code += "                end\n"
        verilog_code += "            end\n"
        verilog_code += "        end\n"

         

        verilog_code += "\n    end\n"
        a = a +50

    for j in range (21):
        verilog_code += f"    always @(packet{j+1}) begin \n"
        verilog_code += f"        spike_origin = packet{j+1}[23:12];\n"
        verilog_code += f"        spike_destination = packet{j+1}[11:0];\n"
        verilog_code += f"        source_addresses[spike_destination] = spike_origin;"


        verilog_code += "\n    end\n"
        

    # Variables i 
    verilog_code += "    reg[18:0] "
    for i in range (1, 22):

        verilog_code += f"i{i}, "
    verilog_code += verilog_code[:-2] +";\n"

    # Variable j
    verilog_code += "    reg[18:0] "
    for i in range (1, 22):

        verilog_code += f"j{i}, "
    verilog_code += verilog_code[:-2] +";\n"
    

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
verilog_file = "code/e18-verilog-tb/src/temp.v"
with open(verilog_file, "w") as f:
    f.write(verilog_code)

print(f"Verilog module with {num_inputs} inputs generated in {verilog_file}.")
