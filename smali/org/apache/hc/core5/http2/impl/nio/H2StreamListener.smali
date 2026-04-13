.class public interface abstract Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract onFrameInput(Lorg/apache/hc/core5/http/HttpConnection;ILorg/apache/hc/core5/http2/frame/RawFrame;)V
.end method

.method public abstract onFrameOutput(Lorg/apache/hc/core5/http/HttpConnection;ILorg/apache/hc/core5/http2/frame/RawFrame;)V
.end method

.method public abstract onHeaderInput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpConnection;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onHeaderOutput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpConnection;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V
.end method

.method public abstract onOutputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V
.end method
