import csv
with open('abalone.data', 'rb') as f:
    reader = csv.reader(f)
    data_list = list(reader)

# i th row can be read as data_list[i]
# type(data_list[i]) is a 'list'
###############################################################################

lines = []
with open('../kaggleDS/UCI/abalone.data', 'rt') as f:
    for line in f.readlines():
		try:			
			l = line.strip().split(',')
			lines.append((l))
		except ValueError:
			print('Error'.format(line))

# i th row can be read as lines[i]
# i th row and j th column can be read as lines[i][j]
###############################################################################

lines = open('../kaggleDS/UCI/abalone.data', 'rt').read().splitlines()
# i th row, which is one string can be read as lines[i]
