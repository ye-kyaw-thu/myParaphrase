# Three Siamese Models

I used the default configuration files of multihead-siamese-nets for training three Siamese models.  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/multihead-siamese-nets/config$ tree
.
├── main.ini
└── model
    ├── cnn.ini
    ├── multihead.ini
    └── rnn.ini

1 directory, 4 files
```

Main or common setting for three Siamese models are as follows:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/multihead-siamese-nets/config$ cat main.ini
[TRAINING]
num_epochs = 10
batch_size = 512
eval_every = 20
learning_rate = 0.001
checkpoints_to_keep = 5
save_every = 100
log_device_placement = False

[DATA]
logs_path = logs
model_dir = model_dir

[PARAMS]
embedding_size = 64
loss_function = MSE
char_embeddings = False(siamese) yekyaw.thu@gpu:~/exp/siamese/multihead-siamese-nets/config$
```

Specific hyperparameters for RNN-Siamese model:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/multihead-siamese-nets/config/model$ cat rnn.ini
[PARAMS]
hidden_size = 128
cell_type = GRU
```

Specific hyperparameters for CNN-Siamese model:  

```
bidirectional = True(siamese) yekyaw.thu@gpu:~/exp/siamese/multihead-siamese-nets/config/model$ cat cnn.ini
[PARAMS]
num_filters = 50,50,50
filter_sizes = 2,3,4
dropout_rate = 0.0
```

Specific hyperparameters for Transformer-Siamese model:  

```
(siamese) yekyaw.thu@gpu:~/exp/siamese/multihead-siamese-nets/config/model$ cat multihead.ini
[PARAMS]
num_blocks = 2
num_heads = 8
use_residual = False
dropout_rate = 0.0(siamese) yekyaw.thu@gpu:~/exp/siamese/multihead-siamese-nets/config/model$
```

## Checkpoints and Evaluation Results for RNN-Siamese Model

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

## Checkpoints and Evaluation Results for CNN-Siamese Model


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

## Checkpoints and Evaluation Results for Transformer-Siamese Model


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
