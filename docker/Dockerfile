FROM fedora:27
# build and runas
## docker run -it --rm ochaloup/vim-syntax-match

RUN yum install -y vim git

# installing the vim-syntax match
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle 
RUN curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 
RUN git clone https://github.com/ochaloup/vim-syntax-match.git ~/.vim/bundle/vim-syntax-match
RUN echo "execute pathogen#infect()" > ~/.vimrc
RUN echo "syntax on" >> ~/.vimrc
RUN printf "if (&t_Co != 256)\n  set t_Co=256\nendif\n" >> ~/.vimrc

# for testing
RUN printf "A\nA\nB\nC\nA" > vim-test.log

ENTRYPOINT bash
