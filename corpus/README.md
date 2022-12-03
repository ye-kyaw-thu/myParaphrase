# Corpus Information

## Version 1.0

Release Date: 3 December 2022

### Folder Structure

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

### Folder Information and Data Format

tsv/ = Tab Separated Value Format  
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

```

```

```

```

```

```

```

```

```

```

```

```

```

```

```

```

```

```

```

```
