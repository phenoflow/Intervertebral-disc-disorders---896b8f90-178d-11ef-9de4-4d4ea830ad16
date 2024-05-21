# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"28002.0","system":"readv2"},{"code":"56329.0","system":"readv2"},{"code":"70878.0","system":"readv2"},{"code":"11282.0","system":"readv2"},{"code":"56812.0","system":"readv2"},{"code":"71283.0","system":"readv2"},{"code":"6809.0","system":"readv2"},{"code":"60480.0","system":"readv2"},{"code":"24607.0","system":"readv2"},{"code":"50931.0","system":"readv2"},{"code":"38447.0","system":"readv2"},{"code":"63883.0","system":"readv2"},{"code":"106746.0","system":"readv2"},{"code":"40487.0","system":"readv2"},{"code":"63160.0","system":"readv2"},{"code":"38993.0","system":"readv2"},{"code":"38863.0","system":"readv2"},{"code":"38934.0","system":"readv2"},{"code":"3219.0","system":"readv2"},{"code":"68885.0","system":"readv2"},{"code":"4355.0","system":"readv2"},{"code":"31025.0","system":"readv2"},{"code":"105948.0","system":"readv2"},{"code":"56435.0","system":"readv2"},{"code":"51740.0","system":"readv2"},{"code":"101266.0","system":"readv2"},{"code":"49941.0","system":"readv2"},{"code":"91613.0","system":"readv2"},{"code":"27692.0","system":"readv2"},{"code":"24314.0","system":"readv2"},{"code":"73016.0","system":"readv2"},{"code":"67582.0","system":"readv2"},{"code":"22434.0","system":"readv2"},{"code":"102312.0","system":"readv2"},{"code":"26431.0","system":"readv2"},{"code":"35008.0","system":"readv2"},{"code":"10018.0","system":"readv2"},{"code":"70499.0","system":"readv2"},{"code":"96945.0","system":"readv2"},{"code":"65629.0","system":"readv2"},{"code":"108670.0","system":"readv2"},{"code":"32549.0","system":"readv2"},{"code":"104368.0","system":"readv2"},{"code":"93771.0","system":"readv2"},{"code":"20752.0","system":"readv2"},{"code":"68316.0","system":"readv2"},{"code":"38645.0","system":"readv2"},{"code":"71960.0","system":"readv2"},{"code":"10198.0","system":"readv2"},{"code":"68323.0","system":"readv2"},{"code":"15921.0","system":"readv2"},{"code":"46143.0","system":"readv2"},{"code":"9510.0","system":"readv2"},{"code":"56943.0","system":"readv2"},{"code":"67042.0","system":"readv2"},{"code":"67116.0","system":"readv2"},{"code":"33490.0","system":"readv2"},{"code":"104215.0","system":"readv2"},{"code":"21434.0","system":"readv2"},{"code":"8652.0","system":"readv2"},{"code":"64411.0","system":"readv2"},{"code":"47128.0","system":"readv2"},{"code":"56989.0","system":"readv2"},{"code":"67255.0","system":"readv2"},{"code":"36708.0","system":"readv2"},{"code":"6261.0","system":"readv2"},{"code":"60295.0","system":"readv2"},{"code":"48044.0","system":"readv2"},{"code":"70697.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('intervertebral-disc-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["intervertebral-disc-disorders-procedure---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["intervertebral-disc-disorders-procedure---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["intervertebral-disc-disorders-procedure---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
