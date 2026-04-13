.class public interface abstract Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 0

    invoke-interface {p0, p1, p2, p3, p5}, Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public abstract createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
.end method
