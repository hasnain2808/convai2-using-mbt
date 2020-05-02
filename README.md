# convai2-using-mbt
This system uses personality predicted by MBT using xgboost instead of personality from persona chat dataset for giving a personality to the bot<br>
the objective can be achieved by dividing the system into four parts -
<br> 1) The input processor, <br>2) The personality detection subsystem,
<br>3) The response generation, 
<br>4) The output generator
Each input from the user would be first go through basic preprocessing such as tokenization and converted to embeddings in the input processor. <br>
The input processor would store the input to list of utterances. 
<br>If the user sends the input as speech signals, the speech would be converted into text and the other steps remain the same
The personality detection subsystem would consist of a text classifier. The text classifier would classify the text into various personalities using the Mayer's Briggs <br>
The tokenized input from the input processor would be fed to a Machine Learning model.
The response generation: This would use the personality detected by the personality detector and prepend it to the list of utterances. <br>
This list of utterances would be fed to a Deep Learning based response generation model, that generates a stream of token to be processed by the output generator.
The output processor converts the tokens to English words. These words are displayed in the chat window

## Installation

To install and use the training and inference scripts please clone the repo and install the requirements:

```bash
git clone https://github.com/huggingface/transfer-learning-conv-ai
cd transfer-learning-conv-ai
pip install -r requirements.txt
python -m spacy download en
```



## Installation with Docker

To install using docker please build the self-contained image:

```bash
$ docker build -t convai_pytorch .
```

You can then enter the image  

```
$ docker run --rm -it convai_pytorch bash
```

You can then run the `interact.py` script on the pretrained model:

```bash
$ python interact_api.py --model_checkpoint ./runs/Apr05_01-29-21_ip-172-31-67-62_openai-gpt/
```

Now open a new terminal get the id of the running docker cotainer and reenter<br>
Then run the gui file
```bash
$ docker ps
$ docker exec -it  <your id>
$ cd UI &&  python main.py 


```
