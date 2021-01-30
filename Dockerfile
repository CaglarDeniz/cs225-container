FROM ubuntu:latest

RUN DEBIAN_FRONTEND="noninteractive" apt-get update -y && \ 
	DEBIAN_FRONTEND="noninteractive" apt-get upgrade -y &&  \ 
	DEBIAN_FRONTEND="noninteractive" apt-get install -y clang-6.0 libc++abi-dev libc++-dev git gdb valgrind \ 
	graphviz imagemagick gnuplot make tmux  libc++-10-dev neovim vim nano emacs clang-10 libclang-common-10-dev libclang-cpp10 libclang1-10 libllvm10 \ 
  libpfm4 libz3-4 libz3-dev llvm-10 llvm-10-dev llvm-10-runtime llvm-10-tools \ 
  python3-pygments python3-yaml 

#RUN apt-get install -y clang 

RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-6.0 100 && \
	update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-6.0 100 && \ 
	update-alternatives --install /usr/bin/llvm-symbolizer llvm-symbolizer /usr/bin/llvm-symbolizer-6.0 100 

RUN echo alias nv=nvim >> ~/.bashrc

#RUN adduser cs_student 

#USER cs_student

VOLUME /cs225 

COPY ./cs225/ /cs225 

WORKDIR /cs225

CMD DEBIAN_FRONTEND="noninteractive" apt-get install -y clang && bash



