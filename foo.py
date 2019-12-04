import sys, os
print("#######")
directory_path = os.getcwd()
files = []
for (dirpath, dirnames, filenames) in os.walk(directory_path):
  for file in filenames:
    files.append(file)
print(files)
sys.exit(1)

