#!/usr/bin/python3
import tkinter as Functk
import datetime as FuncTime
import matplotlib.pyplot as plt

global mIsTurnCount
global mTotalSecondTime
global mTotalMinutesTime
global mTotalHourTime
global mListDateExits
global isGuardFirstTimeWrite
mTotalSecondTime = 0
mTotalMinutesTime = 0
mTotalHourTime = 0
isGuardFirstTimeWrite = False
#display_time
def display_time():
    global mTotalSecondTime
    global mTotalMinutesTime
    global mTotalHourTime
    global mListDateExits
    global isGuardFirstTimeWrite
    if mTotalSecondTime == 60:
        mTotalMinutesTime += 1
        mTotalSecondTime = 0
        if mListDateExits[0] == False:
            if isGuardFirstTimeWrite == False:
                saveCounterFunc(False,mListDateExits[1])
                isGuardFirstTimeWrite = True
            else :
                saveCounterFunc(True,mListDateExits[1])
        else: # True
            saveCounterFunc(mListDateExits[0],mListDateExits[1])
    if mTotalMinutesTime == 60:
        mTotalHourTime += 1
        mTotalMinutesTime = 0

    currentTime = mTotalSecondTime
    mTotalSecondTime += 1
    if currentTime < 10:
        if mTotalMinutesTime < 10:
            message = str(mTotalHourTime) +":0"+ str(mTotalMinutesTime) +":0"+ str(currentTime)
        else:
            message = str(mTotalHourTime) +":"+ str(mTotalMinutesTime) +":0"+ str(currentTime)
    else:
        if mTotalMinutesTime < 10:
            message = str(mTotalHourTime) +":0"+ str(mTotalMinutesTime) +":"+ str(currentTime)
        else:
            message = str(mTotalHourTime) +":"+ str(mTotalMinutesTime) +":"+ str(currentTime)
    ClockLable['text'] = message
    top.after(1000,display_time)

#Handle exit
#prameter isExit: False file have not current days
#                 True the file have current days
#        lineExit: Line date exits in system file.
#
def saveCounterFunc(isExit,lineExit):
    #print("Exit program")
    global mTotalSecondTime
    global mTotalMinutesTime
    global mTotalHourTime
    totalTimeHour = mTotalHourTime + float(mTotalMinutesTime/60)
    dateTimeNow =  FuncTime.datetime.today()
    message = str(dateTimeNow.year)+"-"+str(dateTimeNow.month)+"-"+str(dateTimeNow.day) + ":" \
    + str(mTotalHourTime)+"-"+str(mTotalMinutesTime)+"-"+str(mTotalSecondTime)+"\n"
    if isExit != True:
        infile  = open("system.txt","a+")
        infile.writable
        infile.write(str(message))
        infile.closed
    else:
        infile  = open("system.txt","r")
        listDataOfFile = infile.readlines()
        infile.closed
        listDataOfFile[lineExit] = message
        outFile  = open("system.txt","w+")
        outFile.writelines(listDataOfFile)
        outFile.closed
        
#Func check same day
def checkSameDayCounterFunc():
    #print("Exit program")
    global mTotalSecondTime
    global mTotalMinutesTime
    global mTotalHourTime
    #get current day
    dateTimeNow =  FuncTime.datetime.today()
    currentday = str(dateTimeNow.year)+"-"+str(dateTimeNow.month)+"-"+str(dateTimeNow.day)
    #get file system
    infile  = open("system.txt","r")
    contentTimeFile = infile.readlines()
    infile.closed
    countLine = 0
    for index in contentTimeFile:
        #extract the date
        wordlist = index.split(":")
        #judment
        if wordlist[0] == currentday: # correct day
            timeList = wordlist[1].split("-")
            mTotalSecondTime = int(timeList[2])
            mTotalMinutesTime = int(timeList[1])
            mTotalHourTime = int(timeList[0])
            return [True,countLine]
        else :
            countLine += 1
    return [False,0]

# Func convert to hour time
def ConvertToHourFunc(time):
    listHMS = time.split("-")
    fTotalTime = int(listHMS[0]) + float(listHMS[1])/60 + float(listHMS[0])/3600
    return fTotalTime

def PlotData():
    # Get file system
    infile  = open("system.txt","r")
    contentTimeFile = infile.readlines()
    infile.closed
    listDate = []
    listMeasureHour = []
    for index in contentTimeFile:
        #extract the date
        wordlist = index.split(":")
        listDate.append(wordlist[0])
        listMeasureHour.append(ConvertToHourFunc(wordlist[1]))
    #print(listDate)
    #print(listMeasureHour)
    # Create figure and plot space
    fig, ax = plt.subplots(figsize=(15, 15))
    # Add x-axis and y-axis
    ax.bar(listDate,
        listMeasureHour,
        color='purple')
    # Set title and labels for axes
    ax.set(xlabel="Date (YYYY,MM,dd)",
       ylabel="Time (Hour)",
       title="Measure time working\n")
    # Rotate tick marks on x-axis
    plt.setp(ax.get_xticklabels(), rotation=45)
    plt.show()

#Main func
if __name__ == '__main__':
    mListDateExits = []
    top = Functk.Tk("Managerment Job")
    top.geometry("370x120")
    top.title("Time Task Counting")
    #Functk.Label(top, text="Main Name").grid(row=0)
    ClockLable = Functk.Label(top,font='ariel 80',bg="black",fg="red")
    ClockLable.grid(row=0,column=0)
    # Create Button
    # Check time have saved or not
    mListDateExits = checkSameDayCounterFunc()
    display_time()
    top.mainloop()
    #save time
    if isGuardFirstTimeWrite == True:
        saveCounterFunc(True,mListDateExits[1])
    else:
        saveCounterFunc(mListDateExits[0],mListDateExits[1])
    PlotData()