# Corpus Information

## Version 1.0

Release Date: 3 December 2022

### Folder Structure

We prepared tsv, csv and csv-qqp formats for doing some experiments.  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0$ tree
.
├── 4multihead-siamese
│   ├── closed-test-qqp.csv
│   ├── test.csv
│   └── train.csv
├── csv
│   ├── closed-test.csv
│   ├── open-test.final.manual.csv
│   └── train.csv
├── csv-qqp
│   ├── closed-test.csv
│   ├── closed-test-qqp.csv
│   ├── open-test.final.manual.csv
│   ├── open-test.final.manual-qqp.csv
│   ├── train.csv
│   └── train-qqp.csv
├── script
│   ├── qqp-test-format.pl
│   ├── qqp-train-format.pl
│   ├── rm-200b-200d.sh
│   ├── tsv2csv4train.sh
│   └── tsv2csv.sh
└── tsv
    ├── closed-test
    ├── open-test.final.manual
    └── train.txt

5 directories, 20 files
```

### Filesize Information

Generally filesize are the same and just different header line contain or not.  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/tsv$ wc *
   1000   16905  202235 closed-test
   1000   12674  138579 open-test.final.manual
  40461  672370 8350480 train.txt
  42461  701949 8691294 total
```

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/csv$ wc *
   1000   14906  206125 closed-test.csv
   1000   10706  142470 open-test.final.manual.csv
  40461  591452 8580488 train.csv
  42461  617064 8929083 total
```

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/4multihead-siamese$ wc *
   1001   14907  208159 closed-test-qqp.csv
   1001   10699  144365 test.csv
  40462  591453 9529402 train.csv
  42464  617059 9881926 total
```

### Folder Information and Data Format

