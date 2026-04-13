.class public abstract Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;
.super Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;",
        "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile content:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public final completed()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->generateContent()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->content:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->content:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method

.method public final failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_0
    invoke-interface {p0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method

.method public abstract generateContent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract streamStart(Lorg/apache/hc/core5/http/ContentType;)V
.end method

.method public final streamStart(Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/EntityDetails;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "Result callback"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/core5/http/ContentType;->parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;->streamStart(Lorg/apache/hc/core5/http/ContentType;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p2, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
