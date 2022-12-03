# Three Siamese Models

## RNN-Siamese Model

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-RNN-MYPARA$ cat checkpoint
model_checkpoint_path: "model-700"
all_model_checkpoint_paths: "model-500"
all_model_checkpoint_paths: "model-560"
all_model_checkpoint_paths: "model-600"
all_model_checkpoint_paths: "model-630"
all_model_checkpoint_paths: "model-700"
```

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-RNN-MYPARA$ cat evaluation.ini
[EVALUATION]
mean_dev_acc = 0.8445000007748604
last_dev_acc = 0.8674999922513962
test_acc = 0.8515000000596047
epoch_time = 00:00:11.38
num_trains = 36009
num_devs = 405
num_tests = 4045

(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-RNN-MYPARA$
```

## CNN-Siamese Model


```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-CNN-MYPARA$ cat checkpoint
model_checkpoint_path: "model-700"
all_model_checkpoint_paths: "model-500"
all_model_checkpoint_paths: "model-560"
all_model_checkpoint_paths: "model-600"
all_model_checkpoint_paths: "model-630"
all_model_checkpoint_paths: "model-700"
```

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-CNN-MYPARA$ cat evaluation.ini
[EVALUATION]
mean_dev_acc = 0.8812499925494194
last_dev_acc = 0.8924999833106995
test_acc = 0.8817500010132789
epoch_time = 00:00:02.53
num_trains = 36009
num_devs = 405
num_tests = 4045

(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-CNN-MYPARA$
```

## Transformer-Siamese Model


```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-Transformer-MYPARA$ cat checkpoint
model_checkpoint_path: "model-700"
all_model_checkpoint_paths: "model-500"
all_model_checkpoint_paths: "model-560"
all_model_checkpoint_paths: "model-600"
all_model_checkpoint_paths: "model-630"
all_model_checkpoint_paths: "model-700"
```

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-Transformer-MYPARA$ cat evaluation.ini
[EVALUATION]
mean_dev_acc = 0.8172500014305115
last_dev_acc = 0.8224999904632568
test_acc = 0.8117499962449074
epoch_time = 00:00:08.71
num_trains = 36009
num_devs = 405
num_tests = 4045

(siamese) yekyaw.thu@gpu:~/exp/siamese/myParaphrase/model/ver1.0/exp-Transformer-MYPARA$
```