#### tsv/ = Tab Separated Value Format  
There are three files and they are training data file (train.txt), closed-test data file (closed-test) and open-test data file (open-test.final.manual). 

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/tsv$ head train.txt
ကျွန်တော် စီး ဖို့ ချစ်စရာ ဖိနပ် တစ် ရံ ကို ရှာ မတွေ့လို့ပါ ။   တစ်ခါတစ်ခါ ကျွန်တော်က ခင်ဗျား ကို အရမ်း အပြောင်းအလဲများတဲ့လူ လို့ ထင်မိတယ် ။  0
​ ကျေးဇူး ပဲ ၊ ကျွန်တော် ဘယ်လောက် ပေး ရ မလဲ ။   ကျေးဇူး နော် ၊ ဘယ်တော့ ပြန် တွေ့ ကြ မလဲ ။       0
​ ကျေးဇူး အများကြီး တင် ပါ တယ် ။        ကျေးဇူးတင် တယ် လို့ မ ပြော သွား ဘူး ။   0
​ ကျောင်းအုပ်ကြီး က တော် တဲ့ ကျောင်းသား တွေ ကို ချီးကျူး ကြ တယ် ။       ကျောင်းအုပ်ကြီး က ဆိုး တဲ့ ကျောင်းသား တွေ ကို ဒဏ်ပေး ကြ တယ် ။ 0
​ ကောင်း ပြီ ကျွန်တော် လုပ် ပါ့ မယ် ။   ကောင်း ပြီ ကျွန်တော် ဒီ အလုပ် ကို လက်မခံ တော့ ဘူး ။     0
​ ကောင်း သော ည ပါ ။     ကောင်း သော နေ့ ပါ ။     0
ကောင်လေး က လူကြီး ကို ရှင်းရှင်းလင်းလင်း မြင် နေ တယ် ။  သာယာတဲ့ နေ့ကလေး ပါပဲ ။  0
ခဏအကြာမှာ ကျွန်တော် ခင်ဗျား ကို ပြန်ဆက် ပါရစေ ။ ခဏ ကြာတော့ သူမ တည်ငြိမ် စပြုလာ ပြီး သူ ပြောတာကို နားထောင် နေတော့တယ် ။   0
ခေါင်မိုး ပေါ်မှာ ကြောင် တစ်ကောင် ရှိ တယ် ။     အတန်း လွတ်သွားမှာ စိုးတယ် ။     0
ငါ ခိုင်းတာ မင်း လုပ် ခဲ့လား ။  ဒါက အသစ် တပ်ဆင်မှာ ဖြစ် တယ် ။   0
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/tsv$ head -n 3 train.txt
ကျွန်တော် စီး ဖို့ ချစ်စရာ ဖိနပ် တစ် ရံ ကို ရှာ မတွေ့လို့ပါ ။   တစ်ခါတစ်ခါ ကျွန်တော်က ခင်ဗျား ကို အရမ်း အပြောင်းအလဲများတဲ့လူ လို့ ထင်မိတယ် ။  0
​ ကျေးဇူး ပဲ ၊ ကျွန်တော် ဘယ်လောက် ပေး ရ မလဲ ။   ကျေးဇူး နော် ၊ ဘယ်တော့ ပြန် တွေ့ ကြ မလဲ ။       0
​ ကျေးဇူး အများကြီး တင် ပါ တယ် ။        ကျေးဇူးတင် တယ် လို့ မ ပြော သွား ဘူး ။   0
```

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/tsv$ head open-test.final.manual
0       ၁၁ ဒေါ်လာ ကျ ပါ တယ် ။   ၁၁ နာရီ လာ ခေါ် မယ် ။
0       ၁၁ နာရီ ခွဲ အိမ် ပြန် မယ် ။     ၁၁ နာရီ ခွဲ အရောက် လာ ပါ ။
0       ၁၁:၃၀ ပြန်ရောက် မယ် လို့ ထင် သလား ။     ၁၁:၃၀ အတိ မှာ ပြန်ရောက် လာ ခဲ့ တယ် ။
0       ၂ မိုင် ထက် ပို ရှည် တယ် ။      ၂ မိုင် လောက် သွား ရ တယ် ။
0       ၄ ရက် အတွင်း အိမ် ပြန် မယ် ။    ၄ ရက် လောက် နေ ရင် ပြန် လာ ပါ ။
0       ၅ ဒေါ်လာ ထက် ပို ပါ တယ် ။       ၅ ဒေါ်လာ လောက် ကျ သင့် တယ် ။
0       ၅ ဒေါ်လာ ထက် နဲ ပါ တယ် ။        ၅ ဒေါ်လာ ဆို နဲ ပါ တယ် ။
0       ၅ ဒေါ်လာ ပဲ ရှိ တယ် ။   ၅ ဒေါ်လာ လောက် ရှိ လား ။
0       ၅ လမ်းက စားသောက်ဆိုင် မှာ စား ချင် တယ် ။        ၅ လမ်း မှာ စားသောက်ဆိုင် ရှိ လား ။
0       ကျေးဇူးပြုပြီး မီနူးရ နိုင် မလား ။      ကျေးဇူးပြုပြီး မီနူး ထဲ က အတိုင်း ရ နိုင် မလား ။
```

#### csv/ = Comma Separated Value Format  

