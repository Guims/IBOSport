.class public abstract Lorg/apache/hc/client5/http/async/methods/AbstractBinResponseConsumer;
.super Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/hc/core5/http/nio/entity/AbstractBinDataConsumer;",
        "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
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
.method public abstract buildResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final completed()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/AbstractBinResponseConsumer;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/async/methods/AbstractBinResponseConsumer;->buildResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    return-void
.end method

.method public final consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            "Lorg/apache/hc/core5/http/EntityDetails;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p4, p0, Lorg/apache/hc/client5/http/async/methods/AbstractBinResponseConsumer;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/hc/core5/http/ContentType;->parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/AbstractBinResponseConsumer;->start(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/ContentType;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/AbstractBinResponseConsumer;->start(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/ContentType;)V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/async/methods/AbstractBinResponseConsumer;->completed()V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public informationResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    return-void
.end method

.method public abstract start(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/ContentType;)V
.end method
