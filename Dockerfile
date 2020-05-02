<<<<<<< HEAD
=======
FROM pytorch/pytorch

########################################  BASE SYSTEM
# set noninteractive installation
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apt-utils
RUN apt-get install -y --no-install-recommends \
    build-essential \
    pkg-config \
    tzdata \
    curl

######################################## PYTHON3
# RUN apt-get install -y \
#     python3 \
#     python3-pip
# RUN pip3 install torch
# set local timezone
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

# transfer-learning-conv-ai
# ENV PYTHONPATH /usr/local/lib/python3.6 

RUN pip freeze
# RUN pip install torch
RUN pip install pytorch-ignite 
RUN pip install transformers==2.5.1
RUN pip install tensorboardX==1.8
RUN pip install tensorflow  
RUN pip install nltk
RUN pip install seaborn
RUN pip install matplotlib
RUN pip install flask
RUN pip install scikit-learn
RUN pip install xgboost

RUN curl https://personabaseddeprdete.s3.ap-south-1.amazonaws.com/mbt_model.zip > mod.zip 

RUN apt-get install -y unzip
RUN unzip mod.zip
RUN curl https://personabaseddeprdete.s3.ap-south-1.amazonaws.com/dataset_cache_OpenAIGPTTokenizer_for_mbt > dataset_cache_OpenAIGPTTokenizer 

COPY . ./
# COPY requirements.txt /tmp/requirements.txt
# RUN pip3 install -r /tmp/requirements.txt  
# --default-timeout=1000 

# model zoo
# RUN mkdir models && \
#     curl https://s3.amazonaws.com/models.huggingface.co/transfer-learning-chatbot/finetuned_chatbot_gpt.tar.gz > models/finetuned_chatbot_gpt.tar.gz && \
#     cd models/ && \
#     tar -xvzf finetuned_chatbot_gpt.tar.gz && \
#     rm finetuned_chatbot_gpt.tar.gz
    


RUN curl https://personabaseddeprdete.s3.ap-south-1.amazonaws.com/mbti_df.csv > mbt/mbti_df.csv 




RUN pip install pytorch_transformers

CMD ["bash"]


>>>>>>> 58961d3a1e5721c49920e9422dd8bbe1d0b38bb2
