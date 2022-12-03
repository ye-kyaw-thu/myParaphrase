# myParaphrase
Paraphrase Dataset for Burmese (Myanmar Language)

Paraphrase detection or semantic similarity of necessity is to understand the sentence as a whole sentence, but not just finding synonyms of the words. It is an important research area in natural language processing that plays a significant role in many applications such as question answering, summarization, information retrieval, and extraction. To the best of our knowledge, no studies have been conducted on Burmese (Myanmar language) paraphrase or not paraphrase detection and classification. We did paraphrase classification experiments beased on both traditional machine learning methods and deep Siamese neural networks. Our more contribution is the development of the human-annotated combination of Burmese paraphrase and non-paraphrase corpus that contained 40,461 sentence pairs and open-test data with 1,000 sentence pairs.


**Still Preparing and We will release myParaphrase version 1.0 soon**

## Versions Information

Version 1.0 Release Date: 3 December 2022  

## Contributors

Myint Myint Htay  
Ye Kyaw Thu  

## Experimental Results 

<p align="center">
<img src="https://github.com/ye-kyaw-thu/myParaphrase/blob/main/fig/accuracy-loss-of-3-siamese-model.png" alt="Accuracy and loss graphs for 3 Siamese models" width="800"/>  
</p>  
<div align="center">
  Fig.1 Accuracy and loss comparison graphs for three Siamese models (RNN-Siamese, CNN-Siamese and Transformer-Siamese) with myParaphrase corpus (version 1.0)  
</div> 

<br />


## Citation

If you want to use myParaphrase corpus (version 1.0) in your research and we'd appreciate if you use the following reference:  

Myint Myint Htay, Ye Kyaw Thu, Hnin Aye Thant, Thepchai Supnithi, "Deep Siamese Neural Network Vs Random Forest for Myanmar Language Paraphrase Classification",  Journal of Intelligent Informatics and Smart Technology, Oct 2nd Issue, 2022, pp. 25-1 to 25-9.  (Submitted Feb 21, 2022; accepted July 17, 2022; published on 31 Oct 2022) [[Paper]](https://jiist.aiat.or.th/assets/uploads/1667145660263IBU7L25_Deep%20Siamese%20Neural%20Network%20Vs%20Random%20Forest%20for%20Myanmar%20Language%20Paraphrase%20Classification.pdf)  

If you want to use three Siamese models that we trained with myParaphrase (version 1.0) and please cite the following link:  

https://github.com/ye-kyaw-thu/myParaphrase  

## Reference

We did paraphrase classification experiments with "multihead-siamese-nets":  

[1] [https://github.com/tlatkowski/multihead-siamese-nets](https://github.com/tlatkowski/multihead-siamese-nets)

Some run time errors were solved based on followings:  

[2] [https://stackoverflow.com/questions/55318626/module-tensorflow-has-no-attribute-logging](https://stackoverflow.com/questions/55318626/module-tensorflow-has-no-attribute-logging)  
[3] [https://stackoverflow.com/questions/61102281/dataframe-object-has-no-attribute-as-matrix](https://stackoverflow.com/questions/61102281/dataframe-object-has-no-attribute-as-matrix)  

Read some papers:  

[4] 
```
@inproceedings{NIPS2017_3f5ee243,
 author = {Vaswani, Ashish and Shazeer, Noam and Parmar, Niki and Uszkoreit, Jakob and Jones, Llion and Gomez, Aidan N and Kaiser, \L ukasz and Polosukhin, Illia},
 booktitle = {Advances in Neural Information Processing Systems},
 editor = {I. Guyon and U. Von Luxburg and S. Bengio and H. Wallach and R. Fergus and S. Vishwanathan and R. Garnett},
 pages = {},
 publisher = {Curran Associates, Inc.},
 title = {Attention is All you Need},
 url = {https://proceedings.neurips.cc/paper/2017/file/3f5ee243547dee91fbd053c1c4a845aa-Paper.pdf},
 volume = {30},
 year = {2017}
}
```

[5] 
```
@inproceedings{ranasinghe-etal-2019-semantic,
    title = "Semantic Textual Similarity with {S}iamese Neural Networks",
    author = "Ranasinghe, Tharindu  and
      Orasan, Constantin  and
      Mitkov, Ruslan",
    booktitle = "Proceedings of the International Conference on Recent Advances in Natural Language Processing (RANLP 2019)",
    month = sep,
    year = "2019",
    address = "Varna, Bulgaria",
    publisher = "INCOMA Ltd.",
    url = "https://aclanthology.org/R19-1116",
    doi = "10.26615/978-954-452-056-4_116",
    pages = "1004--1011",
    abstract = "Calculating the Semantic Textual Similarity (STS) is an important research area in natural language processing which plays a significant role in many applications such as question answering, document summarisation, information retrieval and information extraction. This paper evaluates Siamese recurrent architectures, a special type of neural networks, which are used here to measure STS. Several variants of the architecture are compared with existing methods",
}
```

[6]
```
@inproceedings{Koch2015SiameseNN,
  title={Siamese Neural Networks for One-Shot Image Recognition},
  author={Gregory R. Koch},
  year={2015}
}
```

## To Do

- to update the myParaphrase corpus
- to study on longer Burmese sentences and paragraph level  
