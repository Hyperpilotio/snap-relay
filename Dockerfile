FROM alpine

EXPOSE 8182
EXPOSE 5801
EXPOSE 6123

COPY build/linux/x86_64/snap-relay /usr/local/bin/

ENTRYPOINT ["snap-relay", "--stand-alone", "--stand-alone-port", "8182"]

CMD ["--addr", "relay"]
