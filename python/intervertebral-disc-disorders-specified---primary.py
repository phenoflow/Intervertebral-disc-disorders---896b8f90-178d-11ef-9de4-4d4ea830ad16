# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"Nyu7700","system":"readv2"},{"code":"Nyu7B00","system":"readv2"},{"code":"7J32y00","system":"readv2"},{"code":"N12z000","system":"readv2"},{"code":"N12z.00","system":"readv2"},{"code":"V29.9","system":"readv2"},{"code":"V35.9","system":"readv2"},{"code":"V29.8","system":"readv2"},{"code":"V35","system":"readv2"},{"code":"V35.8","system":"readv2"},{"code":"V51.8","system":"readv2"},{"code":"V31.8","system":"readv2"},{"code":"V51.9","system":"readv2"},{"code":"V33.9","system":"readv2"},{"code":"V33.8","system":"readv2"},{"code":"V31.9","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('intervertebral-disc-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["intervertebral-disc-disorders-specified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["intervertebral-disc-disorders-specified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["intervertebral-disc-disorders-specified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
