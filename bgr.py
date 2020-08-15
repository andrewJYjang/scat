import cv2
import numpy as np #16 Aug 2020 testing on opencv

img = np.zeros((120,120, 3), dtype=np.uint8)    # 120x120 2차원 배열 생성, 3채널 컬러 이미지
img[25:35, :] = [255,0,0]                       # 25~35행 모든 열에 [255,0,0], 파랑색 할당 
img[55:65, :] = [0, 255, 0]                     # 55~65행 모든 열에 [0,255,0], 초록색 할당 
img[85:95, :] = [0,0,255]                       # 85~95행 모든 열에 [0,0,255], 빨강색 할당 
img[:, 35:45] = [255,255,0]                     # 모든행 35~45 열에 [255,255,0], 하늘색 할당 
img[:, 75:85] = [255,0,255]                     # 모든행 75~85 열에 [255,0,255], 분홍색 할당 
cv2.imshow('BGR', img)
if cv2.waitKey(0) & 0xFF == 27:
    cv2.destroyAllWindows()

