def generate_verilog_module():

    module_name = "testbench_scaled"
    verilog_code = f"module {module_name};\n\n"

    verilog_code += "    //neuron addresses\n"

    # Open the file
    with open("code/e18-verilog-tb/python_scripts/zero.txt", "r") as file:
        # Read lines
        lines = file.readlines()
        # Initialize an empty list to store the data
        data = []
        # Iterate over each line
        for line in lines:
            # Split the line by spaces and convert values to float
            row = [float(value) for value in line.split()]
            # Append the row to the data list
            data.append(row)

    count = -1
    start_addr = 1023
    for row in data:
        for element in row:
            count = count + 1
            start_addr = start_addr +1
            print(count, element)
            if (element > 0.75):
                verilog_code += f"        source_addresses[{count}] = 12'd{start_addr};"
                if (count % 100 == 0):
                    verilog_code += "\n"

    return verilog_code

verilog_code = generate_verilog_module()

# Write the Verilog code to a file
verilog_file = "code/e18-verilog-tb/src/accelerator_input_initialize.v"
with open(verilog_file, "w") as f:
    f.write(verilog_code)

