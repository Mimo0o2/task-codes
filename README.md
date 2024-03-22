# convert image to description
### flutter app ui
##### a flutter simple app that using ml model to make image to be a description text
![Alt text](file:///C:/Users/%D9%85%D8%B1%D9%8A%D9%85%20%D8%A8%D9%83%D8%B1/AppData/Local/Packages/5319275A.WhatsAppDesktop_cv1g1gvanyjgm/TempState/0BE77DD17D95207F515C6D0E47FFFDBA/WhatsApp%20Image%202024-03-22%20at%2005.02.32_3349dde8.jpg)
##### the system architecture design for our app
![Alt text](file:///C:/Users/%D9%85%D8%B1%D9%8A%D9%85%20%D8%A8%D9%83%D8%B1/AppData/Local/Packages/5319275A.WhatsAppDesktop_cv1g1gvanyjgm/TempState/FBF90EEDAEDF0543D89CAA9EDCBA273F/WhatsApp%20Image%202024-03-22%20at%2005.02.50_116505a2.jpg)
### AI model
we have seen a pre-made model and did some editing on it 
right now we are stuck in linking the model with the application,
the model was designed to get a photo and recongise the objects it has .
and here some explaination for the code:
Sure! Here's a short explanation of the provided code:

1. import cv2: Imports the OpenCV library, which is used for image processing tasks.
2. img = cv2.imread('pablo-merchan-montes-wYOPqmtDD0w-unsplash.jpg'): Reads an image named 'pablo-merchan-montes-wYOPqmtDD0w-unsplash.jpg' from the current directory and stores it in the variable img.
3. classNames = []: Initializes an empty list to store class names.
4. classFile = 'coco.names': Specifies the file containing class names as 'coco.names'.
5. with open(classFile, 'rt') as f:: Opens the file 'coco.names' in read mode and assigns it to the variable f.
6. classNames = f.read().rstrip('\n').split('\n'): Reads the contents of the file, removes any trailing newline characters, and splits the text into a list of class names, which are then stored in the classNames variable.
7. configPath = 'ssd_mobilenet_v3_large_coco_2020_01_14.pbtxt': Specifies the path to the configuration file for the pre-trained model.
8. weightsPath = 'frozen_inference_graph.pb': Specifies the path to the pre-trained model weights file.
9. net = cv2.dnn_DetectionModel(weightsPath, configPath): Loads the pre-trained model using the configuration and weights files.
10. net.setInputSize(320, 320): Sets the input size of the model to (320, 320).
11. net.setInputScale(1.0 / 127.5): Sets the input scale of the model.
12. net.setInputMean((127.5, 127.5, 125.5)): Sets the input mean of the model.
13. net.setInputSwapRB(True): Sets whether to swap the Red and Blue channels of the input image.
14. classIds, confs, bbox = net.detect(img, confThreshold=0.5): Detects objects in the input image img using the pre-trained model. It returns class IDs, confidence scores, and bounding boxes of the detected objects.
15. for classIds, confidence, box in zip(classIds.flatten(), confs.flatten(), bbox):: Iterates over each detected object, where classIds are the IDs of the detected classes, confidence are the confidence scores, and box are the bounding boxes.
16. cv2.rectangle(img, box, color=(0, 255, 0), thickness=1): Draws a rectangle around each detected object on the input image img.
17. cv2.putText(img, classNames[classIds-1], (box[0] + 10, box[1] + 30), cv2.FONT_HERSHEY_COMPLEX, 1, (0, 255, 0), 1): Writes the class name corresponding to each detected object above its bounding box.
18. cv2.imshow("output", img): Displays the output image with detected objects.
19. cv2.waitKey(0): Waits for a key press to close the output window.




