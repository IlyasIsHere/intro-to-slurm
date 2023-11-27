import matplotlib.pyplot as plt

numCpus = []
durations = []


with open("results.txt", "r") as myFile:
  lines = myFile.readlines()

  for line in lines:
    num, time = line.split(" ")
    numCpus.append(int(num))
    durations.append(float(time))


plt.plot(numCpus, durations)  
    
# naming the x axis  
plt.xlabel('Number of cores')  
# naming the y axis  
plt.ylabel('CPU time')  
    
plt.show()