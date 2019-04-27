from tensorflow/tensorflow:1.7.0-devel-py3
run apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install cmake
run pip3 install nltk gensim numpy
run apt-get -y install python3-dev git
run apt-get -y install build-essential checkinstall cmake pkg-config yasm
run git clone https://github.com/opencv/opencv.git && \
  cd opencv && \
  mkdir build && \
  cd build && \
  cmake ../ && \
  make && \
  make install
run pip3 install pillow
copy facenet /root/facenet
copy run.sh /root/run.sh
copy load.py /root/load.py
copy model /root/model
entrypoint /root/run.sh
