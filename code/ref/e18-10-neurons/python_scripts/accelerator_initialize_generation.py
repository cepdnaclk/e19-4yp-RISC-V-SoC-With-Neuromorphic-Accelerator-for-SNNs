# DO NOT RUN FILE WITHOUT CONSENT

# DO NOT RUN FILE WITHOUT CONSENT 

def binaryOfFraction(fraction):

    # Declaring an empty string
    # to store binary bits.
    binary = str()

    # Iterating through 
    # fraction until it 
    # becomes Zero.
    while (fraction):
        
        # Multiplying fraction by 2.
        fraction *= 2

        # Storing Integer Part of
        # Fraction in int_part.
        if (fraction >= 1):
            int_part = 1
            fraction -= 1
        else:
            int_part = 0

        # Adding int_part to binary
        # after every iteration.
        binary += str(int_part)

    # Returning the binary string.
    return binary

    # Function to get sign bit,
    # exp bits and mantissa bits,
    # from given real no.
def floatingPoint(real_no):

    # Setting Sign bit
    # default to zero.
    sign_bit = 0

    # Sign bit will set to
    # 1 for negative no.
    if(real_no < 0):
        sign_bit = 1

    # converting given no. to
    # absolute value as we have
    # already set the sign bit.
    real_no = abs(real_no)

    # Converting Integer Part 
    # of Real no to Binary
    int_str = bin(int(real_no))[2 : ]

    # Function call to convert
    # Fraction part of real no
    # to Binary.
    fraction_str = binaryOfFraction(real_no - int(real_no))

    # Getting the index where
    # Bit was high for the first
    # Time in binary repres
    # of Integer part of real no.
    
    if(real_no >= 1):
    
        ind = int_str.index('1')

        # The Exponent is the no.
        # By which we have right 
        # Shifted the decimal and 
        # it is given below.
        # Also converting it to bias 
        # exp by adding 127.
        exp_str = bin((len(int_str) - ind - 1) + 127)[2 : ]

        # getting mantissa string
        # By adding int_str and fraction_str.
        # the zeroes in MSB of int_str
        # have no significance so they
        # are ignored by slicing.
        mant_str = int_str[ind + 1 : ] + fraction_str

        # Adding Zeroes in LSB of 
        # mantissa string so as to make
        # it's length of 23 bits.
        if(len(mant_str) < 23):
            mant_str = mant_str + ('0' * (23 - len(mant_str)))
        else:
            mant_str = mant_str[0:23]

    else:

        ind = fraction_str.index('1')

        exp_str = bin(127 - ind - 1)[2 : ]
        # Adding Zeroes in MSB of 
        # exponent string so as to make
        # it's length of 8 bits.
        exp_str = ('0' * (8 - len(exp_str))) + exp_str


        mant_str = fraction_str[ind + 1:]

        if(len(mant_str) > 23):
            mant_str = mant_str[0:23]
        else:
            mant_str = mant_str + ('0' * (23 - len(mant_str)))




    ret = str(sign_bit) + exp_str + mant_str
    # Returning the sign, Exp
    # and Mantissa Bit strings.
    return ret


