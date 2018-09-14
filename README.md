# cloud-1
Introduction to cloud infrastructure

Subject
You have to install a simple wordpress website on a cloud infrastructure. Here are the
rules :

• Your website must be running at all times on at least 2 servers, if possible located
in different server farms.

• Some sort of mecanism will randomly and evenly redirect visitors to any of your
servers

• Traffic pikes will trigger the launch of other servers with perfectly synced data
(and the other way around if the traffic fades)

• Logged in users will stay identified for the length of a normal session, no matter
what

• Static content should be distributed as best as you can (CDN)

• New content on the site should be available across all instances immediately (or
at least within a few seconds)

• Any failure should be handled so that your website is always available

• Hosting cost should reflect your actual usage

• The public should not even be able to reach anything they have no reason to reach.

If all works perfectly, certain things can be quite hidden, so find a way to prove that
everything works as expected. You should make visible everything that can be shown, in
order to help streamline the correction.



AWS - TERRAFORM
- terraform init

Build infrastructure (Makefile)
- build infrastructure:
    AKEY='aws_access_key' && SKEY='aws_secret_key' && make terrup
- rm infrastructure:
    AKEY='aws_access_key' && SKEY='aws_secret_key' && make terrdown
- build docker-compose:
    make
- rm docker-copmose:
    make clean
- stop one service:
    docker-compose <service> stop
- start one service:
    docker-compose <service> start