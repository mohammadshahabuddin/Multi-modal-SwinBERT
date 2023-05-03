# Multi-modal-SwinBERT

![figure1](https://user-images.githubusercontent.com/54786155/207969466-f7fc2743-0e00-49e4-bfc9-2f2a64c3599d.png)


This is code for our project: 

Multi-modal SwinBERT: Video Captioning of Social Media Short Videos for Blind People using End-to-End Transformers


In this project, we have proposed a Multi-modal video captioning model based on SwinBERT. We have used Video frames and Audio together to get video captions from videos.


Download cider and coco_caption folders from this link and place theses folders in the src/evalcap folder:https://drive.google.com/file/d/1s1kErodrsiSxAfKHtIzSH2Cvi25i3iRH/view?usp=sharing 

Our code is based on SwinBERT mentioned in https://github.com/microsoft/SwinBERT. Please follow the steps mentioned in this link to download pretrained Video Swin Transformers. We have also followed the data structure of SwinBERT. 

You can generate mel-spectrogram from the videos using this colab notebook:https://colab.research.google.com/drive/1ngaHaEjiufVIdSQfXraMLmjXeC_KnRVH?usp=sharing

You can download the dataset used in the experiments from here and place in datasets folder:
Link1 (Total 35 videos):
https://drive.google.com/file/d/1ew8WeZ18RBFMnrMI2IG1EtvcLWCi14wz/view?usp=sharing
Link2 ( Total 115 videos):
https://drive.google.com/file/d/18W-7EklFXOzeVchz_WnkSoJX1I7J44Db/view?usp=sharing

For Our project, we have received help related to codes from these projects:
1. https://github.com/microsoft/SwinBERT
2. https://github.com/tylin/coco-caption
3.https://github.com/salaniz/pycocoevalcap




