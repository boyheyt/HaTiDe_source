#!/usr/bin/python3
import tkinter as Functk
import datetime as FuncTime

global mIsTurnCount
global mTotalSecondTime
global mTotalMinutesTime
global mTotalHourTime
global mListDateExits
mTotalSecondTime = 0
mTotalMinutesTime = 0
mTotalHourTime = 0

#display_time
def display_time():
    global mTotalSecondTime
    global mTotalMinutesTime
    global mTotalHourTime
    global mListDateExits
    if mTotalSecondTime == 60:
        mTotalMinutesTime += 1
        mTotalSecondTime = 0
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

if __name__ == '__main__':
    mListDateExits = []
    top = Functk.Tk("Managerment Job")
    top.geometry("370x120")
    top.title("Time Task Counting")
    #Functk.Label(top, text="Main Name").grid(row=0)
    ClockLable = Functk.Label(top,font='ariel 80',bg="black",fg="red")
    ClockLable.grid(row=0,column=0)
    #check time have saved or not
    mListDateExits = checkSameDayCounterFunc()
    display_time()
    top.mainloop()
    #save time
    saveCounterFunc(listDayExit[0],listDayExit[1])