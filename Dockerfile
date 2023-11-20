FROM rust:1.67

RUN groupadd -r myapp && useradd -r -g myapp -m -d /usr/src/myapp 

WORKDIR /usr/src/myapp

COPY . .

RUN chown -R arnaud:arnaud /usr/src/myapp

RUN  cargo build --release

CMD ["/usr/src/myapp/target/release/wik_dps_tp01"] 

