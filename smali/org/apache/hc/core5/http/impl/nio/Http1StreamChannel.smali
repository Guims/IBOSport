.class interface abstract Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ContentEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutgoingMessage::",
        "Lorg/apache/hc/core5/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/ContentEncoder;"
    }
.end annotation


# virtual methods
.method public abstract abortGracefully()Z
.end method

.method public abstract activate()V
.end method

.method public abstract close()V
.end method

.method public abstract getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
.end method

.method public abstract requestOutput()V
.end method

.method public abstract setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
.end method

.method public abstract submit(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutgoingMessage;Z",
            "Lorg/apache/hc/core5/http/impl/nio/FlushMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract suspendOutput()V
.end method
