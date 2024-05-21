# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"N122.11","system":"readv2"},{"code":"Zw04000","system":"readv2"},{"code":"N129.11","system":"readv2"},{"code":"N12B200","system":"readv2"},{"code":"N12C400","system":"readv2"},{"code":"Zw04200","system":"readv2"},{"code":"N123.11","system":"readv2"},{"code":"N12B.00","system":"readv2"},{"code":"N120.11","system":"readv2"},{"code":"N123.12","system":"readv2"},{"code":"N12B000","system":"readv2"},{"code":"N12B100","system":"readv2"},{"code":"N121.11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('intervertebral-disc-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["intervertebral-disc-disorders-prolapsed---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["intervertebral-disc-disorders-prolapsed---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["intervertebral-disc-disorders-prolapsed---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)