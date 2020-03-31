#!/usr/bin/python3
import tkinter as Functk
import time as FuncTime

global mIsTurnCount
global mTotalSecondTime
global mTotalMinutesTime
global mTotalHourTime
mTotalSecondTime = 0
mTotalMinutesTime = 0
mTotalHourTime = 0
def display_time():
    global mTotalSecondTime
    global mTotalMinutesTime
    global mTotalHourTime
    if mTotalSecondTime == 60:
        mTotalMinutesTime += 1
        mTotalSecondTime = 0

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

if __name__ == '__main__':

    top = Functk.Tk("Managerment Job")
    top.geometry("370x120")
    top.title("Time Task Counting")
    #Functk.Label(top, text="Main Name").grid(row=0)
    ClockLable = Functk.Label(top,font='ariel 80',bg="black",fg="red")
    ClockLable.grid(row=0,column=0)
    display_time()
    top.mainloop()