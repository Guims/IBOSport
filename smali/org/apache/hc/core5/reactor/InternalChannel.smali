.class abstract Lorg/apache/hc/core5/reactor/InternalChannel;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkTimeout(J)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/InternalChannel;->getTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Timeout;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/InternalChannel;->getLastEventTime()J

    move-result-wide v3

    add-long/2addr v3, v1

    cmp-long p1, p1, v3

    if-lez p1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/InternalChannel;->onTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/InternalChannel;->onException(Ljava/lang/Exception;)V

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :catch_1
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract getLastEventTime()J
.end method

.method public abstract getTimeout()Lorg/apache/hc/core5/util/Timeout;
.end method

.method public final handleIOEvent(I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/InternalChannel;->onIOEvent(I)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/InternalChannel;->onException(Ljava/lang/Exception;)V

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :catch_1
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :goto_0
    return-void
.end method

.method public abstract onException(Ljava/lang/Exception;)V
.end method

.method public abstract onIOEvent(I)V
.end method

.method public abstract onTimeout(Lorg/apache/hc/core5/util/Timeout;)V
.end method
