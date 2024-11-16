# Multi-modal SwinBERT: Video Captioning of Social Media Short Videos for Blind People using End-to-End Transformers
### Empowering Accessibility for Blind and Visually Impaired Individuals

![figure1](https://user-images.githubusercontent.com/54786155/207969466-f7fc2743-0e00-49e4-bfc9-2f2a64c3599d.png)

This project proposes a Multi-modal Video Captioning Model based on SwinBERT, leveraging both video frames and audio features to generate captions for short social media videos. By combining visual and auditory modalities, this end-to-end transformer-based solution aims to enhance video accessibility for blind and visually impaired users.

# Features

1. Multi-modal Input:
Visual: Frames extracted from video files using Video Swin Transformers.

Audio: Mel-spectrograms generated from video audio.

2. Captioning Model: Based on SwinBERT architecture, optimized for multi-modal video captioning tasks.

3. Dataset Customization: Easily adaptable to your dataset with proper folder structuring.

# Setup
1. Clone and Set Up the Repository

git clone https://github.com/mohammadshahabuddin/Multi-modal-SwinBERT.git

cd Multi-modal-SwinBERT

2. Download Required Components
COCO Captioning Tools: Download and place the cider and coco_caption folders in the src/evalcap directory.
[Download Link](https://drive.google.com/file/d/1s1kErodrsiSxAfKHtIzSH2Cvi25i3iRH/view?usp=sharing)

3. Pretrained Video Swin Transformers: Our code is based on SwinBERT mentioned in https://github.com/microsoft/SwinBERT. Please follow the steps mentioned in this link to download pretrained Video Swin Transformers. We have also followed the data structure of SwinBERT. 

4. Generate Mel-Spectrograms
To extract audio features, use this [Jupyter Notebook](https://github.com/mohammadshahabuddin/Generating-mel-spectrogram-from-the-videos) to generate mel-spectrograms from your video files.

5. Prepare the Dataset
Place your dataset in the datasets folder.
Use the msu.txt file to list the video names. Ensure the corresponding mel-spectrogram files share the same names as the videos.


# This project builds on and integrates components from the following repositories:

[SwinBERT by Microsoft](https://github.com/microsoft/SwinBERT)

[COCO Captioning Tools](https://github.com/tylin/coco-caption)

[PycocoEvalCap](https://github.com/salaniz/pycocoevalcap)