The csv file format is as follows:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/csv$ head train.csv
0,ကျွန်တော် စီး ဖို့ ချစ်စရာ ဖိနပ် တစ် ရံ ကို ရှာ မတွေ့လို့ပါ ။,တစ်ခါတစ်ခါ ကျွန်တော်က ခင်ဗျား ကို အရမ်း အပြောင်းအလဲများတဲ့လူ လို့ ထင်မိတယ် ။,0
1,ကျေးဇူး ပဲ ၊ ကျွန်တော် ဘယ်လောက် ပေး ရ မလဲ ။,ကျေးဇူး နော် ၊ ဘယ်တော့ ပြန် တွေ့ ကြ မလဲ ။,0
2,ကျေးဇူး အများကြီး တင် ပါ တယ် ။,ကျေးဇူးတင် တယ် လို့ မ ပြော သွား ဘူး ။,0
3,ကျောင်းအုပ်ကြီး က တော် တဲ့ ကျောင်းသား တွေ ကို ချီးကျူး ကြ တယ် ။,ကျောင်းအုပ်ကြီး က ဆိုး တဲ့ ကျောင်းသား တွေ ကို ဒဏ်ပေး ကြ တယ် ။,0
4,ကောင်း ပြီ ကျွန်တော် လုပ် ပါ့ မယ် ။,ကောင်း ပြီ ကျွန်တော် ဒီ အလုပ် ကို လက်မခံ တော့ ဘူး ။,0
5,ကောင်း သော ည ပါ ။,ကောင်း သော နေ့ ပါ ။,0
6,ကောင်လေး က လူကြီး ကို ရှင်းရှင်းလင်းလင်း မြင် နေ တယ် ။,သာယာတဲ့ နေ့ကလေး ပါပဲ ။,0
7,ခဏအကြာမှာ ကျွန်တော် ခင်ဗျား ကို ပြန်ဆက် ပါရစေ ။,ခဏ ကြာတော့ သူမ တည်ငြိမ် စပြုလာ ပြီး သူ ပြောတာကို နားထောင် နေတော့တယ် ။,0
8,ခေါင်မိုး ပေါ်မှာ ကြောင် တစ်ကောင် ရှိ တယ် ။,အတန်း လွတ်သွားမှာ စိုးတယ် ။,0
9,ငါ ခိုင်းတာ မင်း လုပ် ခဲ့လား ။,ဒါက အသစ် တပ်ဆင်မှာ ဖြစ် တယ် ။,0
```

The format for the open-test data:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/csv$ head open-test.final.manual.csv
0,၁၁ ဒေါ်လာ ကျ ပါ တယ် ။,၁၁ နာရီ လာ ခေါ် မယ် ။,0
1,၁၁ နာရီ ခွဲ အိမ် ပြန် မယ် ။,၁၁ နာရီ ခွဲ အရောက် လာ ပါ ။,0
2,၁၁:၃၀ ပြန်ရောက် မယ် လို့ ထင် သလား ။,၁၁:၃၀ အတိ မှာ ပြန်ရောက် လာ ခဲ့ တယ် ။,0
3,၂ မိုင် ထက် ပို ရှည် တယ် ။,၂ မိုင် လောက် သွား ရ တယ် ။,0
4,၄ ရက် အတွင်း အိမ် ပြန် မယ် ။,၄ ရက် လောက် နေ ရင် ပြန် လာ ပါ ။,0
5,၅ ဒေါ်လာ ထက် ပို ပါ တယ် ။,၅ ဒေါ်လာ လောက် ကျ သင့် တယ် ။,0
6,၅ ဒေါ်လာ ထက် နဲ ပါ တယ် ။,၅ ဒေါ်လာ ဆို နဲ ပါ တယ် ။,0
7,၅ ဒေါ်လာ ပဲ ရှိ တယ် ။,၅ ဒေါ်လာ လောက် ရှိ လား ။,0
8,၅ လမ်းက စားသောက်ဆိုင် မှာ စား ချင် တယ် ။,၅ လမ်း မှာ စားသောက်ဆိုင် ရှိ လား ။,0
9,ကျေးဇူးပြုပြီး မီနူးရ နိုင် မလား ။,ကျေးဇူးပြုပြီး မီနူး ထဲ က အတိုင်း ရ နိုင် မလား ။,0
```

#### csv-qqp/ = csv to qqp format conversion preprocessing was done under this folder  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/csv-qqp$ ls
closed-test.csv  closed-test-qqp.csv  open-test.final.manual.csv  open-test.final.manual-qqp.csv  train.csv  train-qqp.csv
```

For the conversion process I used the following two perl scripts:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/script$ ls *.pl
qqp-test-format.pl  qqp-train-format.pl
```

