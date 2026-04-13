.class public interface abstract Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public connectSocket(Ljava/net/Socket;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 0

    move-object p6, p4

    move-object p4, p2

    move-object p2, p5

    move-object p5, p3

    move-object p3, p1

    move-object p1, p0

    invoke-interface/range {p1 .. p7}, Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;->connectSocket(Lorg/apache/hc/core5/util/TimeValue;Ljava/net/Socket;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p2

    return-object p2
.end method

.method public abstract connectSocket(Lorg/apache/hc/core5/util/TimeValue;Ljava/net/Socket;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
.end method

.method public abstract createSocket(Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
.end method
