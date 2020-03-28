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

    currentTime = mTotalSecondTime
    mTotalSecondTime += 1
    message = str(mTotalHourTime) +":"+ str(mTotalMinutesTime) +":"+ str(currentTime)
    ClockLable['text'] = message
    top.after(1000,display_time)

if __name__ == '__main__':

    top = Functk.Tk("Managerment Job")
    top.geometry("300x390")
    top.title("Time Task Countting")
    #Functk.Label(top, text="Main Name").grid(row=0)
    ClockLable = Functk.Label(top,font='ariel 80',bg="black",fg="red")
    ClockLable.grid(row=0,column=0)
    display_time()
    #e1 = Functk.Entry(top)
    #e1.grid(row=0, column=1)
    #Functk.Button(top, 
    #      text='Show', command=Set_Button).grid(row=3, 
    #                                                   column=1, 
    #                                                   sticky=Functk.W, 
    #                                                   pady=4)
    top.mainloop()