Training and test data format of QQP is not the same and thus I wrote above two perl scripts and the converted files are as follows:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/csv-qqp$ ls *qqp.csv
closed-test-qqp.csv  open-test.final.manual-qqp.csv  train-qqp.csv
```

QQP format for myParaphrase (version 1.0) are as follows:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/csv-qqp$ head train-qqp.csv
"id","pid1","pid2","paraphrase1","paraphrase2","is_paraphrase",
"0","1","2","ကျွန်တော် စီး ဖို့ ချစ်စရာ ဖိနပ် တစ် ရံ ကို ရှာ မတွေ့လို့ပါ ။","တစ်ခါတစ်ခါ ကျွန်တော်က ခင်ဗျား ကို အရမ်း အပြောင်းအလဲများတဲ့လူ လို့ ထင်မိတယ် ။","0"
"1","2","3","ကျေးဇူး ပဲ ၊ ကျွန်တော် ဘယ်လောက် ပေး ရ မလဲ ။","ကျေးဇူး နော် ၊ ဘယ်တော့ ပြန် တွေ့ ကြ မလဲ ။","0"
"2","3","4","ကျေးဇူး အများကြီး တင် ပါ တယ် ။","ကျေးဇူးတင် တယ် လို့ မ ပြော သွား ဘူး ။","0"
"3","4","5","ကျောင်းအုပ်ကြီး က တော် တဲ့ ကျောင်းသား တွေ ကို ချီးကျူး ကြ တယ် ။","ကျောင်းအုပ်ကြီး က ဆိုး တဲ့ ကျောင်းသား တွေ ကို ဒဏ်ပေး ကြ တယ် ။","0"
"4","5","6","ကောင်း ပြီ ကျွန်တော် လုပ် ပါ့ မယ် ။","ကောင်း ပြီ ကျွန်တော် ဒီ အလုပ် ကို လက်မခံ တော့ ဘူး ။","0"
"5","6","7","ကောင်း သော ည ပါ ။","ကောင်း သော နေ့ ပါ ။","0"
"6","7","8","ကောင်လေး က လူကြီး ကို ရှင်းရှင်းလင်းလင်း မြင် နေ တယ် ။","သာယာတဲ့ နေ့ကလေး ပါပဲ ။","0"
"7","8","9","ခဏအကြာမှာ ကျွန်တော် ခင်ဗျား ကို ပြန်ဆက် ပါရစေ ။","ခဏ ကြာတော့ သူမ တည်ငြိမ် စပြုလာ ပြီး သူ ပြောတာကို နားထောင် နေတော့တယ် ။","0"
"8","9","10","ခေါင်မိုး ပေါ်မှာ ကြောင် တစ်ကောင် ရှိ တယ် ။","အတန်း လွတ်သွားမှာ စိုးတယ် ။","0"
```

