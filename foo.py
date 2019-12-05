import sys, os
print("#######")
directory_path = os.getcwd()
print('cwd: %s'%(directory_path))
files = []
for (dirpath, dirnames, filenames) in os.walk(directory_path):
  for file in filenames:
    fullpath = os.path.join(dirpath, file)
    if os.path.islink(fullpath):
      print('symlink: %s'%(fullpath))
      print('realpath: %s'%(os.path.realpath(fullpath)))
    else:
      print('not symlink: %s'%(fullpath))
    if file == 'package.xml':
      with open(fullpath) as f:
        print('content: %s'%(f.readlines()))
    files.append(fullpath)
print(files)
sys.exit(1)

