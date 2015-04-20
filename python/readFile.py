import csv
with open('abalone.data', 'rb') as f:
    reader = csv.reader(f)
    data_list = list(reader)

# i th row can be read as data_list[i]
# type(data_list[i]) is a 'list'