for open-test data ...  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/csv-qqp$ head open-test.final.manual-qqp.csv
"test_id","paraphrase1","paraphrase2"
0,"၁၁ ဒေါ်လာ ကျ ပါ တယ် ။","၁၁ နာရီ လာ ခေါ် မယ် ။"
1,"၁၁ နာရီ ခွဲ အိမ် ပြန် မယ် ။","၁၁ နာရီ ခွဲ အရောက် လာ ပါ ။"
2,"၁၁:၃၀ ပြန်ရောက် မယ် လို့ ထင် သလား ။","၁၁:၃၀ အတိ မှာ ပြန်ရောက် လာ ခဲ့ တယ် ။"
3,"၂ မိုင် ထက် ပို ရှည် တယ် ။","၂ မိုင် လောက် သွား ရ တယ် ။"
4,"၄ ရက် အတွင်း အိမ် ပြန် မယ် ။","၄ ရက် လောက် နေ ရင် ပြန် လာ ပါ ။"
5,"၅ ဒေါ်လာ ထက် ပို ပါ တယ် ။","၅ ဒေါ်လာ လောက် ကျ သင့် တယ် ။"
6,"၅ ဒေါ်လာ ထက် နဲ ပါ တယ် ။","၅ ဒေါ်လာ ဆို နဲ ပါ တယ် ။"
7,"၅ ဒေါ်လာ ပဲ ရှိ တယ် ။","၅ ဒေါ်လာ လောက် ရှိ လား ။"
8,"၅ လမ်းက စားသောက်ဆိုင် မှာ စား ချင် တယ် ။","၅ လမ်း မှာ စားသောက်ဆိုင် ရှိ လား ။"
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/csv-qqp$
```

#### 4multihead-siamese/ = Training and test data for running with multihead-siamese GitHub repository

Note: If I changed the csv file header and run with multihead-siamese codes, I got an error and thus, I used the QQP header.  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/4multihead-siamese$ head train.csv
"id","qid1","qid2","question1","question2","is_duplicate"
"0","1","2","ကျွန်တော် စီး ဖို့ ချစ်စရာ ဖိနပ် တစ် ရံ ကို ရှာ မတွေ့လို့ပါ ။","တစ်ခါတစ်ခါ ကျွန်တော်က ခင်ဗျား ကို အရမ်း အပြောင်းအလဲများတဲ့လူ လို့ ထင်မိတယ် ။","0"
"1","2","3","ကျေးဇူး ပဲ ၊ ကျွန်တော် ဘယ်လောက် ပေး ရ မလဲ ။","ကျေးဇူး နော် ၊ ဘယ်တော့ ပြန် တွေ့ ကြ မလဲ ။","0"
"2","3","4","ကျေးဇူး အများကြီး တင် ပါ တယ် ။","ကျေးဇူးတင် တယ် လို့ မ ပြော သွား ဘူး ။","0"
"3","4","5","ကျောင်းအုပ်ကြီး က တော် တဲ့ ကျောင်းသား တွေ ကို ချီးကျူး ကြ တယ် ။","ကျောင်းအုပ်ကြီး က ဆိုး တဲ့ ကျောင်းသား တွေ ကို ဒဏ်ပေး ကြ တယ် ။","0"
"4","5","6","ကောင်း ပြီ ကျွန်တော် လုပ် ပါ့ မယ် ။","ကောင်း ပြီ ကျွန်တော် ဒီ အလုပ် ကို လက်မခံ တော့ ဘူး ။","0"
"5","6","7","ကောင်း သော ည ပါ ။","ကောင်း သော နေ့ ပါ ။","0"
"6","7","8","ကောင်လေး က လူကြီး ကို ရှင်းရှင်းလင်းလင်း မြင် နေ တယ် ။","သာယာတဲ့ နေ့ကလေး ပါပဲ ။","0"
"7","8","9","ခဏအကြာမှာ ကျွန်တော် ခင်ဗျား ကို ပြန်ဆက် ပါရစေ ။","ခဏ ကြာတော့ သူမ တည်ငြိမ် စပြုလာ ပြီး သူ ပြောတာကို နားထောင် နေတော့တယ် ။","0"
"8","9","10","ခေါင်မိုး ပေါ်မှာ ကြောင် တစ်ကောင် ရှိ တယ် ။","အတန်း လွတ်သွားမှာ စိုးတယ် ။","0"
```

The open-test data format for running with multihead-siamese codes is as follows:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/4multihead-siamese$ head test.csv
"test_id","question1","question2"
0,"၁၁ ဒေါ်လာ ကျ ပါ တယ် ။","၁၁ နာရီ လာ ခေါ် မယ် ။"
1,"၁၁ နာရီ ခွဲ အိမ် ပြန် မယ် ။","၁၁ နာရီ ခွဲ အရောက် လာ ပါ ။"
2,"၁၁:၃၀ ပြန်ရောက် မယ် လို့ ထင် သလား ။","၁၁:၃၀ အတိ မှာ ပြန်ရောက် လာ ခဲ့ တယ် ။"
3,"၂ မိုင် ထက် ပို ရှည် တယ် ။","၂ မိုင် လောက် သွား ရ တယ် ။"
4,"၄ ရက် အတွင်း အိမ် ပြန် မယ် ။","၄ ရက် လောက် နေ ရင် ပြန် လာ ပါ ။"
5,"၅ ဒေါ်လာ ထက် ပို ပါ တယ် ။","၅ ဒေါ်လာ လောက် ကျ သင့် တယ် ။"
6,"၅ ဒေါ်လာ ထက် နဲ ပါ တယ် ။","၅ ဒေါ်လာ ဆို နဲ ပါ တယ် ။"
7,"၅ ဒေါ်လာ ပဲ ရှိ တယ် ။","၅ ဒေါ်လာ လောက် ရှိ လား ။"
8,"၅ လမ်းက စားသောက်ဆိုင် မှာ စား ချင် တယ် ။","၅ လမ်း မှာ စားသောက်ဆိုင် ရှိ လား ။"
```

#### script/ = shell and perl scripts that I used for the preprocessing

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/corpus/ver1.0/script$ ls
qqp-test-format.pl  qqp-train-format.pl  rm-200b-200d.sh  tsv2csv4train.sh  tsv2csv.sh
```

