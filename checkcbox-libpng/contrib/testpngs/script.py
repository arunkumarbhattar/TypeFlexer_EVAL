import subprocess, os, re
import time

path = "../pngminus/cmake-build-debug/png2pnm_hoard"
benchmark = open("benchmark.txt", "w")
globalExecutionTime = 0
globalFileCount = 0
#search for all the png files in the current directory
for root, dirs, files in os.walk("."):
    for file in files:
        if file.endswith(".png"):
            #run the png2pnm executable with the png file as input
            #start timer
            globalFileCount += 1
            startTime = time.perf_counter()
            subprocess.call([path, file])
            endTime = time.perf_counter()
            timeElapsed = endTime - startTime
            globalExecutionTime += timeElapsed
            #end timer
            #write the execution time to the file
            benchmark.write("File: " + str(file) +
                            ", Time Taken:  " + str(timeElapsed))
            benchmark.write("\n")
#write the global execution time to the file
benchmark.write("Total No of Files: " + str(globalFileCount))
benchmark.write("\n")
benchmark.write("Total Execution Time: " + str(globalExecutionTime))
benchmark.close()
#print the global execution time
print("Total No of Files: " + str(globalFileCount))
print("Total Execution Time: " + str(globalExecutionTime))