def generate_verilog_module(num_inputs):

    module_name = "testbench_scaled"
    verilog_code = f"module {module_name};\n\n"

    # # Generate input ports
    # for i in range(num_inputs):
    #     verilog_code += f"    input wire spike{i},"
    #     if(i % 100 == 0):
    #         verilog_code += "\n"
    # verilog_code += "\n"

    # # Remove the trailing comma from the last input
    # verilog_code = verilog_code[:-2] + "\n"

    # # Generate output port
    # verilog_code += f"    output wire output\n);\n\n"

    # # other required parameters
    # verilog_code += "    parameter number_of_neurons= 1024;\n"
    # verilog_code += "    reg spike_register[0:number_of_neurons-1];\n"

    # # Generate always block that is triggered upon spike input. 
    # verilog_code += "    network_interface_scaled ni1(\n"
    # for i in range (num_inputs):
    #     verilog_code += f"        .spike{i}(spike[{i}]),"
    #     if (i % 100 == 0):
    #         verilog_code += "\n"

    # verilog_code = verilog_code[:-1] + "\n"

    # verilog_code += "    );\n\n\n"

    

    # verilog_code += "    initial begin\n\n"

    num_neurons_in_SNN = 994

    ##################################
    verilog_code += "    //neuron addresses\n"
    for i in range (num_neurons_in_SNN):
        verilog_code += f"        neuron_addresses[{i}] = 12'd{i};"
        if (i % 100 == 0):
            verilog_code += "\n"
    
    verilog_code += "\n\n\n"   
    ##################################

    ##################################
    verilog_code += "    //for network interface\n"
    verilog_code += "        neuron_addresses_initialization = {"
    for i in range (num_neurons_in_SNN):
        verilog_code += f"        neuron_addresses[{i}], "
        if (i % 100 == 0):
            verilog_code += "\n"
    
    verilog_code = verilog_code[:-2] + "};" + "\n\n\n"   
    ##################################

    ##################################
    verilog_code += "    //CSR\n"
    verilog_code += "        connection_pointer_initialization = {"
    val = 200* 783
    for i in range (num_neurons_in_SNN+1):
        
        if (i <= 783):
            verilog_code += f"        18'd{200*i}, "
            if (i % 100 == 0):
                verilog_code += "\n"
        else:
            val = val +10
            verilog_code += f"        18'd{val}, "
            if (i % 100 == 0):
                verilog_code += "\n"
    
    verilog_code = verilog_code[:-2] + "};" + "\n\n\n"   
    ##################################

    ##################################
    verilog_code += "    //Initialize downstream connections\n"
    verilog_code += "        connection_pointer_initialization = {"
    
    for i in range (0, 784):
        for j in range (784, 984):
            verilog_code += f"        12'd{j}, "
    
    for i in range (784, 984):
        for j in range (984, 994):
            verilog_code += f"        12'd{j}, "


    
    verilog_code = verilog_code[:-2] + "};" + "\n\n\n"   
    ##################################

    ##################################
    verilog_code += "    //initial membrane potential values\n"
    for i in range (num_neurons_in_SNN):
        verilog_code += f"        membrane_potential[{i}] = 32'h3a83126f;"
        if (i % 100 == 0):
            verilog_code += "\n"
    
    verilog_code += "\n\n\n"   
    ##################################

    ##################################
    verilog_code += "    //threshold values\n"
    for i in range (num_neurons_in_SNN):
        verilog_code += f"        v_threshold[{i}] = 32'h3dcccccd;"
        if (i % 100 == 0):
            verilog_code += "\n"
    
    verilog_code += "\n\n\n"   
    ##################################

    ##################################
    verilog_code += "    //send source address array first\n"
   
    for i in range (0, 784):
        verilog_code += f"        source_addresses_arrays[{i}] = {{12'd{i+1024}}};"
        if (i % 100 == 0):
            verilog_code += "\n"

    for i in range (784, 984):
        verilog_code += f"        source_addresses_arrays[{i}] = " +"{"
        for j in range (0, 784):
            verilog_code += f"        12'd{j}, "
        verilog_code = verilog_code[:-2] + "};" + "\n"
        if (i % 100 == 0):
            verilog_code += "\n"

    for i in range (984, 994):
        verilog_code += f"        source_addresses_arrays[{i}] = " +"{"
        for j in range (784, 984):
            verilog_code += f"        12'd{j}, "
        verilog_code = verilog_code[:-2] + "};" + "\n"
        if (i % 100 == 0):
            verilog_code += "\n"


    verilog_code += "\n\n\n"   
    ##################################

    ##################################
    verilog_code += "    //Assign the weights\n"

    for i in range (0, 784):

        verilog_code += f"        weights_arrays[{i}] = {{32'b00111111100000000000000000000000}};"


    with open('code/e18-verilog-tb/python_scripts/weights1.txt', 'r') as file: 
        # Read lines from the file and store them in an array 
        array_of_lines_1 = file.readlines()

    float_array_1 = list(map(float, array_of_lines_1[0].split(',')))

    with open('code/e18-verilog-tb/python_scripts/weights2.txt', 'r') as file: 
        # Read lines from the file and store them in an array 
        array_of_lines_2 = file.readlines()

    float_array_2 = list(map(float, array_of_lines_2[0].split(',')))

    count = -1
    for i in range (784, 984):
        verilog_code += f"        weights_arrays[{i}] = " +"{"
        count = count + 1
        start = count * 784
        end = start + 784
        for j in range (start, end):
            verilog_code += f"        32'b{floatingPoint(float_array_1[j])}, "
        verilog_code = verilog_code[:-2] + "};" + "\n"
        if (i % 100 == 0):
            verilog_code += "\n"

    count = -1
    for i in range (984, 994):
        verilog_code += f"        weights_arrays[{i}] = " +"{"
        count = count + 1
        start = count * 200
        end = start + 200
        for j in range (start, end):
            verilog_code += f"        32'b{floatingPoint(float_array_2[j])}, "
        verilog_code = verilog_code[:-2] + "};" + "\n"
        if (i % 100 == 0):
            verilog_code += "\n"


    verilog_code += "\n\n\n"   
    ##################################

    ##################################
    verilog_code += "    //Inputs\n"


    ##################################


    
    # ###############
    


    # for i in range (num_inputs):
    #     verilog_code += f"spike{i}, "
    # verilog_code = verilog_code[:-2] + ") begin\n"

    # # Logic inside the always block
    # for i in range (num_inputs):
    #     verilog_code += f"        spike_register[{i}] = spike{i};"
    #     if (i % 100 == 0):
    #         verilog_code += "\n"

    # verilog_code += "\n    end\n"

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
verilog_file = "code/e18-verilog-tb/src/accelerator_initialize_scaled_junk_junk.v"
with open(verilog_file, "w") as f:
    f.write(verilog_code)

print(f"Verilog module with {num_inputs} inputs generated in {verilog_file}.")


with open('code/e18-verilog-tb/python_scripts/zero.txt', 'r') as file: 
    # Read lines from the file and store them in an array 
    array_of_lines_1 = file.readlines()


