FROM --platform=linux/arm64 amazonlinux:2.0.20221103.3

RUN rpm -U https://yum.puppet.com/puppet/el/7/aarch64/puppet-agent-7.20.0-1.el7.aarch64.rpm

