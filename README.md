# Multi-modal SwinBERT: Video Captioning of Social Media Short Videos for Blind People using End-to-End Transformers

![figure1](https://user-images.githubusercontent.com/54786155/207969466-f7fc2743-0e00-49e4-bfc9-2f2a64c3599d.png)


This is code for our project: 

Multi-modal SwinBERT: Video Captioning of Social Media Short Videos for Blind People using End-to-End Transformers


In this project, we have proposed a Multi-modal video captioning model based on SwinBERT. We have used Video frames and Audio together to get video captions from videos.


Download cider and coco_caption folders from this link and place these folders in the src/evalcap folder:https://drive.google.com/file/d/1s1kErodrsiSxAfKHtIzSH2Cvi25i3iRH/view?usp=sharing 

Our code is based on SwinBERT mentioned in https://github.com/microsoft/SwinBERT. Please follow the steps mentioned in this link to download pretrained Video Swin Transformers. We have also followed the data structure of SwinBERT. 

You can generate mel-spectrogram from the videos using this jupyter notebook:https://github.com/mohammadshahabuddin/Generating-mel-spectrogram-from-the-videos

You should place your dataset in the datasets folder.

For Our project, we have received help related to codes from these projects:
1. https://github.com/microsoft/SwinBERT
2. https://github.com/tylin/coco-caption
3.https://github.com/salaniz/pycocoevalcap




