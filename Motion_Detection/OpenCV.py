import cv2 #4.2.0
import numpy as np
from PIL import ImageGrab
import pynput as pyn
sdThresh = 10
font = cv2.FONT_HERSHEY_SIMPLEX
isFirstTime = True

def HandleSkill(isKill):
    if isKill == True:
        mouse.position = (positionOfMouse[0],positionOfMouse[1])
        mouse.click(pyn.mouse.Button.right,5)
        #mouse.click(Button.left,5)
        mouse.release(pyn.mouse.Button.right)
        keyBoard.press(pyn.keyboard.Key.space)
        keyBoard.release(pyn.keyboard.Key.space)
        keyBoard.press('3')
        keyBoard.release('3')

def apply_roi(img, roi):
    # resize ROI to match the original image size
    roi = cv2.resize(src=roi, dsize=(img.shape[1], img.shape[0]))
    
    assert img.shape[:2] == roi.shape[:2]
    
    # scale ROI to [0, 1] => binary mask
    thresh, roi = cv2.threshold(roi, thresh=128, maxval=1, type=cv2.THRESH_BINARY)
    
    # apply ROI on the original image
    new_img = img * roi
    return new_img

def distMap(frame1, frame2):
    """outputs pythagorean distance between two frames"""
    frame1_32 = np.float32(frame1)
    frame2_32 = np.float32(frame2)
    diff32 = frame1_32 - frame2_32
    norm32 = np.sqrt(diff32[:,:,0]**2 + diff32[:,:,1]**2 + diff32[:,:,2]**2)/np.sqrt(255**2 + 255**2 + 255**2)
    dist = np.uint8(norm32*255)
    return dist

if __name__ == "__main__":
    imgROI =  np.zeros((600,800,3), np.uint8)
    imgROI += 255
    cv2.rectangle(imgROI,(312,186),(470,348),(0,0,0),-1 ) # ROI for chacractor
    cv2.rectangle(imgROI,(652,7),(785,62),(0,0,0),-1 )  # ROI for map
    cv2.rectangle(imgROI,(444,574),(482,612),(0,0,0),-1 )  # ROI for skill
    mouse = pyn.mouse.Controller()
    keyBoard = pyn.keyboard.Controller()
    positionOfMouse = []
    while True:
        # Load image
        #img = ImageGrab.grab(bbox=(0,0,800,600))
        img = ImageGrab.grab(bbox=(2,61,805,531))
        img_np = np.array(img)
        currentFrame = cv2.cvtColor(img_np,cv2.COLOR_BGR2RGB)
        currentFrame = apply_roi(currentFrame, imgROI)
        if isFirstTime == True:
            frameBefore = currentFrame
        # Moving detection
        diff = cv2.absdiff(frameBefore, currentFrame)
        gray = cv2.cvtColor(diff, cv2.COLOR_BGR2GRAY)
        blur = cv2.GaussianBlur(gray, (5,5), 0)
        _, thresh = cv2.threshold(blur, 20, 255, cv2.THRESH_BINARY)
        dilated = cv2.dilate(thresh, None, iterations=3)
        contours, _ = cv2.findContours(dilated, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
        # Show image
        isAssignMousePosition = False
        for contour in contours:
            (x, y, w, h) = cv2.boundingRect(contour)
            if cv2.contourArea(contour) < 900:
                continue
            if isAssignMousePosition != True:
                positionOfMouse = [x,y]
                isAssignMousePosition = True
            cv2.rectangle(frameBefore, (x, y), (x+w, y+h), (0, 255, 0), 2)
            cv2.putText(frameBefore, "Status: {}".format('Movement'), (10, 20), cv2.FONT_HERSHEY_SIMPLEX,
                        1, (0, 0, 255), 3)
        #cv2.imwrite('temp.png',frameBefore)
        #img_show = cv2.imread('temp.png',cv2.IMREAD_UNCHANGED)
        cv2.namedWindow('Live Screen', cv2.WINDOW_NORMAL)
        cv2.imshow("Live Screen",frameBefore)

        #cv2.resizeWindow("Live Screen", 800, 600);
        frameBefore = currentFrame
        if isFirstTime == True:
            isFirstTime = False
        if cv2.waitKey(1) == 27:
            break
        # Mouse click
        HandleSkill(isAssignMousePosition)

cv2.destroyAllWindows ()