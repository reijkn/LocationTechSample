FROM node:16.18.0

# OS環境（rockerはdebianベース）に日本語ロケールを追加し切り替えます
#ENV LANG ja_JP.UTF-8
#ENV LC_ALL ja_JP.UTF-8
#RUN sed -i '$d' /etc/locale.gen \
#  && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
#    && locale-gen ja_JP.UTF-8 \
#    && /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
#RUN /bin/bash -c "source /etc/default/locale"
#RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# 日本語フォントをインストールします
#RUN apt-get update && apt-get install -y \
#  fonts-ipaexfont \
#  fonts-noto-cjk

# Rのパッケージを入れる
#RUN R -e "install.packages('GISTools')"
#RUN R -e "install.packages('rstan', repos = 'https://cloud.r-project.org/', dependencies = TRUE)"