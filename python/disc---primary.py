# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"N12..00","system":"readv2"},{"code":"8823.0","system":"readv2"},{"code":"29453.0","system":"readv2"},{"code":"6037.0","system":"readv2"},{"code":"55065.0","system":"readv2"},{"code":"22866.0","system":"readv2"},{"code":"51691.0","system":"readv2"},{"code":"623.0","system":"readv2"},{"code":"21025.0","system":"readv2"},{"code":"12750.0","system":"readv2"},{"code":"4326.0","system":"readv2"},{"code":"72597.0","system":"readv2"},{"code":"64377.0","system":"readv2"},{"code":"1575.0","system":"readv2"},{"code":"101552.0","system":"readv2"},{"code":"27704.0","system":"readv2"},{"code":"14682.0","system":"readv2"},{"code":"825.0","system":"readv2"},{"code":"67407.0","system":"readv2"},{"code":"6150.0","system":"readv2"},{"code":"56595.0","system":"readv2"},{"code":"69781.0","system":"readv2"},{"code":"69838.0","system":"readv2"},{"code":"98570.0","system":"readv2"},{"code":"65660.0","system":"readv2"},{"code":"25135.0","system":"readv2"},{"code":"41092.0","system":"readv2"},{"code":"27642.0","system":"readv2"},{"code":"20013.0","system":"readv2"},{"code":"95690.0","system":"readv2"},{"code":"28878.0","system":"readv2"},{"code":"643.0","system":"readv2"},{"code":"22791.0","system":"readv2"},{"code":"109443.0","system":"readv2"},{"code":"71278.0","system":"readv2"},{"code":"99739.0","system":"readv2"},{"code":"23390.0","system":"readv2"},{"code":"106869.0","system":"readv2"},{"code":"73911.0","system":"readv2"},{"code":"24138.0","system":"readv2"},{"code":"642.0","system":"readv2"},{"code":"63609.0","system":"readv2"},{"code":"23907.0","system":"readv2"},{"code":"56382.0","system":"readv2"},{"code":"53831.0","system":"readv2"},{"code":"25742.0","system":"readv2"},{"code":"20726.0","system":"readv2"},{"code":"67223.0","system":"readv2"},{"code":"1500.0","system":"readv2"},{"code":"96440.0","system":"readv2"},{"code":"9372.0","system":"readv2"},{"code":"7066.0","system":"readv2"},{"code":"40333.0","system":"readv2"},{"code":"16082.0","system":"readv2"},{"code":"70843.0","system":"readv2"},{"code":"59346.0","system":"readv2"},{"code":"11212.0","system":"readv2"},{"code":"22690.0","system":"readv2"},{"code":"51550.0","system":"readv2"},{"code":"3680.0","system":"readv2"},{"code":"24698.0","system":"readv2"},{"code":"50224.0","system":"readv2"},{"code":"63623.0","system":"readv2"},{"code":"60629.0","system":"readv2"},{"code":"37193.0","system":"readv2"},{"code":"37512.0","system":"readv2"},{"code":"33604.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('intervertebral-disc-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["disc---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["disc---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["disc---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
